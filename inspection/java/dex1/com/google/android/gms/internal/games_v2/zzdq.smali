.class final synthetic Lcom/google/android/gms/internal/games_v2/zzdq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzap;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzdh;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zzd:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games_v2/zzdq;->zze:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/games_v2/zzdh;-><init>(Ljava/lang/String;IIIZ)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a30

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
