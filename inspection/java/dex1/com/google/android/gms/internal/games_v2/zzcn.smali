.class final synthetic Lcom/google/android/gms/internal/games_v2/zzcn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:[Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Z[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzcn;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzcn;->zzb:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzcn;->zza:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzcn;->zzb:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/games/internal/zzah;->zzM(Lcom/google/android/gms/tasks/TaskCompletionSource;Z[Ljava/lang/String;)V

    return-void
.end method
