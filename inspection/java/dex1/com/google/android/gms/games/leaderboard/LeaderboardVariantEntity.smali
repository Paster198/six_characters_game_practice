.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Z

.field private final zzd:J

.field private final zze:Ljava/lang/String;

.field private final zzf:J

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/String;

.field private final zzi:J

.field private final zzj:Ljava/lang/String;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza:I

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzb:I

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzc:Z

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzd:J

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zze:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzf:J

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzg:Ljava/lang/String;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerScoreTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzh:Ljava/lang/String;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzi:J

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzj:Ljava/lang/String;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzk:Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzl:Ljava/lang/String;

    return-void
.end method

.method static zzd(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
    .registers 13

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zza()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzc()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzb()Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zze(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d7

    return v0

    :cond_d7
    return v1
.end method

.method static zzf(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzz;->zza(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimeSpan"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_54

    if-eqz v1, :cond_51

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x2

    const-string v3, "SOCIAL_1P"

    if-eq v1, v2, :cond_56

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    goto :goto_56

    .line 14
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown leaderboard collection: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_4b
    const-string v3, "FRIENDS"

    goto :goto_56

    :cond_4e
    const-string v3, "SOCIAL"

    goto :goto_56

    .line 15
    :cond_51
    const-string v3, "PUBLIC"

    goto :goto_56

    .line 4
    :cond_54
    const-string v3, "UNKNOWN"

    :cond_56
    :goto_56
    const-string v1, "Collection"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v1

    const-string v2, "none"

    if-eqz v1, :cond_6d

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_6e

    :cond_6d
    move-object v1, v2

    :goto_6e
    const-string v3, "RawPlayerScore"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    move-result-object v1

    goto :goto_80

    :cond_7f
    move-object v1, v2

    :goto_80
    const-string v3, "DisplayPlayerScore"

    .line 7
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_96

    :cond_95
    move-object v1, v2

    :goto_96
    const-string v3, "PlayerRank"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    move-result-object v2

    :cond_a6
    const-string v1, "DisplayPlayerRank"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "NumScores"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 11
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zza()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TopPageNextToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowPageNextToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->zzb()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WindowPagePrevToken"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zze(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic freeze()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final getCollection()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzb:I

    return v0
.end method

.method public final getDisplayPlayerRank()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayPlayerScore()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumScores()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzi:J

    return-wide v0
.end method

.method public final getPlayerRank()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzf:J

    return-wide v0
.end method

.method public final getPlayerScoreTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawPlayerScore()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzd:J

    return-wide v0
.end method

.method public final getTimeSpan()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zza:I

    return v0
.end method

.method public final hasPlayerInfo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzc:Z

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzd(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    move-result v0

    return v0
.end method

.method public final isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzf(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->zzl:Ljava/lang/String;

    return-object v0
.end method
