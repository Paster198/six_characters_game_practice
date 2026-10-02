.class final synthetic Lcom/google/android/gms/internal/games_v2/zzde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:J


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzde;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/games_v2/zzde;->zzb:J

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzde;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/games_v2/zzde;->zzb:J

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzah;

    const/4 v5, 0x0

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzah;->zzF(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
