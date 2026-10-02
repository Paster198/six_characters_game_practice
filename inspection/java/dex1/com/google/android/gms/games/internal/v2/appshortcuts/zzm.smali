.class final Lcom/google/android/gms/games/internal/v2/appshortcuts/zzm;
.super Lcom/google/android/gms/games/internal/v2/appshortcuts/zzn;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/v2/appshortcuts/zzq;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/content/Intent;)V
    .registers 3

    if-nez p1, :cond_d

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzn;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/appshortcuts/zzm;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
