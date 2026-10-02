.class Lorg/cocos2dx/lib/Cocos2dxDownloader$4;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxDownloader;->cancelAllRequests(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 292
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$300(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 293
    :try_start_7
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;->val$downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->access$300(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 294
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/DownloadTask;

    .line 298
    iget-object v3, v2, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    if-eqz v3, :cond_15

    .line 299
    iget-object v2, v2, Lorg/cocos2dx/lib/DownloadTask;->handle:Lcom/loopj/android/http/RequestHandle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_15

    .line 302
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method
