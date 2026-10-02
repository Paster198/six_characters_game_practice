.class final Lcom/google/android/gms/internal/play_billing/zzdm;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Lcom/google/android/gms/internal/play_billing/zzdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzdp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdm;->zza:Lcom/google/android/gms/internal/play_billing/zzdp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    const-string v0, "Timed out (timeout delayed by "

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdm;->zza:Lcom/google/android/gms/internal/play_billing/zzdp;

    if-nez v1, :cond_8

    goto/16 :goto_7e

    :cond_8
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzr(Lcom/google/android/gms/internal/play_billing/zzdp;)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v2

    if-eqz v2, :cond_7e

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzdm;->zza:Lcom/google/android/gms/internal/play_billing/zzdp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzdk;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzj(Lcom/google/android/gms/internal/play_billing/zzdk;)Z

    return-void

    :cond_1b
    const/4 v4, 0x1

    :try_start_1c
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzt(Lcom/google/android/gms/internal/play_billing/zzdp;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzdp;->zzu(Lcom/google/android/gms/internal/play_billing/zzdp;Ljava/util/concurrent/ScheduledFuture;)V

    const-string v6, "Timed out"
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_79

    if-eqz v5, :cond_4c

    :try_start_27
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v5, v7}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0xa

    cmp-long v5, v7, v9

    if-lez v5, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms after scheduled time)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_4c

    :catchall_4a
    move-exception v0

    goto :goto_70

    .line 6
    :cond_4c
    :goto_4c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_27 .. :try_end_64} :catchall_4a

    .line 7
    :try_start_64
    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzdn;

    invoke-direct {v5, v0, v3}, Lcom/google/android/gms/internal/play_billing/zzdn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzdo;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzi(Ljava/lang/Throwable;)Z
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_79

    .line 9
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->cancel(Z)Z

    return-void

    .line 7
    :goto_70
    :try_start_70
    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzdn;

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/play_billing/zzdn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzdo;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/play_billing/zzcu;->zzi(Ljava/lang/Throwable;)Z

    .line 8
    throw v0
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v0

    .line 9
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->cancel(Z)Z

    .line 10
    throw v0

    :cond_7e
    :goto_7e
    return-void
.end method
