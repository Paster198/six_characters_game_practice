.class public abstract Lcom/google/android/gms/internal/games_v2/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzac;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/gms/internal/games_v2/zzab;
.end method

.method public final zzb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzac;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzab;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzab;->zzc()V

    :cond_d
    return-void
.end method

.method public final zzc(Ljava/lang/String;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzac;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzab;

    if-nez v1, :cond_1c

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzac;->zza()Lcom/google/android/gms/internal/games_v2/zzab;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzab;

    .line 5
    :cond_1c
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzab;->zzb(Ljava/lang/String;I)V

    return-void
.end method
