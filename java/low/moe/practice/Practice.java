package low.moe.practice;

import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import java.util.Locale;

/** Pause-only controls. All engine mutations are queued to the GL thread. */
public final class Practice {
    private static Activity activity;
    private static FrameLayout overlay;
    private static Button entry;
    private static LinearLayout panel;
    private static volatile boolean loaded, unavailable;
    private static volatile int[] state;
    private static int frames, lastStatus = -1, lastMessage, lastEditor, lastClosed;
    private static int editorSerial, editorId, requestedTarget;
    private static boolean closing, previewScheduled;
    private static boolean loop, fixedNotes = true, hiddenNotes, skyGroundNotes;
    private static long lastPreviewAt;
    private static AlertDialog timeDialog;
    private static final Handler ui = new Handler(Looper.getMainLooper());
    private static final Runnable sendPreview = () -> {
        previewScheduled = false;
        if (panel == null || closing || editorId == 0) return;
        lastPreviewAt = SystemClock.uptimeMillis();
        nativePreview(editorId, requestedTarget, hiddenNotes, skyGroundNotes);
    };
    private static int start, end, rate = 100, duration;
    private static TextView startLabel, endLabel, rateLabel;
    private static SeekBar startBar, endBar, rateBar;
    private static final int WHITE = Color.rgb(250, 247, 255);
    private static final int LILAC = Color.rgb(189, 160, 241);

    private Practice() {}
    private static native void nativeBeforeFrame();
    private static native int[] nativeState();
    private static native void nativeBegin(int id);
    private static native void nativePreview(int id, int target, boolean hidden, boolean skyGround);
    private static native void nativeApply(int id, int a, int b, int speed, boolean repeat, boolean fixed, boolean hidden, boolean skyGround);
    private static native void nativeEnd(int id);
    private static native void nativeCancel(int id);
    private static native void nativeDestroyed();

    public static void install(Activity owner) {
        activity = owner;
        owner.runOnUiThread(() -> {
            if (activity != owner || overlay != null) return;
            overlay = new FrameLayout(owner);
            overlay.setClipChildren(false);
            owner.addContentView(overlay, new ViewGroup.LayoutParams(-1, -1));
            entry = button("练习", v -> showSettings());
            FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(dp(150), dp(48), Gravity.END | Gravity.BOTTOM);
            lp.setMargins(dp(20), dp(20), dp(36), dp(26));
            overlay.addView(entry, lp);
            entry.setVisibility(View.GONE);
        });
    }

    public static void beforeFrame() {
        if (unavailable || activity == null) return;
        if (!loaded) {
            try {
                if (Build.VERSION.SDK_INT < 24) { unavailable = true; return; }
                System.loadLibrary("practice");
                loaded = true;
            } catch (LinkageError | SecurityException error) {
                unavailable = true;
                android.util.Log.e("ArcaeaPractice", "Cannot load practice module", error);
                return;
            }
        }
        nativeBeforeFrame();
    }

    public static void afterFrame() {
        if (!loaded || unavailable || ++frames % 4 != 0) return;
        final int[] next = nativeState();
        if (next == null || next.length < 15) return;
        state = next;
        // status: 0 outside game, 1 playing, 2 paused, 3 rebuilding, -1 unsupported.
        if (next[0] != lastStatus || next[9] != lastMessage || next[10] != lastEditor || next[11] != lastClosed) {
            lastStatus = next[0]; lastMessage = next[9]; lastEditor = next[10]; lastClosed = next[11];
            final Activity owner = activity;
            if (owner != null) owner.runOnUiThread(() -> { if (activity == owner) updateVisibility(next); });
        }
    }

    public static void destroy() {
        if (loaded && !unavailable) nativeDestroyed();
        closing = true; ui.removeCallbacks(sendPreview); previewScheduled = false;
        if (timeDialog != null) { timeDialog.dismiss(); timeDialog = null; }
        activity = null; overlay = null; entry = null; panel = null;
        state = null; lastStatus = -1; lastEditor = lastClosed = editorId = 0; closing = false;
    }

    private static void updateVisibility(int[] s) {
        if (entry == null) return;
        if (panel != null && editorId != 0 && s[11] == editorId) closeSettings();
        // A direct scene replacement preserves this editor and its draft.
        if (s[0] != 2 && s[0] != 3 && panel != null) closeSettings();
        entry.setVisibility(s[0] == 2 && panel == null ? View.VISIBLE : View.GONE);
        if (s[9] == 4 || s[9] == 5 || s[9] == 7) closing = false;
        if (s[9] != 0) {
            String message = s[9] == 1 ? "练习设置已应用" :
                s[9] == 2 ? "已到练习终点" : s[9] == 3 ? "已结束练习" :
                s[9] == 4 ? "音频处理失败，请重新应用设置或结束练习" :
                s[9] == 6 ? "无法恢复原位置；已保持暂停，请返回选曲后重试" :
                s[9] == 7 ? "谱面效果未能应用；请关闭对应开关后重试" :
                "无法应用练习设置，请返回选曲后重试";
            Toast.makeText(activity, message, Toast.LENGTH_LONG).show();
        }
    }

    private static void showSettings() {
        int[] s = state;
        if (s == null || s[0] != 2 || activity == null || panel != null) return;
        duration = s[1];
        if (duration < 1000) { Toast.makeText(activity, "正在读取歌曲时长", Toast.LENGTH_SHORT).show(); return; }
        boolean active = s[8] != 0;
        start = active ? s[3] : 0; end = active ? s[4] : duration;
        rate = active ? s[5] : 100; loop = active && s[6] != 0;
        fixedNotes = !active || s[7] != 0;
        hiddenNotes = active && s[13] != 0; skyGroundNotes = active && s[14] != 0;
        requestedTarget = Math.min(duration, s[2]);
        entry.setVisibility(View.GONE);
        editorId = ++editorSerial; if (editorId <= 0) editorId = editorSerial = 1;
        closing = false; lastPreviewAt = 0;
        nativeBegin(editorId);
        panel = new LinearLayout(activity) {
            @Override public boolean dispatchKeyEvent(KeyEvent event) {
                if (event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
                    if (event.getAction() == KeyEvent.ACTION_UP) finishSettings(0);
                    return true;
                }
                return super.dispatchKeyEvent(event);
            }
        };
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setGravity(Gravity.CENTER_HORIZONTAL);
        panel.setPadding(dp(30), dp(12), dp(30), dp(12));
        // Keep the paused scene visible through the blue-violet glass surface.
        // Alpha belongs to the surface, so text and controls stay legible.
        panel.setBackground(new GradientDrawable(GradientDrawable.Orientation.TL_BR,
            new int[]{0x60181834, 0x50392a60, 0x6020193b}));
        panel.setClickable(true);
        panel.setFocusableInTouchMode(true);
        overlay.addView(panel, new FrameLayout.LayoutParams(-1, -1));
        panel.requestFocus();
        TextView title = text("练习设置", 24); title.setTypeface(null, Typeface.BOLD);
        panel.addView(title);
        panel.addView(text("调整 A / B 实时预览；应用后从 A 前预备，取消恢复原位置", 12));
        ScrollView scroll = new ScrollView(activity);
        LinearLayout contents = new LinearLayout(activity);
        contents.setOrientation(LinearLayout.VERTICAL);
        contents.setPadding(dp(18), dp(6), dp(18), 0);
        scroll.addView(contents);
        panel.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));

        startLabel = text("", 18);
        startLabel.setOnClickListener(v -> editTime(true));
        startBar = slider(duration, start, value -> { if (closing) return; start = Math.min(value, end - 1000); refresh(); queuePreview(start); });
        addRow(contents, startLabel, startBar);
        endLabel = text("", 18);
        endLabel.setOnClickListener(v -> editTime(false));
        endBar = slider(duration, end, value -> { if (closing) return; end = Math.max(value, start + 1000); refresh(); queuePreview(end); });
        addRow(contents, endLabel, endBar);
        Button repeat = button(loopText(), null);
        repeat.setOnClickListener(v -> { loop = !loop; repeat.setText(loopText()); });
        LinearLayout repeatRow = new LinearLayout(activity); repeatRow.setGravity(Gravity.END);
        repeatRow.addView(repeat, new LinearLayout.LayoutParams(dp(230), dp(42)));
        contents.addView(repeatRow);

        LinearLayout speedRow = new LinearLayout(activity); speedRow.setGravity(Gravity.CENTER_VERTICAL);
        rateLabel = text("", 18); speedRow.addView(rateLabel, new LinearLayout.LayoutParams(dp(160), -2));
        speedRow.addView(button("−", v -> { rate = Math.max(50, rate - 1); refresh(); }), new LinearLayout.LayoutParams(dp(55), dp(48)));
        rateBar = slider(200, rate - 50, value -> { rate = value + 50; refresh(); });
        speedRow.addView(rateBar, new LinearLayout.LayoutParams(0, dp(52), 1));
        speedRow.addView(button("+", v -> { rate = Math.min(250, rate + 1); refresh(); }), new LinearLayout.LayoutParams(dp(55), dp(48)));
        contents.addView(speedRow);
        contents.addView(text("0.50× — 2.50×  ·  音乐变速不变调", 12));

        RadioGroup notes = new RadioGroup(activity); notes.setOrientation(LinearLayout.HORIZONTAL);
        RadioButton fixed = radio("Note 流速不变", 101), synced = radio("Note 同步变速", 102);
        notes.addView(fixed, new RadioGroup.LayoutParams(0, dp(46), 1));
        notes.addView(synced, new RadioGroup.LayoutParams(0, dp(46), 1));
        notes.check(fixedNotes ? 101 : 102);
        notes.setOnCheckedChangeListener((g, id) -> fixedNotes = id == 101);
        contents.addView(notes);
        LinearLayout modifiers = new LinearLayout(activity);
        CheckBox hidden = modifierToggle("下隐（Path I）", hiddenNotes);
        CheckBox skyGround = modifierToggle("天地键转换（Path III）", skyGroundNotes);
        hidden.setOnCheckedChangeListener((v, checked) -> {
            if (closing) { hidden.setChecked(hiddenNotes); return; }
            hiddenNotes = checked; queuePreview(requestedTarget); flushPreview();
        });
        skyGround.setOnCheckedChangeListener((v, checked) -> {
            if (closing) { skyGround.setChecked(skyGroundNotes); return; }
            skyGroundNotes = checked; queuePreview(requestedTarget); flushPreview();
        });
        modifiers.addView(hidden, new LinearLayout.LayoutParams(0, dp(46), 1));
        modifiers.addView(skyGround, new LinearLayout.LayoutParams(0, dp(46), 1));
        contents.addView(modifiers);
        contents.addView(text("点击 A / B 时间可输入；预览后本局计为练习，取消也不保存成绩", 12));

        LinearLayout footer = new LinearLayout(activity); footer.setGravity(Gravity.CENTER);
        addFooter(footer, button("取消", v -> finishSettings(0)));
        if (active) addFooter(footer, button("结束练习", v -> finishSettings(2)));
        addFooter(footer, button("应用", v -> finishSettings(1)));
        panel.addView(footer);
        refresh();
    }

    private interface Change { void onChange(int value); }
    private static SeekBar slider(int max, int value, Change change) {
        SeekBar bar = new SeekBar(activity); bar.setMax(max); bar.setProgress(value);
        bar.setProgressTintList(android.content.res.ColorStateList.valueOf(LILAC));
        bar.setProgressBackgroundTintList(android.content.res.ColorStateList.valueOf(0x526c5e98));
        bar.setThumbTintList(android.content.res.ColorStateList.valueOf(WHITE));
        bar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar b, int value, boolean user) { if (user) change.onChange(value); }
            public void onStartTrackingTouch(SeekBar b) {}
            public void onStopTrackingTouch(SeekBar b) {
                if (b == startBar || b == endBar) flushPreview();
            }
        });
        return bar;
    }
    private static void refresh() {
        startLabel.setText("A 起点 " + formatTime(start)); endLabel.setText("B 终点 " + formatTime(end));
        rateLabel.setText(String.format(Locale.ROOT, "倍率 %.2f×", rate / 100f));
        startBar.setProgress(start); endBar.setProgress(end); rateBar.setProgress(rate - 50);
    }
    private static void queuePreview(int target) {
        if (closing || panel == null) return;
        requestedTarget = target;
        if (previewScheduled) return;
        previewScheduled = true;
        // Throttle, not debounce: continuous dragging keeps updating the
        // paused chart. The native mailbox keeps the latest target during a
        // synchronous rebuild, and releasing the thumb flushes immediately.
        ui.postDelayed(sendPreview, Math.max(0, 75 - (SystemClock.uptimeMillis() - lastPreviewAt)));
    }
    private static void flushPreview() {
        if (!previewScheduled) return;
        ui.removeCallbacks(sendPreview); sendPreview.run();
    }
    private static int parseTime(String text, boolean isStart) {
        String[] parts = text.trim().split(":", -1);
        if (parts.length < 1 || parts.length > 2) throw new IllegalArgumentException();
        double minutes = parts.length == 2 ? Double.parseDouble(parts[0]) : 0;
        double tail = Double.parseDouble(parts[parts.length - 1]);
        double seconds = minutes * 60 + tail;
        if (Double.isNaN(seconds) || Double.isInfinite(seconds) || minutes < 0 || tail < 0 ||
            seconds < 0 || seconds * 1000 > duration || (parts.length == 2 && tail >= 60)) throw new IllegalArgumentException();
        int value = (int)Math.round(seconds * 1000);
        if (isStart ? value > end - 1000 : value < start + 1000) throw new IllegalArgumentException();
        return value;
    }
    private static void editTime(boolean isStart) {
        if (closing || timeDialog != null) return;
        final int original = isStart ? start : end;
        final boolean[] accepted = {false};
        EditText input = new EditText(activity);
        input.setSingleLine(); input.setInputType(InputType.TYPE_CLASS_TEXT);
        input.setTextColor(WHITE);
        input.setBackgroundTintList(android.content.res.ColorStateList.valueOf(LILAC));
        input.setText(formatTime(original)); input.selectAll();
        AlertDialog dialog = new AlertDialog.Builder(activity).setTitle(isStart ? "起点（分:秒 或秒数）" : "终点（分:秒 或秒数）")
            .setView(input).setNegativeButton("取消", null).setPositiveButton("确定", null).create();
        timeDialog = dialog;
        input.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int at, int count, int after) {}
            public void onTextChanged(CharSequence s, int at, int before, int count) {
                if (closing || panel == null) return;
                try {
                    int value = parseTime(s.toString(), isStart);
                    if (isStart) start = value; else end = value;
                    refresh(); queuePreview(value); input.setError(null);
                } catch (RuntimeException incomplete) { /* Keep the last valid preview while typing. */ }
            }
            public void afterTextChanged(Editable value) {}
        });
        dialog.setOnDismissListener(v -> {
            timeDialog = null;
            if (!accepted[0] && panel != null && !closing) {
                if (isStart) start = original; else end = original;
                refresh(); queuePreview(original);
            }
            if (panel != null) panel.requestFocus();
        });
        dialog.setOnShowListener(v -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(w -> {
            try {
                int value = parseTime(input.getText().toString(), isStart);
                if (isStart) start = value; else end = value;
                refresh(); queuePreview(value); flushPreview(); accepted[0] = true; dialog.dismiss();
            } catch (RuntimeException invalid) { input.setError("请输入曲目范围内的时间，片段至少 1 秒"); }
        }));
        dialog.show();
        if (dialog.getWindow() != null) {
            GradientDrawable glass = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                new int[]{0x9028203f, 0x8051406f});
            glass.setCornerRadius(dp(10));
            glass.setStroke(dp(1), 0x80ddd1f5);
            dialog.getWindow().setBackgroundDrawable(glass);
            dialog.getWindow().setDimAmount(0.04f);
        }
        int titleId = activity.getResources().getIdentifier("alertTitle", "id", "android");
        View dialogTitle = dialog.findViewById(titleId);
        if (dialogTitle instanceof TextView) ((TextView)dialogTitle).setTextColor(WHITE);
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).setTextColor(WHITE);
        dialog.getButton(AlertDialog.BUTTON_NEGATIVE).setTextColor(WHITE);
    }
    private static String formatTime(int ms) { return String.format(Locale.ROOT, "%d:%02d.%03d", ms / 60000, (ms / 1000) % 60, ms % 1000); }
    private static String loopText() { return "A/B 循环：" + (loop ? "开启" : "关闭"); }
    private static void finishSettings(int action) {
        if (closing || panel == null) return;
        if (action == 1 && (end - start < 1000 || start < 0 || end > duration)) return;
        closing = true; ui.removeCallbacks(sendPreview); previewScheduled = false;
        if (action == 1) nativeApply(editorId, start, end, rate, loop, fixedNotes, hiddenNotes, skyGroundNotes);
        else if (action == 2) nativeEnd(editorId);
        else nativeCancel(editorId);
        // Keep intercepting touch until the GL thread restores the paused scene.
    }
    private static void closeSettings() {
        closing = true; ui.removeCallbacks(sendPreview); previewScheduled = false;
        if (timeDialog != null) { timeDialog.dismiss(); timeDialog = null; }
        if (panel != null && overlay != null) overlay.removeView(panel);
        panel = null; editorId = 0; closing = false;
        if (entry != null) entry.setVisibility(state != null && state[0] == 2 ? View.VISIBLE : View.GONE);
    }
    private static int dp(float value) { return Math.round(value * activity.getResources().getDisplayMetrics().density); }
    private static TextView text(String value, int size) {
        TextView t = new TextView(activity); t.setText(value); t.setTextColor(WHITE); t.setTextSize(size); t.setGravity(Gravity.CENTER_VERTICAL);
        t.setShadowLayer(dp(2), 0, dp(1), 0xb0000010);
        t.setPadding(dp(6), dp(4), dp(6), dp(4)); return t;
    }
    private static Button button(String value, View.OnClickListener listener) {
        Button b = new Button(activity); b.setText(value); b.setTextColor(WHITE); b.setTextSize(17); b.setAllCaps(false);
        b.setShadowLayer(dp(2), 0, dp(1), 0xb0000010);
        b.setBackground(new GlassButton(dp(1.2f), dp(16)));
        b.setBackgroundTintList(null);
        b.setElevation(0); b.setStateListAnimator(null);
        b.setOnClickListener(listener); return b;
    }
    private static RadioButton radio(String value, int id) {
        RadioButton b = new RadioButton(activity); b.setId(id); b.setText(value); b.setTextColor(WHITE); b.setTextSize(16);
        b.setButtonTintList(android.content.res.ColorStateList.valueOf(LILAC)); return b;
    }
    private static CheckBox modifierToggle(String value, boolean checked) {
        CheckBox b = new CheckBox(activity); b.setText(value); b.setTextColor(WHITE); b.setTextSize(16);
        b.setButtonTintList(android.content.res.ColorStateList.valueOf(LILAC)); b.setChecked(checked);
        b.setShadowLayer(dp(2), 0, dp(1), 0xb0000010); return b;
    }
    /** Cocos-style chamfered button; every state retains a translucent fill. */
    private static final class GlassButton extends Drawable {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path outline = new Path();
        private final float stroke, bevel;
        private boolean pressed;
        private int alpha = 255;
        GlassButton(float stroke, float bevel) { this.stroke = stroke; this.bevel = bevel; }
        @Override public boolean isStateful() { return true; }
        @Override protected boolean onStateChange(int[] states) {
            boolean next = false;
            for (int state : states) if (state == android.R.attr.state_pressed || state == android.R.attr.state_focused) next = true;
            if (next == pressed) return false;
            pressed = next; invalidateSelf(); return true;
        }
        @Override public void draw(Canvas canvas) {
            Rect r = getBounds(); float inset = stroke / 2f;
            float left = r.left + inset, top = r.top + inset, right = r.right - inset, bottom = r.bottom - inset;
            float cut = Math.min(bevel, (right-left) * .2f), mid = (top+bottom) / 2f;
            outline.reset(); outline.moveTo(left+cut, top); outline.lineTo(right-cut, top);
            outline.lineTo(right, mid); outline.lineTo(right-cut, bottom); outline.lineTo(left+cut, bottom);
            outline.lineTo(left, mid); outline.close();
            paint.setStyle(Paint.Style.FILL); paint.setAlpha(alpha);
            paint.setShader(new LinearGradient(left, top, right, bottom,
                pressed ? new int[]{0x788573b6, 0x8ab39ace} : new int[]{0x486e609a, 0x60af96d4}, null, Shader.TileMode.CLAMP));
            canvas.drawPath(outline, paint);
            paint.setShader(null); paint.setColor(pressed ? 0xeeeae1fa : 0xbcdcd1f4);
            paint.setAlpha((Color.alpha(paint.getColor()) * alpha) / 255);
            paint.setStyle(Paint.Style.STROKE); paint.setStrokeWidth(stroke);
            canvas.drawPath(outline, paint);
        }
        @Override public void setAlpha(int value) { alpha = value; invalidateSelf(); }
        @Override public void setColorFilter(ColorFilter filter) { paint.setColorFilter(filter); invalidateSelf(); }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
    }
    private static void addRow(LinearLayout target, TextView label, SeekBar bar) {
        LinearLayout row = new LinearLayout(activity); row.setGravity(Gravity.CENTER_VERTICAL);
        row.addView(label, new LinearLayout.LayoutParams(dp(210), dp(58)));
        row.addView(bar, new LinearLayout.LayoutParams(0, dp(58), 1)); target.addView(row);
    }
    private static void addFooter(LinearLayout footer, Button button) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(44), 1); lp.setMargins(dp(18), dp(4), dp(18), dp(4));
        footer.addView(button, lp);
    }
}
