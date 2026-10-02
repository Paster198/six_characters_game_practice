.class Lorg/cocos2dx/lib/DataTaskHandler;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "Cocos2dxDownloader.java"


# instance fields
.field private _downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field _id:I

.field private _lastBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;I)V
    .registers 6

    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".*"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>([Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .line 23
    iput p2, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    const-wide/16 p1, 0x0

    .line 24
    iput-wide p1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_lastBytesWritten:J

    return-void
.end method


# virtual methods
.method LogD(Ljava/lang/String;)V
    .registers 3

    .line 17
    const-string v0, "Cocos2dxDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onFailure(i:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " headers:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " throwable:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/cocos2dx/lib/DataTaskHandler;->LogD(Ljava/lang/String;)V

    if-eqz p4, :cond_2d

    .line 48
    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2f

    .line 47
    :cond_2d
    const-string p2, ""

    .line 50
    :goto_2f
    iget-object p3, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget p4, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p1, p2, v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    return-void
.end method

.method public onProgress(JJ)V
    .registers 15

    .line 30
    iget-wide v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_lastBytesWritten:J

    sub-long v4, p1, v0

    .line 33
    iget-object v2, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v3, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v2 .. v9}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onProgress(IJJJ)V

    .line 34
    iput-wide v6, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_lastBytesWritten:J

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onStart(I)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess(i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " headers:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/DataTaskHandler;->LogD(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget p2, p0, Lorg/cocos2dx/lib/DataTaskHandler;->_id:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, p3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    return-void
.end method
