.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field private final synthetic zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zzc:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/internal/games_v2/zzfo;->zzd:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzah;->zzT(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method
