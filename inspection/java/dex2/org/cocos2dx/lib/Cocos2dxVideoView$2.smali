.class Lorg/cocos2dx/lib/Cocos2dxVideoView$2;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 395
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    .line 397
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v1, 0x2

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$202(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 399
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$300(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 400
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$300(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 403
    :cond_1d
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$002(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 404
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$102(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 407
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_3c

    .line 409
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    .line 412
    :cond_3c
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    if-eqz p1, :cond_51

    .line 413
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 416
    :cond_51
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5f

    .line 417
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    :cond_5f
    return-void
.end method
