.class public final Lcom/google/android/gms/internal/play_billing/zzdf;
.super Lcom/google/android/gms/internal/play_billing/zzdh;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzdk;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzdi;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/play_billing/zzdk;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzdk;
    .registers 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/zzdk;->isDone()Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const-wide/16 p1, 0x6f54

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzs(Lcom/google/android/gms/internal/play_billing/zzdk;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzdd;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzde;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzde;-><init>(Lcom/google/android/gms/internal/play_billing/zzdk;Lcom/google/android/gms/internal/play_billing/zzdd;)V

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzdk;->zzb(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
