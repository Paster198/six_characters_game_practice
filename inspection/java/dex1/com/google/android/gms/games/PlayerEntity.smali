.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/Player;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:Landroid/net/Uri;

.field private final zze:J

.field private final zzf:I

.field private final zzg:J

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

.field private final zzl:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final zzm:Z

.field private final zzn:Z

.field private final zzo:Ljava/lang/String;

.field private final zzp:Ljava/lang/String;

.field private final zzq:Landroid/net/Uri;

.field private final zzr:Ljava/lang/String;

.field private final zzs:Landroid/net/Uri;

.field private final zzt:Ljava/lang/String;

.field private final zzu:J

.field private final zzv:Lcom/google/android/gms/games/zzo;

.field private final zzw:Lcom/google/android/gms/games/zza;

.field private final zzx:Z

.field private final zzy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzb:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzc:Landroid/net/Uri;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzh:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzd:Landroid/net/Uri;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzi:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zze:J

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zze()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzf:I

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzg:J

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzj:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzf()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzm:Z

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzh()Lcom/google/android/gms/games/internal/player/zza;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_4e

    move-object v6, v5

    goto :goto_53

    .line 14
    :cond_4e
    new-instance v6, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    invoke-direct {v6, v4}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/zza;)V

    .line 13
    :goto_53
    iput-object v6, p0, Lcom/google/android/gms/games/PlayerEntity;->zzk:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzl:Lcom/google/android/gms/games/PlayerLevelInfo;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzd()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzn:Z

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzb()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzo:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzp:Ljava/lang/String;

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzq:Landroid/net/Uri;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzr:Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzs:Landroid/net/Uri;

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzt:Ljava/lang/String;

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzi()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/gms/games/PlayerEntity;->zzu:J

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v4

    if-nez v4, :cond_93

    move-object v6, v5

    goto :goto_9e

    .line 25
    :cond_93
    new-instance v6, Lcom/google/android/gms/games/zzo;

    invoke-interface {v4}, Lcom/google/android/gms/games/PlayerRelationshipInfo;->freeze()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/games/PlayerRelationshipInfo;

    invoke-direct {v6, v4}, Lcom/google/android/gms/games/zzo;-><init>(Lcom/google/android/gms/games/PlayerRelationshipInfo;)V

    .line 24
    :goto_9e
    iput-object v6, p0, Lcom/google/android/gms/games/PlayerEntity;->zzv:Lcom/google/android/gms/games/zzo;

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;

    move-result-object v4

    if-nez v4, :cond_a7

    goto :goto_ae

    .line 27
    :cond_a7
    invoke-interface {v4}, Lcom/google/android/gms/games/CurrentPlayerInfo;->freeze()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/games/zza;

    .line 26
    :goto_ae
    iput-object v5, p0, Lcom/google/android/gms/games/PlayerEntity;->zzw:Lcom/google/android/gms/games/zza;

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzg()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzx:Z

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zza()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzy:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-lez p1, :cond_ca

    const/4 p1, 0x1

    goto :goto_cb

    :cond_ca
    const/4 p1, 0x0

    .line 32
    :goto_cb
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;ZZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLcom/google/android/gms/games/zzo;Lcom/google/android/gms/games/zza;ZLjava/lang/String;)V
    .registers 29

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/PlayerEntity;->zzc:Landroid/net/Uri;

    iput-object p10, p0, Lcom/google/android/gms/games/PlayerEntity;->zzh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzd:Landroid/net/Uri;

    iput-object p11, p0, Lcom/google/android/gms/games/PlayerEntity;->zzi:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/games/PlayerEntity;->zze:J

    iput p7, p0, Lcom/google/android/gms/games/PlayerEntity;->zzf:I

    iput-wide p8, p0, Lcom/google/android/gms/games/PlayerEntity;->zzg:J

    iput-object p12, p0, Lcom/google/android/gms/games/PlayerEntity;->zzj:Ljava/lang/String;

    iput-boolean p15, p0, Lcom/google/android/gms/games/PlayerEntity;->zzm:Z

    iput-object p13, p0, Lcom/google/android/gms/games/PlayerEntity;->zzk:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    iput-object p14, p0, Lcom/google/android/gms/games/PlayerEntity;->zzl:Lcom/google/android/gms/games/PlayerLevelInfo;

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzn:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzo:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzp:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzq:Landroid/net/Uri;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzr:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzs:Landroid/net/Uri;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzt:Ljava/lang/String;

    move-wide/from16 p1, p23

    iput-wide p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzu:J

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzv:Lcom/google/android/gms/games/zzo;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzw:Lcom/google/android/gms/games/zza;

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzx:Z

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzy:Ljava/lang/String;

    return-void
.end method

.method static zzj(Lcom/google/android/gms/games/Player;)I
    .registers 19

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->zzd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 5
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 6
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 7
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v8

    .line 9
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->zzb()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->zzc()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v11

    .line 12
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v12

    .line 13
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->zzi()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 14
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v14

    .line 15
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;

    move-result-object v15

    .line 16
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->zzg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 17
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Player;->zza()Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zzk(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/Player;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/Player;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzd()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzi()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zzg()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11b

    return v0

    :cond_11b
    return v1
.end method

.method static zzl(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "PlayerId"

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "DisplayName"

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzd()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "HasDebugAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IconImageUri"

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IconImageUrl"

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "HiResImageUri"

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RetrievedTimestamp"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title"

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "LevelInfo"

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "GamerTag"

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Name"

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "BannerImageLandscapeUri"

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "BannerImageLandscapeUrl"

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "BannerImagePortraitUri"

    .line 16
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "BannerImagePortraitUrl"

    .line 17
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "CurrentPlayerInfo"

    .line 18
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 19
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzi()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "TotalUnlockedAchievement"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 20
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzg()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 21
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zzg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AlwaysAutoSignIn"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 22
    :cond_d7
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v1

    if-eqz v1, :cond_e6

    .line 23
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v1

    const-string v2, "RelationshipInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 24
    :cond_e6
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zza()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f5

    .line 25
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->zza()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GamePlayerId"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 26
    :cond_f5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzm()Ljava/lang/Integer;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->getUnparcelClientVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzn(Ljava/lang/Integer;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzp(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzo(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->canUnparcelSafely(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zzk(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getBannerImageLandscapeUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzq:Landroid/net/Uri;

    return-object v0
.end method

.method public getBannerImageLandscapeUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerImagePortraitUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzs:Landroid/net/Uri;

    return-object v0
.end method

.method public getBannerImagePortraitUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzw:Lcom/google/android/gms/games/zza;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzb:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzd:Landroid/net/Uri;

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzg:J

    return-wide v0
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzl:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzv:Lcom/google/android/gms/games/zzo;

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zze:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzj:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public hasHiResImage()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hasIconImage()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzj(Lcom/google/android/gms/games/Player;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzl(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->shouldDowngrade()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzc:Landroid/net/Uri;

    const/4 v0, 0x0

    if-nez p2, :cond_17

    move-object p2, v0

    goto :goto_1b

    .line 4
    :cond_17
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1b
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzd:Landroid/net/Uri;

    if-nez p2, :cond_23

    goto :goto_27

    .line 5
    :cond_23
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zze:J

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    .line 7
    :cond_30
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 11
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getRetrievedTimestamp()J

    move-result-wide v4

    .line 12
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzf:I

    .line 13
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getLastPlayedWithTimestamp()J

    move-result-wide v4

    .line 14
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzk:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    .line 18
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    move-result-object v2

    .line 19
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzm:Z

    .line 20
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzn:Z

    .line 21
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzo:Ljava/lang/String;

    .line 22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerEntity;->zzp:Ljava/lang/String;

    .line 23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImageLandscapeUri()Landroid/net/Uri;

    move-result-object v2

    .line 24
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImageLandscapeUrl()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImagePortraitUri()Landroid/net/Uri;

    move-result-object v2

    .line 26
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getBannerImagePortraitUrl()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x1d

    iget-wide v4, p0, Lcom/google/android/gms/games/PlayerEntity;->zzu:J

    .line 28
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getRelationshipInfo()Lcom/google/android/gms/games/PlayerRelationshipInfo;

    move-result-object v2

    .line 29
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getCurrentPlayerInfo()Lcom/google/android/gms/games/CurrentPlayerInfo;

    move-result-object v2

    .line 30
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x24

    iget-boolean v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzx:Z

    .line 31
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x25

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerEntity;->zzy:Ljava/lang/String;

    .line 32
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzy:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzn:Z

    return v0
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzf:I

    return v0
.end method

.method public final zzf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzm:Z

    return v0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzx:Z

    return v0
.end method

.method public final zzh()Lcom/google/android/gms/games/internal/player/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzk:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    return-object v0
.end method

.method public final zzi()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->zzu:J

    return-wide v0
.end method
