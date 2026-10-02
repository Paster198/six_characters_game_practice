.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final synthetic zzb:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfb;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzfb;->zzb:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfb;->zza:Lcom/google/android/gms/games/snapshot/Snapshot;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzfb;->zzb:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/games/internal/zzah;->zzR(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    return-void
.end method
