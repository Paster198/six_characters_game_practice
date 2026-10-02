.class final Lcom/google/android/gms/games/internal/zzv;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzv;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzs(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzv;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    sget p3, Lcom/google/android/gms/games/internal/zzah;->zze:I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzv;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/gamessignin/AuthResponse;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/games/gamessignin/AuthScope;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgm;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/games/gamessignin/AuthResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
