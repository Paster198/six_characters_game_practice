.class final synthetic Lcom/google/android/gms/internal/games_v2/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zza:Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zza:Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/zzah;->zzY(Lcom/google/android/gms/games/playergameevent/PlayerGameEvent;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
