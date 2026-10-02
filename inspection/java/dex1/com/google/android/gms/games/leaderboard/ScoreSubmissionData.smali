.class public final Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    }
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzc:I

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzd:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 4
    :goto_1b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move v1, v2

    :goto_1f
    if-ge v1, v0, :cond_6b

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v3

    if-nez v1, :cond_38

    const-string v1, "leaderboardId"

    .line 6
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zza:Ljava/lang/String;

    const-string v1, "playerId"

    .line 7
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzb:Ljava/lang/String;

    move v1, v2

    :cond_38
    const-string v4, "hasResult"

    .line 8
    invoke-virtual {p1, v4, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_68

    new-instance v5, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    .line 9
    const-string v4, "rawScore"

    invoke-virtual {p1, v4, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getLong(Ljava/lang/String;II)J

    move-result-wide v6

    const-string v4, "formattedScore"

    .line 10
    invoke-virtual {p1, v4, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    const-string v4, "scoreTag"

    .line 11
    invoke-virtual {p1, v4, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    const-string v4, "newBest"

    .line 12
    invoke-virtual {p1, v4, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getBoolean(Ljava/lang/String;II)Z

    move-result v10

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzd:Landroid/util/SparseArray;

    const-string v6, "timeSpan"

    .line 13
    invoke-virtual {p1, v6, v1, v3}, Lcom/google/android/gms/common/data/DataHolder;->getInteger(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_6b
    return-void
.end method


# virtual methods
.method public getLeaderboardId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getScoreResult(I)Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzd:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "PlayerId"

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "StatusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3e

    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->zzd:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    const-string v3, "TimesSpan"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzz;->zza(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    if-nez v2, :cond_32

    const-string v2, "null"

    goto :goto_36

    .line 4
    :cond_32
    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    :goto_36
    const-string v3, "Result"

    .line 4
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 5
    :cond_3e
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
