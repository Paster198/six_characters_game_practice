.class public final Lcom/google/android/gms/cloudmessaging/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"


# static fields
.field private static zza:Lcom/google/android/gms/cloudmessaging/zzv;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzd:Lcom/google/android/gms/cloudmessaging/zzp;

.field private zze:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/zzp;-><init>(Lcom/google/android/gms/cloudmessaging/zzv;Lcom/google/android/gms/cloudmessaging/zzo;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzd:Lcom/google/android/gms/cloudmessaging/zzp;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zze:I

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzb:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cloudmessaging/zzv;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzv;
    .registers 5

    const-class v0, Lcom/google/android/gms/cloudmessaging/zzv;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zzv;->zza:Lcom/google/android/gms/cloudmessaging/zzv;

    if-nez v1, :cond_21

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzv;

    invoke-static {}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zza()Lcom/google/android/gms/internal/cloudmessaging/zzb;

    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 2
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 4
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/zzv;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/android/gms/cloudmessaging/zzv;->zza:Lcom/google/android/gms/cloudmessaging/zzv;

    :cond_21
    sget-object p0, Lcom/google/android/gms/cloudmessaging/zzv;->zza:Lcom/google/android/gms/cloudmessaging/zzv;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/cloudmessaging/zzv;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private final declared-synchronized zzf()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zze:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zze:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/cloudmessaging/zzs;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Queueing "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessengerIpcClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzd:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzp;->zzg(Lcom/google/android/gms/cloudmessaging/zzs;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzp;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/zzp;-><init>(Lcom/google/android/gms/cloudmessaging/zzv;Lcom/google/android/gms/cloudmessaging/zzo;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzv;->zzd:Lcom/google/android/gms/cloudmessaging/zzp;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzp;->zzg(Lcom/google/android/gms/cloudmessaging/zzs;)Z

    :cond_2c
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzs;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    monitor-exit p0

    return-object p1

    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p1
.end method


# virtual methods
.method public final zzc(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzr;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zzv;->zzf()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/cloudmessaging/zzr;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cloudmessaging/zzv;->zzg(Lcom/google/android/gms/cloudmessaging/zzs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzu;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zzv;->zzf()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/cloudmessaging/zzu;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/cloudmessaging/zzv;->zzg(Lcom/google/android/gms/cloudmessaging/zzs;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
