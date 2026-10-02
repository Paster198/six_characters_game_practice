.class public final Lcom/google/android/play/core/review/internal/zzt;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.1"


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/play/core/review/internal/zzi;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/Set;

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z

.field private final zzi:Landroid/content/Intent;

.field private final zzj:Ljava/lang/ref/WeakReference;

.field private final zzk:Landroid/os/IBinder$DeathRecipient;

.field private final zzl:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzm:Landroid/content/ServiceConnection;

.field private zzn:Landroid/os/IInterface;

.field private final zzo:Lcom/google/android/play/core/review/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/review/internal/zzt;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/review/internal/zzi;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/review/zze;Lcom/google/android/play/core/review/internal/zzo;[B)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    new-instance p3, Ljava/util/HashSet;

    .line 2
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzt;->zzf:Ljava/util/Set;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    new-instance p3, Lcom/google/android/play/core/review/internal/zzl;

    invoke-direct {p3, p0}, Lcom/google/android/play/core/review/internal/zzl;-><init>(Lcom/google/android/play/core/review/internal/zzt;)V

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzt;->zzk:Landroid/os/IBinder$DeathRecipient;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p6, 0x0

    .line 3
    invoke-direct {p3, p6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/play/core/review/internal/zzt;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string p1, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/review/internal/zzt;->zzi:Landroid/content/Intent;

    iput-object p5, p0, Lcom/google/android/play/core/review/internal/zzt;->zzo:Lcom/google/android/play/core/review/zze;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/play/core/review/internal/zzt;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/play/core/review/internal/zzt;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzm:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/play/core/review/internal/zzt;)Landroid/os/IInterface;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzn:Landroid/os/IInterface;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/play/core/review/internal/zzt;)Lcom/google/android/play/core/review/internal/zzi;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/play/core/review/internal/zzt;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic zzh(Lcom/google/android/play/core/review/internal/zzt;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reportBinderDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzj:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/review/internal/zzo;

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v3, "calling onBinderDied"

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v3, v1}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 8
    invoke-interface {v0}, Lcom/google/android/play/core/review/internal/zzo;->zza()V

    goto :goto_4d

    :cond_21
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s : Binder has died."

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/review/internal/zzj;

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzt;->zzs()Landroid/os/RemoteException;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/review/internal/zzj;->zzc(Ljava/lang/Exception;)V

    goto :goto_34

    :cond_48
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :goto_4d
    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzt;->zzt()V

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/play/core/review/internal/zzt;Landroid/content/ServiceConnection;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzm:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/play/core/review/internal/zzt;Z)V
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzh:Z

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/play/core/review/internal/zzt;Landroid/os/IInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzn:Landroid/os/IInterface;

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/play/core/review/internal/zzt;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzt;->zzt()V

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/play/core/review/internal/zzj;)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzn:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzh:Z

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v2, "Initiate binding to the service."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/play/core/review/internal/zzs;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/play/core/review/internal/zzs;-><init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/play/core/review/internal/zzr;)V

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzm:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzh:Z

    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/play/core/review/internal/zzt;->zzi:Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v0, "Failed to bind to the service."

    new-array v2, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v0, v2}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iput-boolean v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzh:Z

    iget-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/review/internal/zzj;

    new-instance v1, Lcom/google/android/play/core/review/internal/zzu;

    .line 9
    invoke-direct {v1}, Lcom/google/android/play/core/review/internal/zzu;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/review/internal/zzj;->zzc(Ljava/lang/Exception;)V

    goto :goto_3d

    :cond_52
    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_57
    return-void

    :cond_58
    iget-boolean v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzh:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v2, "Waiting to bind to the service."

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zze:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_6b
    invoke-virtual {p1}, Lcom/google/android/play/core/review/internal/zzj;->run()V

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/play/core/review/internal/zzt;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    :try_start_a
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzn:Landroid/os/IInterface;

    .line 2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzk:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v2, "linkToDeath failed"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/play/core/review/internal/zzi;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/play/core/review/internal/zzt;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unlinkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzn:Landroid/os/IInterface;

    .line 2
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzk:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method private final zzs()Landroid/os/RemoteException;
    .registers 4

    .line 2
    new-instance v0, Landroid/os/RemoteException;

    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " : Binder has died."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzt()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzf:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzt;->zzs()Landroid/os/RemoteException;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_9

    :cond_1d
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzf:Ljava/util/Set;

    .line 3
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public final zzc()Landroid/os/Handler;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/play/core/review/internal/zzt;->zza:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    const/16 v3, 0xa

    .line 3
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzd:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_2f
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final zze()Landroid/os/IInterface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzn:Landroid/os/IInterface;

    return-object v0
.end method

.method public final zzp(Lcom/google/android/play/core/review/internal/zzj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzf:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/review/internal/zzk;

    invoke-direct {v2, p0, p2}, Lcom/google/android/play/core/review/internal/zzk;-><init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 4
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    iget-object p2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    monitor-enter p2

    :try_start_18
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v1, "Already connected to the service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/review/internal/zzi;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    :cond_2a
    monitor-exit p2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_3c

    new-instance p2, Lcom/google/android/play/core/review/internal/zzm;

    invoke-virtual {p1}, Lcom/google/android/play/core/review/internal/zzj;->zzb()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/play/core/review/internal/zzm;-><init>(Lcom/google/android/play/core/review/internal/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/review/internal/zzj;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/play/core/review/internal/zzt;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_3c
    move-exception p1

    .line 7
    :try_start_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1

    :catchall_3f
    move-exception p1

    .line 4
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method final synthetic zzq(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzf:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit p2

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zzr(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzf:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_39

    iget-object p1, p0, Lcom/google/android/play/core/review/internal/zzt;->zzg:Ljava/lang/Object;

    monitor-enter p1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzt;->zzc:Lcom/google/android/play/core/review/internal/zzi;

    const-string v1, "Leaving the connection open for other ongoing calls."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    monitor-exit p1

    return-void

    .line 4
    :cond_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_36

    new-instance p1, Lcom/google/android/play/core/review/internal/zzn;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/review/internal/zzn;-><init>(Lcom/google/android/play/core/review/internal/zzt;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/play/core/review/internal/zzt;->zzc()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_36
    move-exception v0

    .line 4
    :try_start_37
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    :catchall_39
    move-exception p1

    .line 2
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method
