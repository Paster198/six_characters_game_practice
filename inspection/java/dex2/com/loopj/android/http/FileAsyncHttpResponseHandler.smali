.class public abstract Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FileAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpRH"


# instance fields
.field protected final append:Z

.field protected final file:Ljava/io/File;

.field protected frontendFile:Ljava/io/File;

.field protected final renameIfExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 103
    iput-boolean p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZZ)V
    .registers 7

    .line 79
    invoke-direct {p0, p4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Z)V

    if-eqz p1, :cond_7

    const/4 p4, 0x1

    goto :goto_8

    :cond_7
    const/4 p4, 0x0

    .line 80
    :goto_8
    const-string v0, "File passed into FileAsyncHttpResponseHandler constructor must not be null"

    invoke-static {p4, v0}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_2a

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_2a

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    move-result p4

    const-string v0, "Cannot create parent directories for requested File location"

    invoke-static {p4, v0}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 84
    :cond_2a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-eqz p4, :cond_3f

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p4

    if-nez p4, :cond_3f

    .line 86
    sget-object p4, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v0, "FileAsyncHttpRH"

    const-string v1, "Cannot create directories for requested Directory location, might not be a problem"

    invoke-interface {p4, v0, v1}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_3f
    iput-object p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    .line 90
    iput-boolean p2, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 91
    iput-boolean p3, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    return-void
.end method


# virtual methods
.method public deleteTargetFile()Z
    .registers 2

    .line 112
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected getOriginalFile()Ljava/io/File;
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Target file is null, fatal!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    return-object v0
.end method

.method protected getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4c

    .line 218
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 219
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 220
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    invoke-direct {p1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    if-eqz v0, :cond_4c

    const/16 v3, 0x1000

    .line 223
    :try_start_19
    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    .line 226
    :goto_1d
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_37

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_37

    add-int/2addr v5, v6

    .line 228
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v5

    .line 229
    invoke-virtual {p0, v6, v7, v1, v2}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_36
    .catchall {:try_start_19 .. :try_end_36} :catchall_41

    goto :goto_1d

    .line 232
    :cond_37
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 233
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    goto :goto_4c

    :catchall_41
    move-exception v1

    .line 232
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 233
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    throw v1

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTargetFile()Ljava/io/File;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    if-nez v0, :cond_19

    .line 148
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFileByParsingURL()Ljava/io/File;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    :goto_17
    iput-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    .line 150
    :cond_19
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTargetFileByParsingURL()Ljava/io/File;
    .registers 7

    .line 162
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Target file is not a directory, cannot proceed"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    const-string v3, "RequestURI is null, cannot proceed"

    invoke-static {v0, v3}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ad

    iget-boolean v3, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->renameIfExists:Z

    if-eqz v3, :cond_ad

    .line 169
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, " (%d)"

    if-nez v1, :cond_63

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    .line 172
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_8e
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_aa

    return-object v1

    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_ad
    return-object v1
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 122
    :goto_5
    const-string v1, "Tried creating temporary file without having Context"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 124
    :try_start_a
    const-string v0, "temp_"

    const-string v1, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    .line 126
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "FileAsyncHttpRH"

    const-string v2, "Cannot create temporary file"

    invoke-interface {v0, v1, v2, p1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method public final onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .line 187
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V
.end method

.method public final onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 4

    .line 203
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/io/File;)V

    return-void
.end method
