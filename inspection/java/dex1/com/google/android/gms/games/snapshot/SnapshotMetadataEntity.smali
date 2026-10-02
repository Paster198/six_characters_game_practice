.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Lcom/google/android/gms/games/GameEntity;

.field private final zzb:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;

.field private final zzh:J

.field private final zzi:J

.field private final zzj:F

.field private final zzk:Ljava/lang/String;

.field private final zzl:Z

.field private final zzm:J

.field private final zzn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFLjava/lang/String;ZJLjava/lang/String;)V
    .registers 18

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zza:Lcom/google/android/gms/games/GameEntity;

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzb:Lcom/google/android/gms/games/PlayerEntity;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzd:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zze:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzj:F

    iput-object p6, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzg:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzh:J

    iput-wide p10, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzi:J

    iput-object p13, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzk:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzl:Z

    move-wide p1, p15

    iput-wide p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzm:J

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V
    .registers 5

    .line 2
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    .line 4
    new-instance v1, Lcom/google/android/gms/games/GameEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    iput-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zza:Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzb:Lcom/google/android/gms/games/PlayerEntity;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzc:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzd:Landroid/net/Uri;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zze:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzj:F

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzf:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzg:Ljava/lang/String;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzh:J

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzi:J

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzk:Ljava/lang/String;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->hasChangePending()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzl:Z

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzm:J

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzn:Ljava/lang/String;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I
    .registers 14

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->zza()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->hasChangePending()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zzc(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->hasChangePending()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->hasChangePending()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_eb

    return v0

    :cond_eb
    return v1
.end method

.method static zzd(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Game"

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Owner"

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "SnapshotId"

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "CoverImageUri"

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "CoverImageUrl"

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageAspectRatio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "CoverImageAspectRatio"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Description"

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getLastModifiedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LastModifiedTimestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PlayedTime"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "UniqueName"

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->hasChangePending()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ChangePending"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ProgressValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "DeviceName"

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzc(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public freeze()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getCoverImageAspectRatio()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzj:F

    return v0
.end method

.method public getCoverImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzd:Landroid/net/Uri;

    return-object v0
.end method

.method public getCoverImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzn:Ljava/lang/String;

    return-object v0
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zza:Lcom/google/android/gms/games/GameEntity;

    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzh:J

    return-wide v0
.end method

.method public getOwner()Lcom/google/android/gms/games/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzb:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public getPlayedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzi:J

    return-wide v0
.end method

.method public getProgressValue()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzm:J

    return-wide v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public hasChangePending()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzl:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzb(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzd(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getGame()Lcom/google/android/gms/games/Game;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getOwner()Lcom/google/android/gms/games/Player;

    move-result-object v2

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getCoverImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzf:Ljava/lang/String;

    .line 7
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getLastModifiedTimestamp()J

    move-result-wide v1

    .line 9
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getPlayedTime()J

    move-result-wide v1

    .line 10
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getCoverImageAspectRatio()F

    move-result v1

    .line 11
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->hasChangePending()Z

    move-result v1

    .line 13
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getProgressValue()J

    move-result-wide v1

    .line 14
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;->zzf:Ljava/lang/String;

    return-object v0
.end method
