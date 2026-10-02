.class final Lcom/google/android/gms/internal/play_billing/zzde;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Lcom/google/android/gms/internal/play_billing/zzdk;

.field final zzb:Lcom/google/android/gms/internal/play_billing/zzdd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzdd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zza:Lcom/google/android/gms/internal/play_billing/zzdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zza:Lcom/google/android/gms/internal/play_billing/zzdk;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzdq;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzdq;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdr;->zza(Lcom/google/android/gms/internal/play_billing/zzdq;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_16

    .line 7
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_16
    :goto_16
    :try_start_16
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_1a} :catch_55
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4e

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    .line 4
    :goto_1d
    :try_start_1d
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_21} :catch_3c
    .catchall {:try_start_1d .. :try_end_21} :catchall_30

    if-eqz v1, :cond_2a

    .line 5
    :try_start_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_2a} :catch_55
    .catchall {:try_start_23 .. :try_end_2a} :catchall_4e

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_30
    move-exception v0

    if-nez v1, :cond_34

    goto :goto_3b

    .line 5
    :cond_34
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 6
    :goto_3b
    throw v0

    :catch_3c
    const/4 v1, 0x1

    goto :goto_1d

    .line 10
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Future was expected to be done: %s"

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_4e} :catch_55
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Throwable;)V

    return-void

    :catch_55
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzdd;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzbj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzde;->zzb:Lcom/google/android/gms/internal/play_billing/zzdd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
