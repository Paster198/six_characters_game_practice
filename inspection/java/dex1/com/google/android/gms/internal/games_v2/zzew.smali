.class final synthetic Lcom/google/android/gms/internal/games_v2/zzew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzey;

.field private final synthetic zzb:Lcom/google/android/gms/common/api/internal/TaskApiCall;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzey;Lcom/google/android/gms/common/api/internal/TaskApiCall;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzew;->zza:Lcom/google/android/gms/internal/games_v2/zzey;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzew;->zzb:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    return-void
.end method


# virtual methods
.method public final synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzew;->zza:Lcom/google/android/gms/internal/games_v2/zzey;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzew;->zzb:Lcom/google/android/gms/common/api/internal/TaskApiCall;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzey;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
