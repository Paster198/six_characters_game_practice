.class public abstract Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
.super Ljava/lang/Object;
.source "AbstractPoolEntry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected final connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

.field protected volatile route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

.field protected volatile state:Ljava/lang/Object;

.field protected volatile tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;


# direct methods
.method protected constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "Connection operator"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 94
    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->createConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    .line 95
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/Object;
    .registers 2

    .line 105
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public layerProtocol(Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v0

    const-string v1, "Protocol layering without a tunnel not supported"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isLayered()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Multiple protocol layering not supported"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v1, v2, v0, p1, p2}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->updateSecureConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 246
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layerProtocol(Z)V

    return-void
.end method

.method public open(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-string v0, "Route"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-eqz v0, :cond_1b

    .line 133
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection already open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 141
    :cond_1b
    new-instance v0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 142
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getProxyHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    if-eqz v0, :cond_2e

    move-object v3, v0

    goto :goto_32

    .line 146
    :cond_2e
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v3

    .line 147
    :goto_32
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    .line 145
    invoke-interface/range {v1 .. v6}, Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;->openConnection(Lcz/msebera/android/httpclient/conn/OperatedClientConnection;Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 150
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-eqz p1, :cond_55

    if-nez v0, :cond_4b

    .line 159
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectTarget(Z)V

    return-void

    .line 161
    :cond_4b
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    return-void

    .line 155
    :cond_55
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "Request aborted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->state:Ljava/lang/Object;

    return-void
.end method

.method protected shutdownEntry()V
    .registers 2

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 258
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->state:Ljava/lang/Object;

    return-void
.end method

.method public tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const-string v0, "Next proxy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    const-string v0, "Parameters"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 215
    iget-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {p3, p1, p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V

    return-void
.end method

.method public tunnelTarget(ZLcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Connection is already tunnelled"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p1, p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/params/HttpParams;)V

    .line 187
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelTarget(Z)V

    return-void
.end method
