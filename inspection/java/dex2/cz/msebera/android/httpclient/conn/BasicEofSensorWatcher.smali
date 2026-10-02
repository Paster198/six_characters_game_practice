.class public Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected final managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;Z)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "Connection"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    .line 63
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    return-void
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_c

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 74
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_13

    .line 77
    :cond_c
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_13
    move-exception p1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    throw p1
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->abortConnection()V

    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_c

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 90
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->markReusable()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_13

    .line 93
    :cond_c
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_13
    move-exception p1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/BasicEofSensorWatcher;->managedConn:Lcz/msebera/android/httpclient/conn/ManagedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/ManagedClientConnection;->releaseConnection()V

    throw p1
.end method
