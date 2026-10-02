.class public final Lcom/google/android/gms/internal/games_v2/zzcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/GameStatsClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    return-void
.end method


# virtual methods
.method public final recordEvent(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V
    .registers 3

    .line 1
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzcw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzcw;-><init>(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final recordEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "events must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzcr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzcr;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final requestEventsUpload()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcx;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzcs;->zza:Lcom/google/android/gms/internal/games_v2/zzcs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
