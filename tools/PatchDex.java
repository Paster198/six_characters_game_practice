import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcode;
import com.android.tools.smali.dexlib2.builder.BuilderInstruction;
import com.android.tools.smali.dexlib2.builder.MutableMethodImplementation;
import com.android.tools.smali.dexlib2.builder.instruction.BuilderInstruction35c;
import com.android.tools.smali.dexlib2.iface.ClassDef;
import com.android.tools.smali.dexlib2.iface.DexFile;
import com.android.tools.smali.dexlib2.iface.Method;
import com.android.tools.smali.dexlib2.iface.instruction.ReferenceInstruction;
import com.android.tools.smali.dexlib2.iface.instruction.formats.Instruction35c;
import com.android.tools.smali.dexlib2.iface.reference.MethodReference;
import com.android.tools.smali.dexlib2.iface.reference.Reference;
import com.android.tools.smali.dexlib2.immutable.ImmutableClassDef;
import com.android.tools.smali.dexlib2.immutable.ImmutableDexFile;
import com.android.tools.smali.dexlib2.immutable.ImmutableMethod;
import com.android.tools.smali.dexlib2.immutable.reference.ImmutableMethodReference;
import com.android.tools.smali.dexlib2.writer.pool.DexPool;

/** Minimal, repeatable call-site patch. Original dex is never written in place. */
public final class PatchDex {
    private static final String ACTIVITY = "Llow/moe/AppActivity;";
    private static final String COCOS_ACTIVITY = "Lorg/cocos2dx/lib/Cocos2dxActivity;";
    private static final String RENDERER = "Lorg/cocos2dx/lib/Cocos2dxRenderer;";
    private static String bridge = "Llow/moe/practice/Practice;";
    private static int installed, frames, destroyed;

    public static void main(String[] args) throws Exception {
        if (args.length < 2 || args.length > 3) {
            throw new IllegalArgumentException("Usage: PatchDex input.dex output.dex [Lpackage/Practice;]");
        }
        File input = new File(args[0]).getCanonicalFile();
        File output = new File(args[1]).getCanonicalFile();
        if (input.equals(output)) throw new IllegalArgumentException("Input and output must differ");
        if (args.length == 3) bridge = args[2];
        if (!bridge.startsWith("L") || !bridge.endsWith(";")) {
            throw new IllegalArgumentException("Bridge must be a dex class descriptor");
        }
        DexFile original = DexFileFactory.loadDexFile(input, null);
        List<ClassDef> classes = new ArrayList<>();
        for (ClassDef cls : original.getClasses()) {
            if (!cls.getType().equals(ACTIVITY) && !cls.getType().equals(RENDERER)) {
                classes.add(cls);
                continue;
            }
            List<Method> methods = new ArrayList<>();
            for (Method method : cls.getMethods()) methods.add(patchMethod(method));
            classes.add(new ImmutableClassDef(cls.getType(), cls.getAccessFlags(), cls.getSuperclass(),
                    cls.getInterfaces(), cls.getSourceFile(), cls.getAnnotations(), cls.getFields(), methods));
        }
        if (installed != 1 || frames != 2 || destroyed != 1) {
            throw new IllegalStateException("Unexpected patch counts: install=" + installed
                    + " render=" + frames + " destroy=" + destroyed);
        }
        File parent = output.getParentFile();
        if (parent != null) parent.mkdirs();
        DexPool.writeTo(output.toString(), new ImmutableDexFile(original.getOpcodes(), classes));
        DexFile verified = DexFileFactory.loadDexFile(output, null);
        int[] counts = countHooks(verified);
        if (counts[0] != 1 || counts[1] != 2 || counts[2] != 2 || counts[3] != 1) {
            throw new IllegalStateException("Re-read validation failed: " + java.util.Arrays.toString(counts));
        }
        System.out.println("Patched " + output + ": install=1 beforeFrame=2 afterFrame=2 destroy=1; "
                + verified.getClasses().size() + " classes preserved.");
    }

    private static Method patchMethod(Method method) {
        boolean create = method.getDefiningClass().equals(ACTIVITY) && method.getName().equals("onCreate");
        boolean destroy = method.getDefiningClass().equals(ACTIVITY) && method.getName().equals("onDestroy");
        boolean draw = method.getDefiningClass().equals(RENDERER) && method.getName().equals("onDrawFrame");
        if (!create && !destroy && !draw) return method;
        if (method.getImplementation() == null) throw new IllegalStateException("Missing code: " + method);
        MutableMethodImplementation impl = new MutableMethodImplementation(method.getImplementation());
        // Descending insertion keeps all original indices valid. Builder labels and try/debug positions
        // remain attached to their original instructions while branch offsets are recalculated.
        for (int i = impl.getInstructions().size() - 1; i >= 0; --i) {
            BuilderInstruction instruction = impl.getInstructions().get(i);
            MethodReference ref = referencedMethod(instruction);
            if (ref != null && ref.getDefiningClass().equals(bridge)) {
                throw new IllegalStateException("Input dex already contains practice calls");
            }
            if (create && ref != null && instruction.getOpcode() == Opcode.INVOKE_SUPER
                    && ref.getDefiningClass().equals(COCOS_ACTIVITY) && ref.getName().equals("onCreate")) {
                int activityRegister = ((Instruction35c) instruction).getRegisterC();
                impl.addInstruction(i + 1, invoke("install", activityRegister, "Landroid/app/Activity;"));
                installed++;
            } else if (draw && ref != null && instruction.getOpcode() == Opcode.INVOKE_STATIC
                    && ref.getDefiningClass().equals(RENDERER) && ref.getName().equals("nativeRender")) {
                // No branches in this APK target nativeRender itself; verify that assumption before
                // adding a preceding instruction (a branch to nativeRender would skip beforeFrame).
                if (!instruction.getLocation().getLabels().isEmpty()) {
                    throw new IllegalStateException("nativeRender is a branch target; patch strategy must be reviewed");
                }
                impl.addInstruction(i + 1, invoke("afterFrame"));
                impl.addInstruction(i, invoke("beforeFrame"));
                frames++;
            } else if (destroy && instruction.getOpcode() == Opcode.RETURN_VOID) {
                impl.addInstruction(i, invoke("destroy"));
                destroyed++;
            }
        }
        return new ImmutableMethod(method.getDefiningClass(), method.getName(), method.getParameters(),
                method.getReturnType(), method.getAccessFlags(), method.getAnnotations(),
                method.getHiddenApiRestrictions(), impl);
    }

    private static MethodReference referencedMethod(com.android.tools.smali.dexlib2.iface.instruction.Instruction i) {
        if (!(i instanceof ReferenceInstruction)) return null;
        Reference ref = ((ReferenceInstruction) i).getReference();
        return ref instanceof MethodReference ? (MethodReference) ref : null;
    }

    private static BuilderInstruction35c invoke(String name) {
        return new BuilderInstruction35c(Opcode.INVOKE_STATIC, 0, 0, 0, 0, 0, 0,
                new ImmutableMethodReference(bridge, name, Collections.emptyList(), "V"));
    }

    private static BuilderInstruction35c invoke(String name, int register, String type) {
        return new BuilderInstruction35c(Opcode.INVOKE_STATIC, 1, register, 0, 0, 0, 0,
                new ImmutableMethodReference(bridge, name, Collections.singletonList(type), "V"));
    }

    private static int[] countHooks(DexFile dex) {
        int[] counts = new int[4];
        for (ClassDef cls : dex.getClasses()) for (Method method : cls.getMethods()) {
            if (method.getImplementation() == null) continue;
            for (com.android.tools.smali.dexlib2.iface.instruction.Instruction i : method.getImplementation().getInstructions()) {
                MethodReference ref = referencedMethod(i);
                if (ref == null || !ref.getDefiningClass().equals(bridge)) continue;
                switch (ref.getName()) {
                    case "install": counts[0]++; break;
                    case "beforeFrame": counts[1]++; break;
                    case "afterFrame": counts[2]++; break;
                    case "destroy": counts[3]++; break;
                }
            }
        }
        return counts;
    }
}
