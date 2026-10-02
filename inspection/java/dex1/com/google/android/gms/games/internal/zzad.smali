.class final Lcom/google/android/gms/games/internal/zzad;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzad;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_13

    if-ne v0, v1, :cond_a

    goto :goto_13

    .line 7
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzad;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/games/GamesStatusUtils;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 2
    :cond_13
    :goto_13
    new-instance v2, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_18
    invoke-virtual {v2}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_2b

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object p1

    .line 5
    new-instance v4, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v4, p1}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    .line 4
    check-cast v4, Lcom/google/android/gms/games/Player;
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3d

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    .line 6
    :goto_2c
    invoke-virtual {v2}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    if-ne v0, v1, :cond_32

    const/4 v3, 0x1

    :cond_32
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzad;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_3d
    move-exception p1

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    .line 7
    throw p1
.end method
