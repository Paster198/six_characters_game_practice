.class public final Lcom/google/android/gms/internal/games_v2/zzcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/games/AchievementsClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzaq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    return-void
.end method


# virtual methods
.method public final getAchievementsIntent()Lcom/google/android/gms/tasks/Task;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzch;->zza:Lcom/google/android/gms/internal/games_v2/zzch;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final increment(Ljava/lang/String;I)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzca;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzca;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final incrementImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzca;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzca;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final load(Z)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbx;-><init>(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final reveal(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzby;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzby;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final revealImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzby;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzby;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final setSteps(Ljava/lang/String;I)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzcb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcb;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final setStepsImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzcb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcb;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final unlock(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbz;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final unlockImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbz;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcj;->zza:Lcom/google/android/gms/internal/games_v2/zzaq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaq;->zzb(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
