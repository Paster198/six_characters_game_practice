.class final Lcom/google/android/gms/internal/play_billing/zzt;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdk;


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzp;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzs;-><init>(Lcom/google/android/gms/internal/play_billing/zzt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzp;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzo;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_16

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzp;->zza()V

    const/4 p1, 0x1

    :cond_16
    return p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzo;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/zzo;->zzc:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/zze;

    return v0
.end method

.method public final isDone()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->isDone()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzo;->zzd(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzo;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final zzc(Ljava/lang/Throwable;)Z
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzg;

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzg;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzo;->zzb:Lcom/google/android/gms/internal/play_billing/zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzt;->zzb:Lcom/google/android/gms/internal/play_billing/zzo;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzd;->zzd(Lcom/google/android/gms/internal/play_billing/zzo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzo;->zzc(Lcom/google/android/gms/internal/play_billing/zzo;)V

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method
