.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbq;

.field private final synthetic zzb:Ljava/util/List;

.field private final synthetic zzc:Lcom/google/android/gms/internal/games_v2/zzau;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbq;Ljava/util/List;Lcom/google/android/gms/internal/games_v2/zzau;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbf;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbf;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbf;->zzc:Lcom/google/android/gms/internal/games_v2/zzau;

    return-void
.end method


# virtual methods
.method public final synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbf;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbf;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzbf;->zzc:Lcom/google/android/gms/internal/games_v2/zzau;

    check-cast p1, Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/games_v2/zzau;Lcom/google/android/gms/games/internal/v2/resolution/zzc;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
