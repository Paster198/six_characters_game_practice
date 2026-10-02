.class public final Lcom/google/android/gms/games/achievement/AchievementEntity;
.super Lcom/google/android/gms/games/internal/zzg;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/achievement/AchievementEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/net/Uri;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Landroid/net/Uri;

.field private final zzh:Ljava/lang/String;

.field private final zzi:I

.field private final zzj:Ljava/lang/String;

.field private final zzk:Lcom/google/android/gms/games/PlayerEntity;

.field private final zzl:I

.field private final zzm:I

.field private final zzn:Ljava/lang/String;

.field private final zzo:J

.field private final zzp:J

.field private final zzq:F

.field private final zzr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/achievement/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/achievement/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/achievement/Achievement;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb:I

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzc:Ljava/lang/String;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzd:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zze:Landroid/net/Uri;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzf:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzg:Landroid/net/Uri;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzh:Ljava/lang/String;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzb()Lcom/google/android/gms/games/Player;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    .line 11
    new-instance v4, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v4, v2}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    .line 12
    move-object v2, v4

    check-cast v2, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Lcom/google/android/gms/games/PlayerEntity;

    goto :goto_47

    .line 24
    :cond_45
    iput-object v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Lcom/google/android/gms/games/PlayerEntity;

    .line 13
    :goto_47
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzl:I

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzo:J

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzp:J

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzc()F

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzq:F

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zza()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzr:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_85

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzi:I

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzj:Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzm:I

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzn:Ljava/lang/String;

    goto :goto_8e

    :cond_85
    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzi:I

    iput-object v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzj:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzm:I

    iput-object v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzn:Ljava/lang/String;

    .line 23
    :goto_8e
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IILjava/lang/String;JJFLjava/lang/String;)V
    .registers 21

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zze:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzg:Landroid/net/Uri;

    iput-object p8, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzh:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzi:I

    iput-object p10, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzj:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Lcom/google/android/gms/games/PlayerEntity;

    iput p12, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzl:I

    iput p13, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzm:I

    iput-object p14, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzn:Ljava/lang/String;

    move-wide p1, p15

    iput-wide p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzo:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzp:J

    move/from16 p1, p19

    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzq:F

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzr:Ljava/lang/String;

    return-void
.end method

.method static zzd(Lcom/google/android/gms/games/achievement/Achievement;)I
    .registers 14

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v1

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_12
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zza()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzb()Lcom/google/android/gms/games/Player;

    move-result-object v10

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zze(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/achievement/Achievement;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/achievement/Achievement;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    .line 3
    :cond_17
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    if-ne v2, v0, :cond_33

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v3

    if-eq v2, v3, :cond_28

    return v1

    .line 5
    :cond_28
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v3

    if-eq v2, v3, :cond_33

    return v1

    .line 6
    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a8

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v3

    if-ne v2, v3, :cond_a8

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_a8

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzb()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzb()Lcom/google/android/gms/games/Player;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->zzc()F

    move-result p1

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzc()F

    move-result p0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_a8

    return v0

    :cond_a8
    return v1
.end method

.method static zzf(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Id"

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Game Id"

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Name"

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Description"

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Player"

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzb()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "State"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->zzc()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "Rarity Percent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_81

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CurrentSteps"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "TotalSteps"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 13
    :cond_81
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zze(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public freeze()Lcom/google/android/gms/games/achievement/Achievement;
    .registers 1

    return-object p0
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getAchievementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSteps()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzm:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzd:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFormattedCurrentSteps()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzn:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzn:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFormattedTotalSteps()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzj:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzo:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzc:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/DataUtils;->copyStringToBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Lcom/google/android/gms/games/PlayerEntity;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    return-object v0
.end method

.method public getRevealedImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzg:Landroid/net/Uri;

    return-object v0
.end method

.method public getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzl:I

    return v0
.end method

.method public getTotalSteps()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzi:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb:I

    return v0
.end method

.method public getUnlockedImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zze:Landroid/net/Uri;

    return-object v0
.end method

.method public getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getXpValue()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzp:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzd(Lcom/google/android/gms/games/achievement/Achievement;)I

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
    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzf(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getAchievementId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v2

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzi:I

    .line 10
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzj:Ljava/lang/String;

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Lcom/google/android/gms/games/PlayerEntity;

    .line 12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getState()I

    move-result v1

    .line 13
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xd

    iget v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzm:I

    .line 14
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0xe

    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzn:Ljava/lang/String;

    .line 15
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xf

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getLastUpdatedTimestamp()J

    move-result-wide v1

    .line 16
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getXpValue()J

    move-result-wide v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0x11

    iget v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzq:F

    .line 18
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0x12

    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzr:Ljava/lang/String;

    .line 19
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/games/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzk:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public final zzc()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzq:F

    return v0
.end method
