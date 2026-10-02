.class public final Lcom/google/android/gms/internal/games_v2/zzea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/PlayerStatsClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzea;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    return-void
.end method


# virtual methods
.method public final loadPlayerStats(Z)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzdz;-><init>(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzea;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
