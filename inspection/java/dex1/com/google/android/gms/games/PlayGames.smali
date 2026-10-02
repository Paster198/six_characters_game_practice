.class public final Lcom/google/android/gms/games/PlayGames;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcj;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcq;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcq;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getGameStatsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GameStatsClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcx;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcx;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaw;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzdc;-><init>(Lcom/google/android/gms/internal/games_v2/zzaw;Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdx;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzdx;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getPlayerStatsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayerStatsClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzea;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzea;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzet;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzet;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method

.method public static getRecallClient(Landroid/app/Activity;)Lcom/google/android/gms/games/RecallClient;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzey;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaw;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzey;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzaw;)V

    return-object v0
.end method

.method public static getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzfr;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbw;->zzc()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzaq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzfr;-><init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V

    return-object p0
.end method
