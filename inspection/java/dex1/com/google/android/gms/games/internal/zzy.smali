.class final Lcom/google/android/gms/games/internal/zzy;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/games/internal/zzah;

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzah;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzy;->zza:Lcom/google/android/gms/games/internal/zzah;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzy;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 8

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzy;->zza:Lcom/google/android/gms/games/internal/zzah;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzy;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzah;->zzab(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_16
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    if-eqz v0, :cond_2e

    if-eqz v1, :cond_22

    goto :goto_2e

    .line 8
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzy;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 5
    :cond_2e
    :goto_2e
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 6
    :try_start_33
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_46

    invoke-virtual {v0, v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_5f

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    .line 7
    :goto_47
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzy;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    .line 8
    new-instance v3, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    new-instance v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v4, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_5f
    move-exception p1

    .line 5
    :try_start_60
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_68
    throw p1
.end method
