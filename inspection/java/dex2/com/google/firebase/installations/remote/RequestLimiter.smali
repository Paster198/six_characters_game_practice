.class Lcom/google/firebase/installations/remote/RequestLimiter;
.super Ljava/lang/Object;
.source "RequestLimiter.java"


# static fields
.field private static final MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS:J

.field private static final MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS:J


# instance fields
.field private attemptCount:I

.field private nextRequestTime:J

.field private final utils:Lcom/google/firebase/installations/Utils;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS:J

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS:J

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/firebase/installations/Utils;->getInstance()Lcom/google/firebase/installations/Utils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/installations/Utils;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    return-void
.end method

.method private declared-synchronized getBackoffDuration(I)J
    .registers 6

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRetryableError(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 69
    sget-wide v0, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    monitor-exit p0

    return-wide v0

    .line 73
    :cond_b
    :try_start_b
    iget p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 75
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {p1}, Lcom/google/firebase/installations/Utils;->getRandomDelayForSyncPrevention()J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    sget-wide v2, Lcom/google/firebase/installations/remote/RequestLimiter;->MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS:J

    long-to-double v2, v2

    .line 74
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_26

    double-to-long v0, v0

    .line 73
    monitor-exit p0

    return-wide v0

    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method private static isRetryableError(I)Z
    .registers 2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_f

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_d

    const/16 v0, 0x258

    if-ge p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static isSuccessfulOrRequiresNewFidCreation(I)Z
    .registers 2

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_13

    :cond_8
    const/16 v0, 0x191

    if-eq p0, v0, :cond_13

    const/16 v0, 0x194

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private declared-synchronized resetBackoffStrategy()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :try_start_2
    iput v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 64
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method


# virtual methods
.method public declared-synchronized isRequestAllowed()Z
    .registers 5

    monitor-enter p0

    .line 99
    :try_start_1
    iget v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {v0}, Lcom/google/firebase/installations/Utils;->currentTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->nextRequestTime:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized setNextRequestTime(I)V
    .registers 6

    monitor-enter p0

    .line 53
    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/installations/remote/RequestLimiter;->isSuccessfulOrRequiresNewFidCreation(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/RequestLimiter;->resetBackoffStrategy()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    .line 55
    monitor-exit p0

    return-void

    .line 57
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->attemptCount:I

    .line 58
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/remote/RequestLimiter;->getBackoffDuration(I)J

    move-result-wide v0

    .line 59
    iget-object p1, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->utils:Lcom/google/firebase/installations/Utils;

    invoke-virtual {p1}, Lcom/google/firebase/installations/Utils;->currentTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/installations/remote/RequestLimiter;->nextRequestTime:J
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    .line 60
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method
