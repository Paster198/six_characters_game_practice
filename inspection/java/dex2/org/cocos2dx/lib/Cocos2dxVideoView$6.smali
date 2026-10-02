.class Lorg/cocos2dx/lib/Cocos2dxVideoView$6;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .line 548
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_d

    move p1, v0

    goto :goto_e

    :cond_d
    move p1, v1

    .line 549
    :goto_e
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    if-ne p2, p3, :cond_1f

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    if-ne p2, p4, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v1

    .line 550
    :goto_20
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_42

    if-eqz p1, :cond_42

    if-eqz v0, :cond_42

    .line 551
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_3d

    .line 552
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    .line 554
    :cond_3d
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_42
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 560
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1302(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 561
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 567
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x0

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1302(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 569
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, 0x1

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$700(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V

    return-void
.end method
