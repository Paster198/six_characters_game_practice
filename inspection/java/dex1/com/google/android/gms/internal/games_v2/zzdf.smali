.class final synthetic Lcom/google/android/gms/internal/games_v2/zzdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field private final synthetic zzb:I

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdf;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzdf;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzdf;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzdf;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzdf;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzdf;->zzc:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzah;->zzE(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
