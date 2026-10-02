.class public Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected final alwaysShutDown:Z

.field protected final connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

.field protected volatile connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected volatile lastReleaseTime:J

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field protected volatile managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected final schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

.field protected volatile uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 136
    invoke-static {}, Lcz/msebera/android/httpclient/impl/conn/SchemeRegistryFactory;->createDefault()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 122
    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    .line 124
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connOperator:Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;

    .line 125
    new-instance p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p1, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const-wide/16 v0, -0x1

    .line 127
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 129
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Manager is shut down"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    return-void
.end method

.method public closeExpiredConnections()V
    .registers 5

    .line 311
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_11

    const-wide/16 v0, 0x0

    .line 313
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_11
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    .line 318
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 321
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 323
    monitor-enter p0

    .line 324
    :try_start_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 327
    iget-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_36

    cmp-long p1, p1, v0

    if-gtz p1, :cond_34

    .line 329
    :try_start_26
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_36

    goto :goto_34

    :catch_2c
    move-exception p1

    .line 332
    :try_start_2d
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p3, "Problem closing idle connection."

    invoke-virtual {p2, p3, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 336
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_36

    throw p1
.end method

.method protected createConnectionOperator(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;
    .registers 3

    .line 166
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/conn/DefaultClientConnectionOperator;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->shutdown()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ManagedClientConnection;
    .registers 7

    .line 206
    const-string p2, "Route"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 209
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 210
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get connection for route "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 213
    :cond_24
    monitor-enter p0

    .line 215
    :try_start_25
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2d

    move p2, v0

    goto :goto_2e

    :cond_2d
    move p2, v1

    :goto_2e
    const-string v2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-static {p2, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 224
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object p2, p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/conn/OperatedClientConnection;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_58

    .line 225
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object p2, p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    if-eqz p2, :cond_53

    .line 227
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_81

    if-nez p2, :cond_51

    goto :goto_53

    :cond_51
    move p2, v1

    goto :goto_54

    :cond_53
    :goto_53
    move p2, v0

    :goto_54
    move v3, v1

    move v1, p2

    move p2, v3

    goto :goto_59

    :cond_58
    move p2, v0

    :goto_59
    if-eqz v1, :cond_6a

    .line 240
    :try_start_5b
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_61
    .catchall {:try_start_5b .. :try_end_60} :catchall_81

    goto :goto_6b

    :catch_61
    move-exception p2

    .line 242
    :try_start_62
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Problem shutting down connection."

    invoke-virtual {v1, v2, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6b

    :cond_6a
    move v0, p2

    :goto_6b
    if-eqz v0, :cond_74

    .line 247
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p2, p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 250
    :cond_74
    new-instance p2, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {p2, p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 252
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    monitor-exit p0

    return-object p1

    :catchall_81
    move-exception p1

    .line 253
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_62 .. :try_end_83} :catchall_81

    throw p1
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .registers 2

    .line 149
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->schemeRegistry:Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 13

    .line 259
    instance-of v0, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    const-string v1, "Connection class mismatch, connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 263
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 264
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Releasing connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 267
    :cond_26
    check-cast p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 268
    monitor-enter p1

    .line 269
    :try_start_29
    iget-object v0, p1, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;

    if-nez v0, :cond_2f

    .line 271
    monitor-exit p1

    return-void

    .line 273
    :cond_2f
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;

    move-result-object v0

    if-ne v0, p0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 274
    :goto_38
    const-string v1, "Connection not obtained from this manager"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_dd

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 277
    :try_start_45
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_67

    iget-boolean v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v5, :cond_55

    .line 278
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z

    move-result v5

    if-nez v5, :cond_67

    .line 280
    :cond_55
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 281
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Released connection open but not reusable."

    .line 282
    invoke-virtual {v5, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 288
    :cond_64
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_67} :catch_8a
    .catchall {:try_start_45 .. :try_end_67} :catchall_88

    .line 296
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 297
    monitor-enter p0
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_dd

    .line 298
    :try_start_6b
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_81

    .line 301
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_83

    .line 303
    :cond_81
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_83
    monitor-exit p0

    goto :goto_b7

    :catchall_85
    move-exception p2

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_6b .. :try_end_87} :catchall_85

    :try_start_87
    throw p2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_dd

    :catchall_88
    move-exception v5

    goto :goto_bc

    :catch_8a
    move-exception v5

    .line 291
    :try_start_8b
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 292
    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v7, "Exception shutting down released connection."

    invoke-virtual {v6, v7, v5}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9a
    .catchall {:try_start_8b .. :try_end_9a} :catchall_88

    .line 296
    :cond_9a
    :try_start_9a
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 297
    monitor-enter p0
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_dd

    .line 298
    :try_start_9e
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_b4

    .line 301
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_b6

    .line 303
    :cond_b4
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_b6
    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_9e .. :try_end_b7} :catchall_b9

    .line 307
    :goto_b7
    :try_start_b7
    monitor-exit p1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_dd

    return-void

    :catchall_b9
    move-exception p2

    .line 305
    :try_start_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw p2

    .line 296
    :goto_bc
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 297
    monitor-enter p0
    :try_end_c0
    .catchall {:try_start_bb .. :try_end_c0} :catchall_dd

    .line 298
    :try_start_c0
    iput-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, p2, v2

    if-lez v2, :cond_d6

    .line 301
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_d8

    .line 303
    :cond_d6
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 305
    :goto_d8
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_c0 .. :try_end_d9} :catchall_da

    :try_start_d9
    throw v5
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_dd

    :catchall_da
    move-exception p2

    :try_start_db
    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_da

    :try_start_dc
    throw p2

    :catchall_dd
    move-exception p2

    .line 307
    monitor-exit p1
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_dd

    throw p2
.end method

.method public final requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .registers 4

    .line 182
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$1;-><init>(Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .registers 4

    .line 357
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_5

    goto :goto_1a

    .line 361
    :cond_5
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 363
    monitor-enter p0

    .line 365
    :try_start_9
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_19

    :catchall_f
    move-exception v0

    goto :goto_1b

    :catch_11
    move-exception v0

    .line 368
    :try_start_12
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Problem while shutting down connection."

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 370
    :goto_19
    monitor-exit p0

    :goto_1a
    return-void

    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    throw v0
.end method

.method public shutdown()V
    .registers 5

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 341
    monitor-enter p0

    const/4 v0, 0x0

    .line 343
    :try_start_5
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_e

    .line 344
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_15
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .line 350
    :cond_e
    :try_start_e
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 351
    :goto_10
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_27

    goto :goto_20

    :catchall_13
    move-exception v1

    goto :goto_22

    :catch_15
    move-exception v1

    .line 348
    :try_start_16
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Problem while shutting down manager."

    invoke-virtual {v2, v3, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 350
    :try_start_1d
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    goto :goto_10

    .line 353
    :goto_20
    monitor-exit p0

    return-void

    .line 350
    :goto_22
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$PoolEntry;

    .line 351
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager;->managedConn:Lcz/msebera/android/httpclient/impl/conn/SingleClientConnManager$ConnAdapter;

    throw v1

    :catchall_27
    move-exception v0

    .line 353
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0
.end method
