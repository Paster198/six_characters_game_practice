.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    }
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .registers 8

    .line 76
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    filled-new-array/range {p2 .. p7}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .registers 3

    .line 80
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 6

    .line 72
    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result p0

    return p0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 7

    const/4 v0, 0x1

    .line 86
    new-array v0, v0, [I

    .line 87
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 88
    aget p1, v0, p1

    return p1

    :cond_d
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 30

    move-object/from16 v0, p0

    .line 163
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v3, 0x1

    aget v6, v1, v3

    const/16 v18, 0x2

    aget v8, v1, v18

    const/4 v5, 0x3

    aget v10, v1, v5

    const/4 v5, 0x4

    aget v12, v1, v5

    const/4 v7, 0x5

    aget v14, v1, v7

    const/16 v16, 0x4

    const/16 v17, 0x3038

    move v1, v3

    const/16 v3, 0x3024

    move v7, v5

    const/16 v5, 0x3023

    move v9, v7

    const/16 v7, 0x3022

    move v11, v9

    const/16 v9, 0x3021

    move v13, v11

    const/16 v11, 0x3025

    move v15, v13

    const/16 v13, 0x3026

    move/from16 v19, v15

    const/16 v15, 0x3040

    move/from16 v26, v19

    move/from16 v19, v2

    move/from16 v2, v26

    filled-new-array/range {v3 .. v17}, [I

    move-result-object v22

    .line 173
    new-array v3, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 174
    new-array v9, v1, [I

    const/16 v24, 0x1

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v23, v3

    move-object/from16 v25, v9

    .line 175
    invoke-interface/range {v20 .. v25}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 176
    aget v3, v9, v19

    if-lez v3, :cond_56

    .line 178
    aget-object v1, v23, v19

    return-object v1

    :cond_56
    const/16 v3, 0x3040

    const/16 v4, 0x3038

    .line 182
    filled-new-array {v3, v2, v4}, [I

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 186
    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 187
    aget v8, v9, v19

    if-lez v8, :cond_d5

    .line 189
    new-array v2, v8, [Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    .line 192
    new-array v7, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 193
    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move/from16 v3, v19

    :goto_7b
    if-ge v3, v8, :cond_8d

    .line 195
    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    aget-object v5, v7, v3

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    invoke-direct {v4, v0, v6, v9, v5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 198
    :cond_8d
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    invoke-direct {v3, v0, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;[I)V

    move v5, v8

    move/from16 v4, v19

    :goto_97
    add-int/lit8 v6, v5, -0x1

    if-ge v4, v6, :cond_ab

    add-int v6, v4, v5

    .line 204
    div-int/lit8 v6, v6, 0x2

    .line 205
    aget-object v7, v2, v6

    invoke-virtual {v3, v7}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->compareTo(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;)I

    move-result v7

    if-gez v7, :cond_a9

    move v5, v6

    goto :goto_97

    :cond_a9
    move v4, v6

    goto :goto_97

    :cond_ab
    sub-int/2addr v8, v1

    if-eq v4, v8, :cond_b0

    add-int/lit8 v4, v4, 0x1

    .line 214
    :cond_b0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t find EGLConfig match: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", instead of closest one:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cocos2d"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    aget-object v1, v2, v4

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->config:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v1

    .line 218
    :cond_d5
    const-string v1, "device_policy"

    const-string v2, "Can not select an EGLConfig for rendering."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method
