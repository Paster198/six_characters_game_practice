.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;
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

.field final synthetic val$idPointerUp:I

.field final synthetic val$pressureUp:F

.field final synthetic val$touchTimestamp:J

.field final synthetic val$xPointerUp:F

.field final synthetic val$yPointerUp:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFFJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$pressureUp:F

    iput-wide p6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$touchTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 287
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$pressureUp:F

    iget-wide v6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$touchTimestamp:J

    invoke-virtual/range {v1 .. v7}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionUp(IFFFJ)V

    return-void
.end method
