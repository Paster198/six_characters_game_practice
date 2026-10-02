.class final Lcom/google/android/gms/tagmanager/zzej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzaj;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzd:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private zze:Z

.field private final zzf:Lcom/google/android/gms/tagmanager/zzap;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/tagmanager/zzdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdg<",
            "Lcom/google/android/gms/internal/gtm/zzai;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/tagmanager/zzei;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzap;Lcom/google/android/gms/tagmanager/zzeh;Lcom/google/android/gms/tagmanager/zzei;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzej;->zzf:Lcom/google/android/gms/tagmanager/zzap;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzej;->zza:Ljava/lang/String;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfz;->zza()Lcom/google/android/gms/internal/gtm/zzfw;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x2

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzfw;->zzb(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzei;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/tagmanager/zzei;-><init>(Lcom/google/android/gms/tagmanager/zzej;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzi:Lcom/google/android/gms/tagmanager/zzei;

    return-void
.end method

.method private final declared-synchronized zzd()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zze:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_7

    .line 1
    monitor-exit p0

    return-void

    .line 0
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called method after closed"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method


# virtual methods
.method public final declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzej;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zzd:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zze:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public final declared-synchronized zza(JLjava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zza:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x37

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "loadAfterDelay: containerId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " delay="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzej;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zzh:Lcom/google/android/gms/tagmanager/zzdg;

    if-eqz v0, :cond_62

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zzd:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_3a

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzej;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzi:Lcom/google/android/gms/tagmanager/zzei;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzej;->zzf:Lcom/google/android/gms/tagmanager/zzap;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzeg;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzei;->zza:Lcom/google/android/gms/tagmanager/zzej;

    iget-object v4, v1, Lcom/google/android/gms/tagmanager/zzej;->zzb:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzej;->zza:Ljava/lang/String;

    .line 6
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/tagmanager/zzeg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzap;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzh:Lcom/google/android/gms/tagmanager/zzdg;

    .line 7
    invoke-virtual {v3, v1}, Lcom/google/android/gms/tagmanager/zzeg;->zzb(Lcom/google/android/gms/tagmanager/zzdg;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzg:Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v1}, Lcom/google/android/gms/tagmanager/zzeg;->zza(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, p3}, Lcom/google/android/gms/tagmanager/zzeg;->zzc(Ljava/lang/String;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v0, v3, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzd:Ljava/util/concurrent/ScheduledFuture;
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_6a

    monitor-exit p0

    return-void

    .line 3
    :cond_62
    :try_start_62
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callback must be set before loadAfterDelay() is called."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_6a
    move-exception p1

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzej;->zzd()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzg:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/tagmanager/zzdg;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdg<",
            "Lcom/google/android/gms/internal/gtm/zzai;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzej;->zzd()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzej;->zzh:Lcom/google/android/gms/tagmanager/zzdg;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method
