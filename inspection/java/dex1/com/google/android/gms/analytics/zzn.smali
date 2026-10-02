.class final Lcom/google/android/gms/analytics/zzn;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/analytics/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/zzr;)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzn;->zza:Lcom/google/android/gms/analytics/zzr;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/analytics/zzp;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/google/android/gms/analytics/zzp;-><init>(Lcom/google/android/gms/analytics/zzo;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zzn;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zzn;->allowCoreThreadTimeOut(Z)V

    return-void
.end method


# virtual methods
.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/analytics/zzm;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/analytics/zzm;-><init>(Lcom/google/android/gms/analytics/zzn;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method
