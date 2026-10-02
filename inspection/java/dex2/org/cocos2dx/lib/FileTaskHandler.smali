.class Lorg/cocos2dx/lib/FileTaskHandler;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "Cocos2dxDownloader.java"


# instance fields
.field private _downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field _finalFile:Ljava/io/File;

.field _id:I

.field private _initFileLen:J

.field private _lastBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/io/File;Ljava/io/File;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p3, v0, v1, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZZ)V

    .line 74
    iput-object p4, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    .line 75
    iput-object p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .line 76
    iput p2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    .line 77
    invoke-virtual {p0}, Lorg/cocos2dx/lib/FileTaskHandler;->getTargetFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_initFileLen:J

    const-wide/16 p1, 0x0

    .line 78
    iput-wide p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_lastBytesWritten:J

    return-void
.end method


# virtual methods
.method LogD(Ljava/lang/String;)V
    .registers 3

    .line 69
    const-string v0, "Cocos2dxDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 7

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure(i:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " throwable:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " file:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/cocos2dx/lib/FileTaskHandler;->LogD(Ljava/lang/String;)V

    if-eqz p3, :cond_37

    .line 107
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_39

    .line 106
    :cond_37
    const-string p2, ""

    .line 109
    :goto_39
    iget-object p3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget p4, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p1, p2, v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->runNextTaskIfExists()V

    return-void
.end method

.method public onProgress(JJ)V
    .registers 15

    .line 84
    iget-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_lastBytesWritten:J

    sub-long v4, p1, v0

    .line 85
    iget-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_initFileLen:J

    add-long v6, p1, v0

    add-long v8, p3, v0

    .line 87
    iget-object v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    invoke-virtual/range {v2 .. v9}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onProgress(IJJJ)V

    .line 88
    iput-wide p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_lastBytesWritten:J

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 93
    iget-object v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onStart(I)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V
    .registers 6

    .line 114
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

    const-string p2, " file:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/FileTaskHandler;->LogD(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6b

    .line 120
    iget-object p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Dest file is directory:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 124
    :cond_4d
    iget-object p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6b

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Can\'t remove old file:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_75

    .line 130
    :cond_6b
    invoke-virtual {p0}, Lorg/cocos2dx/lib/FileTaskHandler;->getTargetFile()Ljava/io/File;

    move-result-object p1

    .line 131
    iget-object p3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {p1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-object p1, p2

    .line 133
    :goto_75
    iget-object p3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    return-void
.end method
