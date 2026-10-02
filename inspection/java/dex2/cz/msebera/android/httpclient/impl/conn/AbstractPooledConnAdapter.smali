.class public abstract Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V
    .registers 4

    .line 66
    iget-object v0, p2, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionManager;Lcz/msebera/android/httpclient/conn/OperatedClientConnection;)V

    .line 67
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    if-eqz v0, :cond_5

    return-void

    .line 106
    :cond_5
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method protected assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V
    .registers 3

    .line 95
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    return-void

    .line 96
    :cond_9
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 161
    :cond_9
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 163
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->close()V

    :cond_12
    return-void
.end method

.method protected declared-synchronized detach()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    :try_start_2
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    .line 117
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractClientConnAdapter;->detach()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 118
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    return-object v0
.end method

.method public getRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 123
    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-nez v1, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .registers 2

    .line 180
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 181
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 182
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 151
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 152
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 131
    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 188
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 170
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 173
    :cond_9
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 175
    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->shutdown()V

    :cond_12
    return-void
.end method

.method public tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 145
    invoke-virtual {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method

.method public tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPooledConnAdapter;->assertValid(Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;)V

    .line 138
    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V

    return-void
.end method
