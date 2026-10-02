.class Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile duration:J

.field private final manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

.field private final operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field private volatile poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

.field private volatile reusable:Z


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const-string v0, "Connection operator"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "HTTP pool entry"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    .line 80
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 81
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    const-wide p1, 0x7fffffffffffffffL

    .line 83
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void
.end method

.method private ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .line 113
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_b

    .line 117
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v0

    .line 115
    :cond_b
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method private ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .registers 2

    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_5

    return-object v0

    .line 123
    :cond_5
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method private getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_6
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v0
.end method


# virtual methods
.method public abortConnection()V
    .registers 5

    .line 446
    monitor-enter p0

    .line 447
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_7

    .line 448
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 451
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_23

    .line 453
    :try_start_12
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->shutdown()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_23

    .line 456
    :catch_15
    :try_start_15
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 458
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public bind(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_14

    .line 131
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 132
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    .line 133
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V

    :cond_14
    return-void
.end method

.method detach()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .registers 3

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 257
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 258
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_f

    .line 259
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 213
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 218
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
    .registers 2

    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;
    .registers 2

    .line 175
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;
    .registers 2

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 223
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .line 228
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .line 282
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getEffectiveRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 3

    .line 247
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 250
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_13

    .line 251
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .line 242
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 2

    .line 170
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getState()Ljava/lang/Object;
    .registers 2

    .line 406
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMarkedReusable()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .line 147
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 149
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public isResponseAvailable(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 186
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isSecure()Z
    .registers 2

    .line 233
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .registers 2

    .line 156
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 158
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isStale()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    monitor-enter p0

    .line 383
    :try_start_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_61

    .line 386
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 387
    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    const-string v2, "Connection not open"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 389
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    const-string v2, "Protocol layering without a tunnel not supported"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isLayered()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Multiple protocol layering not supported"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 393
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_67

    .line 394
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    invoke-interface {v2, v1, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 396
    monitor-enter p0

    .line 397
    :try_start_45
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz p1, :cond_58

    .line 400
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object p1

    .line 401
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 402
    monitor-exit p0

    return-void

    .line 398
    :cond_58
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_5e
    move-exception p1

    .line 402
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_5e

    throw p1

    .line 384
    :cond_61
    :try_start_61
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_67
    move-exception p1

    .line 393
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public markReusable()V
    .registers 2

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method

.method public open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    monitor-enter p0

    .line 294
    :try_start_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_6e

    .line 297
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 298
    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection already open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 301
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_74

    .line 303
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->operator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    if-eqz v0, :cond_39

    move-object v3, v0

    goto :goto_3d

    .line 306
    :cond_39
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    .line 307
    :goto_3d
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    .line 304
    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 310
    monitor-enter p0

    .line 311
    :try_start_47
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz p1, :cond_64

    .line 314
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object p1

    if-nez v0, :cond_5b

    .line 316
    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_62

    .line 318
    :cond_5b
    invoke-interface {v2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 320
    :goto_62
    monitor-exit p0

    return-void

    .line 312
    :cond_64
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_6a
    move-exception v0

    move-object p1, v0

    .line 320
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_47 .. :try_end_6d} :catchall_6a

    throw p1

    .line 295
    :cond_6e
    :try_start_6e
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_74
    move-exception v0

    move-object p1, v0

    .line 301
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_74

    throw p1
.end method

.method public receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 192
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection()V
    .registers 5

    .line 436
    monitor-enter p0

    .line 437
    :try_start_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_7

    .line 438
    monitor-exit p0

    return-void

    .line 440
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->manager:Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lcz/msebera/android/httpclient/conn/ClientConnectionManager;->releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    .line 442
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 266
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 267
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_f

    .line 268
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 209
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 275
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 276
    instance-of v1, v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    if-eqz v1, :cond_d

    .line 277
    check-cast v0, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 429
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void

    :cond_d
    const-wide/16 p1, -0x1

    .line 431
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 3

    .line 165
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    .line 166
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 3

    .line 411
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_14

    .line 140
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 141
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->reset()V

    .line 142
    invoke-interface {v1}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->shutdown()V

    :cond_14
    return-void
.end method

.method public tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    const-string v0, "Next proxy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    monitor-enter p0

    .line 357
    :try_start_b
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_49

    .line 360
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 361
    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 364
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_4f

    const/4 v1, 0x0

    .line 366
    invoke-interface {v0, v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 368
    monitor-enter p0

    .line 369
    :try_start_31
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz p3, :cond_40

    .line 372
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {p3}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object p3

    .line 373
    invoke-virtual {p3, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    .line 374
    monitor-exit p0

    return-void

    .line 370
    :cond_40
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_46
    move-exception p1

    .line 374
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_46

    throw p1

    .line 358
    :cond_49
    :try_start_49
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_4f
    move-exception p1

    .line 364
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    monitor-enter p0

    .line 329
    :try_start_6
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_53

    .line 332
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object v0

    .line 333
    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    const-string v2, "Connection not open"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Connection is already tunnelled"

    invoke-static {v1, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 338
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_59

    const/4 v2, 0x0

    .line 340
    invoke-interface {v1, v2, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 342
    monitor-enter p0

    .line 343
    :try_start_3b
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    if-eqz p2, :cond_4a

    .line 346
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/HttpPoolEntry;->getTracker()Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    move-result-object p2

    .line 347
    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 348
    monitor-exit p0

    return-void

    .line 344
    :cond_4a
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_50
    move-exception p1

    .line 348
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_3b .. :try_end_52} :catchall_50

    throw p1

    .line 330
    :cond_53
    :try_start_53
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_59
    move-exception p1

    .line 338
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public unmarkReusable()V
    .registers 2

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method
