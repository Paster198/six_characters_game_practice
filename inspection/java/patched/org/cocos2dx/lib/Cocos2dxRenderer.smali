.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J = 0xfe502aL


# instance fields
.field private mLastTickInNanoSeconds:J

.field private mNativeInitCompleted:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private videoFrameCount:I

.field private videoSurface:Landroid/view/Surface;

.field private videoSurfaceHasUpdate:Z

.field private videoSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceHasUpdate:Z

    .line 60
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoFrameCount:I

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .registers 6

    .line 226
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 227
    :cond_7
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private native initSetVideoSurface(Landroid/view/Surface;I)V
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyEvent(IZ)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(II)V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFFFJ)V
.end method

.method private static native nativeTouchesCancel([I[F[F[FJ)V
.end method

.method private static native nativeTouchesEnd(IFFFJ)V
.end method

.method private static native nativeTouchesMove([I[F[F[FJ)V
.end method

.method public static setAnimationInterval(F)V
    .registers 3

    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr p0, v0

    float-to-long v0, p0

    .line 71
    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .registers 2

    .line 221
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F[FJ)V
    .registers 7

    .line 173
    invoke-static/range {p1 .. p6}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F[FJ)V

    return-void
.end method

.method public handleActionDown(IFFFJ)V
    .registers 7

    .line 165
    invoke-static/range {p1 .. p6}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFFFJ)V

    return-void
.end method

.method public handleActionMove([I[F[F[FJ)V
    .registers 7

    .line 177
    invoke-static/range {p1 .. p6}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F[FJ)V

    return-void
.end method

.method public handleActionUp(IFFFJ)V
    .registers 7

    .line 169
    invoke-static/range {p1 .. p6}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFFFJ)V

    return-void
.end method

.method public handleDeleteBackward()V
    .registers 1

    .line 217
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .registers 2

    .line 213
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    return-void
.end method

.method public handleKeyDown(I)V
    .registers 3

    const/4 v0, 0x1

    .line 181
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    return-void
.end method

.method public handleKeyUp(I)V
    .registers 3

    const/4 v0, 0x0

    .line 185
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyEvent(IZ)Z

    return-void
.end method

.method public handleOnPause()V
    .registers 2

    .line 195
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_5

    return-void

    .line 198
    :cond_5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterBackground()V

    .line 199
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    return-void
.end method

.method public handleOnResume()V
    .registers 1

    .line 203
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterForeground()V

    .line 204
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 6

    .line 123
    sget-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    long-to-double v0, v0

    const-wide v2, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_1c

    invoke-static {}, Llow/moe/practice/Practice;->beforeFrame()V

    .line 124
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    invoke-static {}, Llow/moe/practice/Practice;->afterFrame()V

    .line 125
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoFrameCount:I

    goto :goto_40

    .line 127
    :cond_1c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v2

    .line 130
    sget-wide v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_31

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    .line 132
    :try_start_2d
    div-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_31

    .line 139
    :catch_31
    :cond_31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    invoke-static {}, Llow/moe/practice/Practice;->beforeFrame()V

    .line 140
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    invoke-static {}, Llow/moe/practice/Practice;->afterFrame()V

    .line 143
    :goto_40
    iget-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceHasUpdate:Z

    if-eqz p1, :cond_4c

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceHasUpdate:Z

    .line 145
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_4c
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceHasUpdate:Z

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    .line 114
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    .line 85
    iget p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    invoke-static {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 89
    new-array p2, p1, [I

    const/4 v0, 0x0

    .line 90
    invoke-static {p1, p2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 92
    aget p1, p2, v0

    const p2, 0x8d65

    .line 93
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    const-string v0, "glBindTexture mTextureID"

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    .line 97
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 98
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v1, 0x812f

    .line 100
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 101
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 102
    const-string p2, "glTexParameteri mTextureID"

    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->checkGlError(Ljava/lang/String;)V

    .line 104
    new-instance p2, Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    .line 105
    invoke-virtual {p2, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 106
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 107
    new-instance p2, Landroid/view/Surface;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->videoSurface:Landroid/view/Surface;

    .line 109
    invoke-direct {p0, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->initSetVideoSurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .registers 3

    .line 75
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 76
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    return-void
.end method
