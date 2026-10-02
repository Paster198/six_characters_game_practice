.class final synthetic Lcom/google/android/gms/internal/games_v2/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbu;

.field private final synthetic zzb:Lcom/google/android/gms/internal/games_v2/zzq;

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbu;Lcom/google/android/gms/internal/games_v2/zzq;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbt;->zza:Lcom/google/android/gms/internal/games_v2/zzbu;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbt;->zzb:Lcom/google/android/gms/internal/games_v2/zzq;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games_v2/zzbt;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbt;->zza:Lcom/google/android/gms/internal/games_v2/zzbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbt;->zzb:Lcom/google/android/gms/internal/games_v2/zzq;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/games_v2/zzbt;->zzc:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbu;->zzb(Lcom/google/android/gms/internal/games_v2/zzq;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
