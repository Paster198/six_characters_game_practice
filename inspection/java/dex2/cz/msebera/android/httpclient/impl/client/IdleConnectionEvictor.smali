.class public final Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;
.super Ljava/lang/Object;
.source "IdleConnectionEvictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$DefaultThreadFactory;
    }
.end annotation


# instance fields
.field private final connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

.field private volatile exception:Ljava/lang/Exception;

.field private final maxIdleTimeMs:J

.field private final sleepTimeMs:J

.field private final thread:Ljava/lang/Thread;

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;)V
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_8

    move-wide v5, p2

    goto :goto_b

    :cond_8
    const-wide/16 v0, 0x5

    move-wide v5, v0

    :goto_b
    if-eqz p4, :cond_f

    move-object v7, p4

    goto :goto_12

    .line 90
    :cond_f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v7, v0

    :goto_12
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v8, p2

    move-object v10, p4

    invoke-direct/range {v2 .. v10}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .registers 17

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    .line 84
    invoke-direct/range {v0 .. v8}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;-><init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .registers 10

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->connectionManager:Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    if-eqz p2, :cond_10

    goto :goto_15

    .line 58
    :cond_10
    new-instance p2, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$DefaultThreadFactory;

    invoke-direct {p2}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$DefaultThreadFactory;-><init>()V

    :goto_15
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz p5, :cond_1d

    .line 59
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    :cond_1d
    iput-wide p3, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->sleepTimeMs:J

    if-eqz p8, :cond_25

    .line 60
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p6

    :cond_25
    iput-wide p6, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->maxIdleTimeMs:J

    .line 61
    new-instance p3, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;

    invoke-direct {p3, p0, p1}, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor$1;-><init>(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->sleepTimeMs:J

    return-wide v0
.end method

.method static synthetic access$100(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->maxIdleTimeMs:J

    return-wide v0
.end method

.method static synthetic access$202(Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2

    .line 42
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->exception:Ljava/lang/Exception;

    return-object p1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    if-eqz p3, :cond_5

    goto :goto_7

    :cond_5
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_7
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public start()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/IdleConnectionEvictor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
