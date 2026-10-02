.class Lorg/cocos2dx/lib/Cocos2dxDownloader$1;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader;->onProgress(IJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field final synthetic val$downloadBytes:J

.field final synthetic val$downloadNow:J

.field final synthetic val$downloadTotal:J

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IJJJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$id:I

    iput-wide p3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadBytes:J

    iput-wide p5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadNow:J

    iput-wide p7, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadTotal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 182
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_id:I
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$000(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I

    move-result v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$id:I

    iget-wide v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadBytes:J

    iget-wide v5, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadNow:J

    iget-wide v7, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;->val$downloadTotal:J

    invoke-virtual/range {v0 .. v8}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->nativeOnProgress(IIJJJ)V

    return-void
.end method
