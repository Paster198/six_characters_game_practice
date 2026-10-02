.class public final Lcom/google/android/gms/games/GameEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/Game;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/GameEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Landroid/net/Uri;

.field private final zzh:Landroid/net/Uri;

.field private final zzi:Landroid/net/Uri;

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:Ljava/lang/String;

.field private final zzm:I

.field private final zzn:I

.field private final zzo:I

.field private final zzp:Z

.field private final zzq:Z

.field private final zzr:Ljava/lang/String;

.field private final zzs:Ljava/lang/String;

.field private final zzt:Ljava/lang/String;

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Z

.field private final zzx:Ljava/lang/String;

.field private final zzy:Z

.field private final zzz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/zze;

    invoke-direct {v0}, Lcom/google/android/gms/games/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/GameEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Game;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzc:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzd:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zze:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzf:Ljava/lang/String;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzb:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzg:Landroid/net/Uri;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzr:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzh:Landroid/net/Uri;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzs:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzi:Landroid/net/Uri;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzt:Ljava/lang/String;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zza()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzj:Z

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zze()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzk:Z

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzf()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzl:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzm:I

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzn:I

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/GameEntity;->zzo:I

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzp:Z

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzh()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzq:Z

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzu:Z

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzv:Z

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzw:Z

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzx:Ljava/lang/String;

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzy:Z

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzd()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzz:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZZ)V
    .registers 27

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/GameEntity;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/GameEntity;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/GameEntity;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/GameEntity;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/GameEntity;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/GameEntity;->zzg:Landroid/net/Uri;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/games/GameEntity;->zzr:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/GameEntity;->zzh:Landroid/net/Uri;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/google/android/gms/games/GameEntity;->zzs:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/games/GameEntity;->zzi:Landroid/net/Uri;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/google/android/gms/games/GameEntity;->zzt:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/games/GameEntity;->zzj:Z

    iput-boolean p11, p0, Lcom/google/android/gms/games/GameEntity;->zzk:Z

    iput-object p12, p0, Lcom/google/android/gms/games/GameEntity;->zzl:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/games/GameEntity;->zzm:I

    iput p14, p0, Lcom/google/android/gms/games/GameEntity;->zzn:I

    iput p15, p0, Lcom/google/android/gms/games/GameEntity;->zzo:I

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzp:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzq:Z

    move/from16 p1, p21

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzu:Z

    move/from16 p1, p22

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzv:Z

    move/from16 p1, p23

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzw:Z

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/google/android/gms/games/GameEntity;->zzx:Ljava/lang/String;

    move/from16 p1, p25

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzy:Z

    move/from16 p1, p26

    iput-boolean p1, p0, Lcom/google/android/gms/games/GameEntity;->zzz:Z

    return-void
.end method

.method static zzi(Lcom/google/android/gms/games/Game;)I
    .registers 24

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v7

    .line 8
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v8

    .line 9
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v9

    .line 10
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zza()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zze()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 12
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zzf()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 14
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 15
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zzg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 16
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zzh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 17
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zzb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 18
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zzc()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 19
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 20
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v20

    .line 21
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 22
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/games/Game;->zzd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zzj(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/Game;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/Game;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zza()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zza()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zze()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zze()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzg()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzh()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzh()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzb()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzb()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzc()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzc()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/games/Game;->zzd()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzd()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_199

    return v0

    :cond_199
    return v1
.end method

.method static zzk(Lcom/google/android/gms/games/Game;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ApplicationId"

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "DisplayName"

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "PrimaryCategory"

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "SecondaryCategory"

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Description"

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "DeveloperName"

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IconImageUri"

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IconImageUrl"

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "HiResImageUri"

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "HiResImageUrl"

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "FeaturedImageUri"

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "FeaturedImageUrl"

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 14
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zza()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "PlayEnabledGame"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 15
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zze()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "InstanceInstalled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "InstancePackageName"

    .line 16
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 17
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getAchievementTotalCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AchievementTotalCount"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 18
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getLeaderboardCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LeaderboardCount"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 19
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->areSnapshotsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AreSnapshotsEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ThemeColor"

    .line 20
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->getThemeColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 21
    invoke-interface {p0}, Lcom/google/android/gms/games/Game;->hasGamepadSupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "HasGamepadSupport"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzl()Ljava/lang/Integer;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/games/GameEntity;->getUnparcelClientVersion()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzm(Ljava/lang/Integer;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzp(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzn(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->canUnparcelSafely(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public areSnapshotsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzw:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/GameEntity;->zzj(Lcom/google/android/gms/games/Game;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public freeze()Lcom/google/android/gms/games/Game;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getAchievementTotalCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->zzn:I

    return v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zze:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDeveloperName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloperName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzf:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzb:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFeaturedImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzi:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzh:Landroid/net/Uri;

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzs:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzg:Landroid/net/Uri;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderboardCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/GameEntity;->zzo:I

    return v0
.end method

.method public getPrimaryCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeColor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzx:Ljava/lang/String;

    return-object v0
.end method

.method public hasGamepadSupport()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzy:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzi(Lcom/google/android/gms/games/Game;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/GameEntity;->zzk(Lcom/google/android/gms/games/Game;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->shouldDowngrade()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzd:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zze:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzf:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzg:Landroid/net/Uri;

    const/4 v0, 0x0

    if-nez p2, :cond_2b

    move-object p2, v0

    goto :goto_2f

    .line 8
    :cond_2b
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2f
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzh:Landroid/net/Uri;

    if-nez p2, :cond_38

    move-object p2, v0

    goto :goto_3c

    .line 9
    :cond_38
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3c
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzi:Landroid/net/Uri;

    if-nez p2, :cond_44

    goto :goto_48

    .line 10
    :cond_44
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/gms/games/GameEntity;->zzj:Z

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/android/gms/games/GameEntity;->zzk:Z

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/games/GameEntity;->zzl:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/games/GameEntity;->zzm:I

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/games/GameEntity;->zzn:I

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/gms/games/GameEntity;->zzo:I

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 17
    :cond_6a
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getPrimaryCategory()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getSecondaryCategory()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getDeveloperName()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 24
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 25
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 26
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzj:Z

    .line 27
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzk:Z

    .line 28
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xc

    iget-object v1, p0, Lcom/google/android/gms/games/GameEntity;->zzl:Ljava/lang/String;

    .line 29
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xd

    iget v1, p0, Lcom/google/android/gms/games/GameEntity;->zzm:I

    .line 30
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getAchievementTotalCount()I

    move-result v1

    .line 31
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getLeaderboardCount()I

    move-result v1

    .line 32
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0x10

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzp:Z

    .line 33
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x11

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzq:Z

    .line 34
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x12

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x13

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getHiResImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x14

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x15

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzu:Z

    .line 38
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x16

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzv:Z

    .line 39
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x17

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->areSnapshotsEnabled()Z

    move-result v1

    .line 40
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x18

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->getThemeColor()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x19

    invoke-virtual {p0}, Lcom/google/android/gms/games/GameEntity;->hasGamepadSupport()Z

    move-result v1

    .line 42
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x1c

    iget-boolean v1, p0, Lcom/google/android/gms/games/GameEntity;->zzz:Z

    .line 43
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 44
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzj:Z

    return v0
.end method

.method public final zzb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzu:Z

    return v0
.end method

.method public final zzc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzv:Z

    return v0
.end method

.method public final zzd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzz:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzk:Z

    return v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/GameEntity;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzp:Z

    return v0
.end method

.method public final zzh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/GameEntity;->zzq:Z

    return v0
.end method
