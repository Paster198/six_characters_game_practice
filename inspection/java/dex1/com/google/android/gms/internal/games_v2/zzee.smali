.class final synthetic Lcom/google/android/gms/internal/games_v2/zzee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzee;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzee;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzee;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzan;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzee;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzee;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzee;->zzc:Ljava/lang/String;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzan;->zzR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
