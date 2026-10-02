.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzap;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field private final synthetic zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfo;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games_v2/zzfn;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/games_v2/zzfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a45

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
