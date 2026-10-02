.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Z

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzan;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zza:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zzb:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zzc:Z

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzfe;->zzd:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzan;->zzz(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
