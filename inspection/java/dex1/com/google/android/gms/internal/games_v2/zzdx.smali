.class public final Lcom/google/android/gms/internal/games_v2/zzdx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/LeaderboardsClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    return-void
.end method


# virtual methods
.method public final getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzdw;->zza:Lcom/google/android/gms/internal/games_v2/zzdw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/games_v2/zzdx;->getLeaderboardIntent(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getLeaderboardIntent(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/games_v2/zzdx;->getLeaderboardIntent(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getLeaderboardIntent(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdd;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzdd;-><init>(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadCurrentPlayerLeaderboardScore(Ljava/lang/String;II)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdp;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzdp;-><init>(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadLeaderboardMetadata(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzdo;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadLeaderboardMetadata(Z)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzdn;-><init>(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadMoreScores(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzds;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzds;-><init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadPlayerCenteredScores(Ljava/lang/String;III)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdr;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzdr;-><init>(Ljava/lang/String;IIIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadPlayerCenteredScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdr;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzdr;-><init>(Ljava/lang/String;IIIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadTopScores(Ljava/lang/String;III)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdq;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzdq;-><init>(Ljava/lang/String;IIIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadTopScores(Ljava/lang/String;IIIZ)Lcom/google/android/gms/tasks/Task;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdq;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzdq;-><init>(Ljava/lang/String;IIIZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final submitScore(Ljava/lang/String;J)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdt;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzdt;-><init>(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final submitScore(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdu;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/games_v2/zzdu;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final submitScoreImmediate(Ljava/lang/String;J)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdt;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzdt;-><init>(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final submitScoreImmediate(Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdu;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/games_v2/zzdu;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
