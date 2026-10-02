.class final synthetic Lcom/google/android/gms/internal/games_v2/zzfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Z

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzb:Z

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zza:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzb:Z

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzc:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzah;->zzQ(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZI)V

    return-void
.end method
