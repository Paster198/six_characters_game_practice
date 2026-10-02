.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;
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

.field final synthetic val$idUp:I

.field final synthetic val$pressUp:F

.field final synthetic val$touchTimestamp:J

.field final synthetic val$xUp:F

.field final synthetic val$yUp:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFFFJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$idUp:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$xUp:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$yUp:F

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$pressUp:F

    iput-wide p6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$touchTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 301
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$idUp:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$xUp:F

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$yUp:F

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$pressUp:F

    iget-wide v6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;->val$touchTimestamp:J

    invoke-virtual/range {v1 .. v7}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionUp(IFFFJ)V

    return-void
.end method
