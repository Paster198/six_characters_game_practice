.class public Lcz/msebera/android/httpclient/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;


# instance fields
.field private final eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/conn/EofSensorWatcher;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 84
    const-string v0, "Wrapped stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    .line 87
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    return-void
.end method


# virtual methods
.method public abortConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    .line 288
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    return-void
.end method

.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 159
    :try_start_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    .line 162
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    .line 163
    throw v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected checkAbort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    .line 257
    :try_start_5
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v2, :cond_e

    .line 258
    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_16

    .line 261
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    .line 264
    :cond_16
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-void

    :catchall_19
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_1d
    return-void
.end method

.method protected checkClose()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    .line 227
    :try_start_5
    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v2, :cond_e

    .line 228
    invoke-interface {v2, v0}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_16

    .line 231
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    .line 234
    :cond_16
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-void

    :catchall_19
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_1d
    return-void
.end method

.method protected checkEOF(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1f

    if-gez p1, :cond_1f

    const/4 p1, 0x0

    .line 199
    :try_start_7
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->eofWatcher:Lcz/msebera/android/httpclient/conn/EofSensorWatcher;

    if-eqz v1, :cond_10

    .line 200
    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_18

    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    .line 206
    :cond_18
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-void

    :catchall_1b
    move-exception v0

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_1f
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    .line 174
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkClose()V

    return-void
.end method

.method getWrappedStream()Ljava/io/InputStream;
    .registers 2

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected isReadAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    if-nez v0, :cond_c

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isSelfClosed()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->selfClosed:Z

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 120
    :try_start_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    .line 123
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    .line 124
    throw v0

    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 137
    :try_start_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 138
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_10

    return p1

    :catch_10
    move-exception p1

    .line 140
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->checkAbort()V

    .line 141
    throw p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public releaseConnection()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;->close()V

    return-void
.end method
