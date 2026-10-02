.class public final Lcom/google/android/gms/internal/games_v2/zzdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/GamesSignInClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzaw;

.field private final zzb:Lcom/google/android/gms/internal/games_v2/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzaw;Lcom/google/android/gms/internal/games_v2/zzaq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdc;->zza:Lcom/google/android/gms/internal/games_v2/zzaw;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzdc;->zzb:Lcom/google/android/gms/internal/games_v2/zzaq;

    return-void
.end method


# virtual methods
.method public final isAuthenticated()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzdc;->zza:Lcom/google/android/gms/internal/games_v2/zzaw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzaw;->zzc()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzdb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzdb;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdc;->zzb:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final requestServerSideAccess(Ljava/lang/String;ZLjava/util/List;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/gms/games/gamessignin/AuthScope;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/gamessignin/AuthResponse;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "serverClientId must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz p3, :cond_20

    const/4 v0, 0x0

    .line 5
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzdc;->zza:Lcom/google/android/gms/internal/games_v2/zzaw;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcy;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcy;-><init>(Ljava/lang/String;Z)V

    .line 6
    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/internal/games_v2/zzaw;->zzb(Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 5
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthScope array cannot contain null elements."

    .line 7
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serverClientId must not be empty."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final signIn()Lcom/google/android/gms/tasks/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzdc;->zza:Lcom/google/android/gms/internal/games_v2/zzaw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzaw;->zze()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
