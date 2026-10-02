.class final Lcom/google/android/play/core/review/internal/zzm;
.super Lcom/google/android/play/core/review/internal/zzj;
.source "com.google.android.play:review@@2.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/review/internal/zzj;

.field final synthetic zzb:Lcom/google/android/play/core/review/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/review/internal/zzj;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzm;->zzb:Lcom/google/android/play/core/review/internal/zzt;

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzm;->zza:Lcom/google/android/play/core/review/internal/zzj;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/review/internal/zzj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzm;->zzb:Lcom/google/android/play/core/review/internal/zzt;

    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzm;->zza:Lcom/google/android/play/core/review/internal/zzj;

    invoke-static {v0, v1}, Lcom/google/android/play/core/review/internal/zzt;->zzm(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/play/core/review/internal/zzj;)V

    return-void
.end method
