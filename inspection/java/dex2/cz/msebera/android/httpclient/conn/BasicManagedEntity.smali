.class public Lcz/msebera/android/httpclient/conn/BasicManagedEntity;
.super Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .registers 4

    .line 74
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 75
    const-string p1, "Connection"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 77
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    return-void
.end method

.method private ensureConsumed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-nez v0, :cond_5

    return-void

    .line 96
    :cond_5
    :try_start_5
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_14

    .line 98
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_17

    .line 101
    :cond_14
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    .line 104
    :goto_17
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    return-void

    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 131
    :try_start_5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 133
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    return-void

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    throw v0

    :cond_f
    return-void
.end method

.method public consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_14

    .line 141
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_11

    .line 144
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 145
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V

    goto :goto_14

    .line 147
    :cond_11
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_19

    .line 151
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_19
    move-exception p1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/conn/EofSensorInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->wrappedEntity:Lcz/msebera/android/httpclient/HttpEntity;

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
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method

.method protected releaseManagedConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 201
    :try_start_5
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 203
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    return-void

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    throw v0

    :cond_f
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz p1, :cond_7

    .line 183
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V

    :cond_7
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

    .line 158
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    if-eqz v0, :cond_1d

    .line 159
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v1, :cond_1a

    .line 160
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->isOpen()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_22

    .line 164
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 165
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_14
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_22

    goto :goto_1d

    :catch_15
    move-exception p1

    if-nez v0, :cond_19

    goto :goto_1d

    .line 168
    :cond_19
    :try_start_19
    throw p1

    .line 172
    :cond_1a
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->unmarkReusable()V
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_22

    .line 176
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_22
    move-exception p1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 120
    invoke-direct {p0}, Lcz/msebera/android/httpclient/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method
