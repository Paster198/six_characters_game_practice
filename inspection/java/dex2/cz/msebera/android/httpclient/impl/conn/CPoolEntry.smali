.class Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;
.super Lcz/msebera/android/httpclient/pool/PoolEntry;
.source "CPoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/pool/PoolEntry<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private volatile routeComplete:Z


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Ljava/lang/String;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 15

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    .line 55
    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 56
    iput-object p1, v0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->closeConnection()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 97
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public closeConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    .line 69
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V

    return-void
.end method

.method public isClosed()Z
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    .line 89
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExpired(J)Z
    .registers 7

    .line 79
    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/pool/PoolEntry;->isExpired(J)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 80
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 81
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expired @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getExpiry()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_35
    return p1
.end method

.method public isRouteComplete()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->routeComplete:Z

    return v0
.end method

.method public markRouteComplete()V
    .registers 2

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->routeComplete:Z

    return-void
.end method

.method public shutdownConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpClientConnection;

    .line 74
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->shutdown()V

    return-void
.end method
