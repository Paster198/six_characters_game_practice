.class public abstract Lcom/google/android/play/core/review/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/review/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/core/review/internal/zzj;->zza()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/review/internal/zzj;->zzc(Ljava/lang/Exception;)V

    return-void
.end method

.method protected abstract zza()V
.end method

.method final zzb()Lcom/google/android/gms/tasks/TaskCompletionSource;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-object v0
.end method

.method public final zzc(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_7
    return-void
.end method
