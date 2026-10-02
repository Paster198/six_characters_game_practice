.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbq;

.field private final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbq;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbj;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbj;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzbj;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbj;->zza:Lcom/google/android/gms/internal/games_v2/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbj;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzbj;->zzc:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzl(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/tasks/Task;)V

    return-void
.end method
