.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbq;

.field private final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final synthetic zzc:Lcom/google/android/gms/internal/games_v2/zzq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzq;

    return-void
.end method


# virtual methods
.method public final synthetic onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzq;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzk(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzq;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
