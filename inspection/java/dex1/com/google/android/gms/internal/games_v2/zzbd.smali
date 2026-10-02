.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzav;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzau;

.field private final synthetic zzb:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzau;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbd;->zza:Lcom/google/android/gms/internal/games_v2/zzau;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbd;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbd;->zzb:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbd;->zza:Lcom/google/android/gms/internal/games_v2/zzau;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzau;->zza(Lcom/google/android/gms/common/api/GoogleApi;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
