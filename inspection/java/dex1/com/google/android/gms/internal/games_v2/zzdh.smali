.class final synthetic Lcom/google/android/gms/internal/games_v2/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:I

.field private final synthetic zzc:I

.field private final synthetic zzd:I

.field private final synthetic zze:Z


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzah;

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zzd:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games_v2/zzdh;->zze:Z

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzah;->zzC(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V

    return-void
.end method
