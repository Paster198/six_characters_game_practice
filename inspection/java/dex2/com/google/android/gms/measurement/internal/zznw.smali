.class final Lcom/google/android/gms/measurement/internal/zznw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zznx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznx;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznw;->zza:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznw;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznw;->zzb:Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznx;->zza:Lcom/google/android/gms/measurement/internal/zzny;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzv(Lcom/google/android/gms/measurement/internal/zzny;Lcom/google/android/gms/measurement/internal/zzgl;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbo:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznw;->zza:Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    const/16 v3, 0x1e61

    if-ne v2, v3, :cond_49

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzm(Lcom/google/android/gms/measurement/internal/zzny;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    .line 7
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzu(Lcom/google/android/gms/measurement/internal/zzny;Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_2e
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzm(Lcom/google/android/gms/measurement/internal/zzny;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Lcom/google/android/gms/measurement/internal/zznw;)V

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzY:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v0, v2, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 6
    :cond_49
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzw(Lcom/google/android/gms/measurement/internal/zzny;)V

    return-void
.end method
