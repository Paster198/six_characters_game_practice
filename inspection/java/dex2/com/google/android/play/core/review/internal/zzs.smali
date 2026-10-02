.class final Lcom/google/android/play/core/review/internal/zzs;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/review/internal/zzt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/play/core/review/internal/zzr;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzs;->zza:Lcom/google/android/play/core/review/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzs;->zza:Lcom/google/android/play/core/review/internal/zzt;

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzf(Lcom/google/android/play/core/review/internal/zzt;)Lcom/google/android/play/core/review/internal/zzi;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/review/internal/zzs;->zza:Lcom/google/android/play/core/review/internal/zzt;

    new-instance v0, Lcom/google/android/play/core/review/internal/zzp;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/review/internal/zzp;-><init>(Lcom/google/android/play/core/review/internal/zzs;Landroid/os/IBinder;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/review/internal/zzt;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzs;->zza:Lcom/google/android/play/core/review/internal/zzt;

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzf(Lcom/google/android/play/core/review/internal/zzt;)Lcom/google/android/play/core/review/internal/zzi;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/review/internal/zzs;->zza:Lcom/google/android/play/core/review/internal/zzt;

    new-instance v0, Lcom/google/android/play/core/review/internal/zzq;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/review/internal/zzq;-><init>(Lcom/google/android/play/core/review/internal/zzs;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/review/internal/zzt;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
