.class public abstract Lcz/msebera/android/httpclient/pool/PoolEntry;
.super Ljava/lang/Object;
.source "PoolEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final conn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final created:J

.field private expiry:J

.field private final id:Ljava/lang/String;

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile state:Ljava/lang/Object;

.field private updated:J

.field private final validityDeadline:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TC;)V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    .line 104
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TC;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "Route"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v0, "Connection"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "Time unit"

    invoke-static {p6, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->id:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->route:Ljava/lang/Object;

    .line 86
    iput-object p3, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->conn:Ljava/lang/Object;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->created:J

    const-wide/16 v0, 0x0

    cmp-long p3, p4, v0

    if-lez p3, :cond_2c

    .line 89
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->validityDeadline:J

    goto :goto_33

    :cond_2c
    const-wide p1, 0x7fffffffffffffffL

    .line 91
    iput-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->validityDeadline:J

    .line 93
    :goto_33
    iget-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->validityDeadline:J

    iput-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->expiry:J

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public getConnection()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->conn:Ljava/lang/Object;

    return-object v0
.end method

.method public getCreated()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->created:J

    return-wide v0
.end method

.method public declared-synchronized getExpiry()J
    .registers 3

    monitor-enter p0

    .line 151
    :try_start_1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->expiry:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .registers 2

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getUpdated()J
    .registers 3

    monitor-enter p0

    .line 147
    :try_start_1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->updated:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getValidUnit()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->validityDeadline:J

    return-wide v0
.end method

.method public getValidityDeadline()J
    .registers 3

    .line 127
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->validityDeadline:J

    return-wide v0
.end method

.method public abstract isClosed()Z
.end method

.method public declared-synchronized isExpired(J)Z
    .registers 5

    monitor-enter p0

    .line 167
    :try_start_1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->expiry:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    cmp-long p1, p1, v0

    if-ltz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setState(Ljava/lang/Object;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->state:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "][route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "][state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateExpiry(JLjava/util/concurrent/TimeUnit;)V
    .registers 8

    monitor-enter p0

    .line 155
    :try_start_1
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->updated:J

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_18

    .line 159
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    goto :goto_1d

    :cond_18
    const-wide v0, 0x7fffffffffffffffL

    .line 163
    :goto_1d
    iget-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->validityDeadline:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/pool/PoolEntry;->expiry:J
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 164
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method
