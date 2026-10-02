.class public Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;
.super Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final created:J

.field private expiry:J

.field private updated:J

.field private final validUntil:J


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 9

    const-wide/16 v3, -0x1

    .line 72
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;JLjava/util/concurrent/TimeUnit;)V
    .registers 8

    .line 87
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 88
    const-string p1, "HTTP route"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->created:J

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1c

    .line 91
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    goto :goto_23

    :cond_1c
    const-wide p1, 0x7fffffffffffffffL

    .line 93
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    .line 95
    :goto_23
    iget-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;",
            "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;-><init>(Lcz/msebera/android/httpclient/conn/ClientConnectionOperator;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V

    .line 58
    const-string p1, "HTTP route"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->created:J

    const-wide p1, 0x7fffffffffffffffL

    .line 60
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    .line 61
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    return-void
.end method


# virtual methods
.method protected final getConnection()Lcz/msebera/android/httpclient/conn/OperatedClientConnection;
    .registers 2

    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->connection:Lcz/msebera/android/httpclient/conn/OperatedClientConnection;

    return-object v0
.end method

.method public getCreated()J
    .registers 3

    .line 119
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->created:J

    return-wide v0
.end method

.method public getExpiry()J
    .registers 3

    .line 133
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    return-wide v0
.end method

.method protected final getPlannedRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->route:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-object v0
.end method

.method public getUpdated()J
    .registers 3

    .line 126
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->updated:J

    return-wide v0
.end method

.method public getValidUntil()J
    .registers 3

    .line 137
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    return-wide v0
.end method

.method protected final getWeakRef()Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntryRef;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isExpired(J)Z
    .registers 5

    .line 158
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method protected shutdownEntry()V
    .registers 1

    .line 112
    invoke-super {p0}, Lcz/msebera/android/httpclient/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    return-void
.end method

.method public updateExpiry(JLjava/util/concurrent/TimeUnit;)V
    .registers 8

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->updated:J

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_12

    .line 147
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    goto :goto_17

    :cond_12
    const-wide v0, 0x7fffffffffffffffL

    .line 151
    :goto_17
    iget-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->validUntil:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/conn/tsccm/BasicPoolEntry;->expiry:J

    return-void
.end method
