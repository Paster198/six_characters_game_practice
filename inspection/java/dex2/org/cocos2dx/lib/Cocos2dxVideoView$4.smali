.class Lorg/cocos2dx/lib/Cocos2dxVideoView$4;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 447
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8

    .line 449
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v0, -0x1

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$202(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 451
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$602(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 454
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_49

    .line 455
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_49

    return v0

    .line 465
    :cond_49
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_a4

    .line 466
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object p1, p1, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/16 p3, 0xc8

    .line 469
    const-string v1, "android"

    const-string v2, "string"

    if-ne p2, p3, :cond_68

    .line 471
    const-string p2, "VideoView_error_text_invalid_progressive_playback"

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_6e

    .line 474
    :cond_68
    const-string p2, "VideoView_error_text_unknown"

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 477
    :goto_6e
    const-string p3, "VideoView_error_title"

    invoke-virtual {p1, p3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 478
    const-string v3, "VideoView_error_button"

    invoke-virtual {p1, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 480
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v3, v3, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 482
    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 483
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;

    invoke-direct {p3, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)V

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 494
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_a4
    return v0
.end method
