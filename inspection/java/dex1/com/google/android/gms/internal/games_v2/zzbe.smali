.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/games_v2/zzau;

.field private final synthetic zzc:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zzb:Lcom/google/android/gms/internal/games_v2/zzau;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zzb:Lcom/google/android/gms/internal/games_v2/zzau;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zzc:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzg(Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
