.class final Lcom/google/android/gms/games/internal/zzag;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzm(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    .line 2
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_9
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_27

    .line 4
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v4, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 5
    check-cast v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p2}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p1, v4, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_5f

    goto :goto_28

    :cond_27
    move-object p1, v2

    .line 7
    :goto_28
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    if-nez v0, :cond_38

    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;-><init>(Ljava/lang/Object;Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;)V

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_38
    const/16 p2, 0xfa2

    if-ne v0, p2, :cond_59

    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_58

    .line 11
    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    new-instance v1, Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/games/zzj;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_58
    :goto_58
    move v0, p2

    .line 8
    :cond_59
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    :catchall_5f
    move-exception p1

    .line 2
    :try_start_60
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw p1
.end method

.method public final zzn(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt p1, v1, :cond_56

    if-eqz p2, :cond_56

    if-nez p5, :cond_12

    goto :goto_56

    .line 3
    :cond_12
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v1

    .line 5
    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-direct {v3, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 4
    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p1, v3, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    new-instance p3, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    .line 7
    invoke-direct {v3, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 6
    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v1, p4}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p3, v3, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_5f

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    iget-object p4, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    new-instance v1, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    .line 9
    invoke-direct {v3, p5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, p1, p2, p3, v3}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;-><init>(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;-><init>(Ljava/lang/Object;Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_56
    :goto_56
    :try_start_56
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzag;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5f

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V

    return-void

    :catchall_5f
    move-exception p1

    .line 1
    :try_start_60
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw p1
.end method
