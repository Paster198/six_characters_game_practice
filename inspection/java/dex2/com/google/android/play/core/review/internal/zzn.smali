.class final Lcom/google/android/play/core/review/internal/zzn;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "com.google.android.play:review@@2.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/review/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/internal/zzt;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzd(Lcom/google/android/play/core/review/internal/zzt;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzf(Lcom/google/android/play/core/review/internal/zzt;)Lcom/google/android/play/core/review/internal/zzi;

    move-result-object v0

    const-string v1, "Unbind from service."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zza(Lcom/google/android/play/core/review/internal/zzt;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzb(Lcom/google/android/play/core/review/internal/zzt;)Landroid/content/ServiceConnection;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/play/core/review/internal/zzt;->zzj(Lcom/google/android/play/core/review/internal/zzt;Z)V

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/review/internal/zzt;->zzk(Lcom/google/android/play/core/review/internal/zzt;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/play/core/review/internal/zzt;->zzi(Lcom/google/android/play/core/review/internal/zzt;Landroid/content/ServiceConnection;)V

    :cond_31
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzn;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 6
    invoke-static {v0}, Lcom/google/android/play/core/review/internal/zzt;->zzl(Lcom/google/android/play/core/review/internal/zzt;)V

    return-void
.end method
