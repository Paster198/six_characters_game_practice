.class Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

.field final synthetic val$errStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader$3;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$errStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 273
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_id:I
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$000(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v2

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    iget v3, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;->val$id:I

    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$3$1;->val$errStr:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnFinish(IIILjava/lang/String;[B)V

    return-void
.end method
