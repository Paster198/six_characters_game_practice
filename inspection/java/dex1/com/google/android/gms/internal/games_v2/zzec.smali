.class final synthetic Lcom/google/android/gms/internal/games_v2/zzec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzec;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzec;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzec;->zza:Lcom/google/android/gms/internal/games_v2/zzec;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/zzah;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzan;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/zzan;->zzx()Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
