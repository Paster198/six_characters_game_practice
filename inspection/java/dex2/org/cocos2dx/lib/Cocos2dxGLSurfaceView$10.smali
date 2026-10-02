.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;
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

.field final synthetic val$ids:[I

.field final synthetic val$pressure:[F

.field final synthetic val$touchTimestamp:J

.field final synthetic val$xs:[F

.field final synthetic val$ys:[F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;[I[F[F[FJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ids:[I

    iput-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$xs:[F

    iput-object p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ys:[F

    iput-object p5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$pressure:[F

    iput-wide p6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$touchTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 310
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ids:[I

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$xs:[F

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$ys:[F

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$pressure:[F

    iget-wide v6, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;->val$touchTimestamp:J

    invoke-virtual/range {v1 .. v7}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionCancel([I[F[F[FJ)V

    return-void
.end method
