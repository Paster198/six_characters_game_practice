.class final synthetic Lcom/google/android/gms/internal/games_v2/zzcd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcd;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzcd;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcd;->zza:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzcd;->zzb:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/games/internal/zzah;->zzJ(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V

    return-void
.end method
