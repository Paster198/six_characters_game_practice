.class Lcom/google/android/play/core/review/zzg;
.super Lcom/google/android/play/core/review/internal/zzg;
.source "com.google.android.play:review@@2.0.1"


# instance fields
.field final zza:Lcom/google/android/play/core/review/internal/zzi;

.field final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzc:Lcom/google/android/play/core/review/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzg;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/review/internal/zzi;

    iput-object p3, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    iget-object p1, p1, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/review/internal/zzt;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/review/internal/zzt;->zzr(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :cond_b
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/review/internal/zzi;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    const-string v1, "onGetLaunchReviewFlowInfo"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
