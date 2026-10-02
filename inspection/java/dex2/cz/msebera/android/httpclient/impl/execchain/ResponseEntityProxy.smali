.class Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "ResponseEntityProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# instance fields
.field private final connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 61
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    return-void
.end method

.method private cleanup()V
    .registers 2

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    :cond_7
    return-void
.end method

.method public static enchance(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V
    .registers 4

    .line 53
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 54
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    .line 55
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;

    invoke-direct {v1, v0, p1}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;-><init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;)V

    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 116
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 p1, 0x0

    return p1

    :catchall_b
    move-exception p1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    if-eqz v0, :cond_18

    .line 73
    :try_start_4
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->releaseConnection()V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 77
    :cond_f
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    return-void

    :catchall_13
    move-exception v0

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw v0

    :cond_18
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->connHolder:Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->isReleased()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_1d

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 128
    :goto_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 129
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    goto :goto_18

    :catch_15
    move-exception p1

    if-nez v0, :cond_1c

    .line 136
    :goto_18
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    return v1

    .line 132
    :cond_1c
    :try_start_1c
    throw p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p1

    .line 136
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResponseEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->releaseConnection()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 104
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    return-void

    :catchall_c
    move-exception p1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/execchain/ResponseEntityProxy;->cleanup()V

    throw p1
.end method
