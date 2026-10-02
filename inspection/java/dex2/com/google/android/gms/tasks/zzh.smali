.class final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/zzq;


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/lang/Object;

.field private zzc:Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/tasks/zzh;)Lcom/google/android/gms/tasks/OnCanceledListener;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/tasks/zzh;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zzc()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final zzd(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Lcom/google/android/gms/tasks/OnCanceledListener;

    if-nez v0, :cond_f

    .line 2
    monitor-exit p1

    return-void

    .line 3
    :cond_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzg;-><init>(Lcom/google/android/gms/tasks/zzh;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1b
    move-exception v0

    .line 3
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    return-void
.end method
