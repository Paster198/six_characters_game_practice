.class Lorg/cocos2dx/lib/Cocos2dxVideoView$5;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    .line 502
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    .line 504
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    # setter for: Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I
    invoke-static {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1202(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    return-void
.end method
