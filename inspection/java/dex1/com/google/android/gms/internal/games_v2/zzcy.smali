.class final synthetic Lcom/google/android/gms/internal/games_v2/zzcy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzau;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Z


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcy;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/games_v2/zzcy;->zzb:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcz;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzcy;->zza:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/games_v2/zzcy;->zzb:Z

    invoke-direct {v1, v2, v3, p2}, Lcom/google/android/gms/internal/games_v2/zzcz;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p2

    const/16 v0, 0x1a5c

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
