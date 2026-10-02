.class Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$4;)V
    .registers 2

    .line 484
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 489
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    iget-object p1, p1, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$800(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 490
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    iget-object p1, p1, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$800(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object p1

    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    iget-object p2, p2, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$900(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    :cond_1e
    return-void
.end method
