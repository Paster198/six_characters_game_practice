.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzhd;

.field private final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzhd;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbm;

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzbm;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
