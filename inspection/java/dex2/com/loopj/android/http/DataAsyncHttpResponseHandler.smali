.class public abstract Lcom/loopj/android/http/DataAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpRH"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method public static copyOfRange([BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-gt p1, p2, :cond_1a

    .line 60
    array-length v0, p0

    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 65
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    new-array p2, p2, [B

    const/4 v1, 0x0

    .line 67
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 62
    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 58
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_66

    .line 118
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 120
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long p1, v1, v3

    if-gtz p1, :cond_5e

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1b

    const-wide/16 v1, 0x1000

    .line 128
    :cond_1b
    :try_start_1b
    new-instance p1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    long-to-int v3, v1

    invoke-direct {p1, v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V
    :try_end_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_21} :catch_53

    const/16 v3, 0x1000

    .line 130
    :try_start_23
    new-array v3, v3, [B

    .line 133
    :goto_25
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_46

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_46

    const/4 v5, 0x0

    .line 134
    invoke-virtual {p1, v3, v5, v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 135
    invoke-static {v3, v5, v4}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    int-to-long v4, v5

    .line 136
    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_4e

    goto :goto_25

    .line 139
    :cond_46
    :try_start_46
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 141
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_4e
    move-exception p1

    .line 139
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw p1
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_53} :catch_53

    .line 143
    :catch_53
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File too large to fit into available memory"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    const/4 p1, 0x0

    return-object p1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 87
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    goto :goto_2a

    .line 92
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 93
    const-string v0, "DataAsyncHttpRH"

    if-eqz p1, :cond_2b

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2b

    const/4 v1, 0x0

    .line 95
    :try_start_18
    aget-object p1, p1, v1

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception p1

    .line 97
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "custom onProgressData contains an error"

    invoke-interface {v1, v0, v2, p1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    return-void

    .line 100
    :cond_2b
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-interface {p1, v0, v1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressData([B)V
    .registers 4

    .line 77
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v0, "DataAsyncHttpRH"

    const-string v1, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-interface {p1, v0, v1}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .registers 3

    const/4 v0, 0x7

    .line 81
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
