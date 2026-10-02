.class Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;
.super Ljava/lang/Object;
.source "ConnectionHolder.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ConnectionReleaseTrigger;
.implements Lcz/msebera/android/httpclient/concurrent/Cancellable;
.implements Ljava/io/Closeable;


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

.field private final manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private volatile released:Z

.field private volatile reusable:Z

.field private volatile state:Ljava/lang/Object;

.field private volatile tunit:Ljava/util/concurrent/TimeUnit;

.field private volatile validDuration:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 66
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    .line 67
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    return-void
.end method


# virtual methods
.method public abortConnection()V
    .registers 10

    .line 121
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    monitor-enter v1

    .line 122
    :try_start_3
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    if-eqz v0, :cond_9

    .line 123
    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_54

    .line 127
    :try_start_c
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->shutdown()V

    .line 128
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Connection discarded"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_27
    .catchall {:try_start_c .. :try_end_18} :catchall_25

    .line 134
    :try_start_18
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_54

    goto :goto_45

    :catchall_25
    move-exception v0

    goto :goto_47

    :catch_27
    move-exception v0

    .line 130
    :try_start_28
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 131
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_25

    .line 134
    :cond_39
    :try_start_39
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 137
    :goto_45
    monitor-exit v1

    return-void

    .line 134
    :goto_47
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v0

    :catchall_54
    move-exception v0

    .line 137
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_39 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public cancel()Z
    .registers 4

    .line 142
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    .line 143
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Cancelling request execution"

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->abortConnection()V

    return-void
.end method

.method public isReleased()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    return v0
.end method

.method public isReusable()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    return v0
.end method

.method public markNonReusable()V
    .registers 2

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    return-void
.end method

.method public markReusable()V
    .registers 2

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    return-void
.end method

.method public releaseConnection()V
    .registers 10

    .line 95
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    monitor-enter v1

    .line 96
    :try_start_3
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    if-eqz v0, :cond_9

    .line 97
    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->released:Z

    .line 100
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->reusable:Z

    if-eqz v0, :cond_1e

    .line 101
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->state:Ljava/lang/Object;

    iget-wide v5, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->validDuration:J

    iget-object v7, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->tunit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v7}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_66

    goto :goto_57

    .line 105
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    .line 106
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Connection discarded"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_39
    .catchall {:try_start_1e .. :try_end_2a} :catchall_37

    .line 112
    :try_start_2a
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_66

    goto :goto_57

    :catchall_37
    move-exception v0

    goto :goto_59

    :catch_39
    move-exception v0

    .line 108
    :try_start_3a
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 109
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_37

    .line 112
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 116
    :goto_57
    monitor-exit v1

    return-void

    .line 112
    :goto_59
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->manager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    throw v0

    :catchall_66
    move-exception v0

    .line 116
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_66

    throw v0
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->state:Ljava/lang/Object;

    return-void
.end method

.method public setValidFor(JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->managedConn:Lcz/msebera/android/httpclient/HttpClientConnection;

    monitor-enter v0

    .line 88
    :try_start_3
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->validDuration:J

    .line 89
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/execchain/ConnectionHolder;->tunit:Ljava/util/concurrent/TimeUnit;

    .line 90
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method
