.class final synthetic Lcom/google/android/gms/internal/games_v2/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzey;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzey;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzex;->zza:Lcom/google/android/gms/internal/games_v2/zzey;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzft;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzft;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzal;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzev;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzex;->zza:Lcom/google/android/gms/internal/games_v2/zzey;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/games_v2/zzev;-><init>(Lcom/google/android/gms/internal/games_v2/zzey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string p2, "unusedServerClientId"

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzal;->zzd(Lcom/google/android/gms/internal/games_v2/zzai;Ljava/lang/String;)V

    return-void
.end method
