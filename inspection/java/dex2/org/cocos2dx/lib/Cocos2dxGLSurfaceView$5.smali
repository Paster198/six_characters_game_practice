.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field final synthetic val$idPointerDown:I

.field final synthetic val$pressurePointerDown:F

.field final synthetic val$touchTimestamp:J

.field final synthetic val$xPointerDown:F

.field final synthetic val$yPointerDown:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFFJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$idPointerDown:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$xPointerDown:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$yPointerDown:F

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$pressurePointerDown:F

    iput-wide p6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$touchTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 249
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$idPointerDown:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$xPointerDown:F

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$yPointerDown:F

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$pressurePointerDown:F

    iget-wide v6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;->val$touchTimestamp:J

    invoke-virtual/range {v1 .. v7}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionDown(IFFFJ)V

    return-void
.end method
