.class final synthetic Lcom/google/android/gms/internal/games_v2/zzer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:I

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzer;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzer;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games_v2/zzer;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-boolean v5, p0, Lcom/google/android/gms/internal/games_v2/zzer;->zzc:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzer;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzer;->zzb:I

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzah;->zzy(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IZZ)V

    return-void
.end method
