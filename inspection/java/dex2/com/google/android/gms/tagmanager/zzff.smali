.class final Lcom/google/android/gms/tagmanager/zzff;
.super Lcom/google/android/gms/tagmanager/zzey;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/tagmanager/zzff;


# instance fields
.field private zzc:Landroid/content/Context;

.field private zzd:Lcom/google/android/gms/tagmanager/zzcd;

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/tagmanager/zzfb;

.field private zzi:Lcom/google/android/gms/tagmanager/zzdk;

.field private zzj:Z

.field private volatile zzk:Lcom/google/android/gms/tagmanager/zzcc;

.field private final zzl:Lcom/google/android/gms/tagmanager/zzez;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzff;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzey;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zze:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzg:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzez;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzez;-><init>(Lcom/google/android/gms/tagmanager/zzff;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzl:Lcom/google/android/gms/tagmanager/zzez;

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzj:Z

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzff;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/tagmanager/zzff;)Lcom/google/android/gms/tagmanager/zzcd;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzd:Lcom/google/android/gms/tagmanager/zzcd;

    return-object p0
.end method

.method public static zzg()Lcom/google/android/gms/tagmanager/zzff;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzff;->zzb:Lcom/google/android/gms/tagmanager/zzff;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/zzff;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzff;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzff;->zzb:Lcom/google/android/gms/tagmanager/zzff;

    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/zzff;->zzb:Lcom/google/android/gms/tagmanager/zzff;

    return-object v0
.end method

.method static bridge synthetic zzh()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzff;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/tagmanager/zzff;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzg:Z

    return p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/tagmanager/zzff;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzff;->zzm()Z

    move-result p0

    return p0
.end method

.method private final zzm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzj:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzg:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzf:Z

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "Dispatch call queued. Dispatch will run once initialization is complete."

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zze:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1d

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzk:Lcom/google/android/gms/tagmanager/zzcc;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzfa;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzfa;-><init>(Lcom/google/android/gms/tagmanager/zzff;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcc;->zze(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final declared-synchronized zzb()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzff;->zzm()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzh:Lcom/google/android/gms/tagmanager/zzfb;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzfb;->zzb()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    monitor-exit p0

    return-void

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public final declared-synchronized zzc(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzj:Z

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzff;->zzi(ZZ)V
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

.method final declared-synchronized zzf()Lcom/google/android/gms/tagmanager/zzcd;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzd:Lcom/google/android/gms/tagmanager/zzcd;

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzc:Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 2
    new-instance v2, Lcom/google/android/gms/tagmanager/zzdw;

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzff;->zzl:Lcom/google/android/gms/tagmanager/zzez;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/tagmanager/zzdw;-><init>(Lcom/google/android/gms/tagmanager/zzez;Landroid/content/Context;[B)V

    iput-object v2, p0, Lcom/google/android/gms/tagmanager/zzff;->zzd:Lcom/google/android/gms/tagmanager/zzcd;

    goto :goto_1c

    .line 0
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzh:Lcom/google/android/gms/tagmanager/zzfb;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfe;

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzfe;-><init>(Lcom/google/android/gms/tagmanager/zzff;Lcom/google/android/gms/tagmanager/zzfd;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzh:Lcom/google/android/gms/tagmanager/zzfb;

    const-wide/32 v1, 0x1b7740

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(J)V

    :cond_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zze:Z

    if-eqz v0, :cond_3a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzff;->zza()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zze:Z

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzi:Lcom/google/android/gms/tagmanager/zzdk;

    if-nez v0, :cond_68

    .line 6
    new-instance v0, Lcom/google/android/gms/tagmanager/zzdk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzdk;-><init>(Lcom/google/android/gms/tagmanager/zzey;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzi:Lcom/google/android/gms/tagmanager/zzdk;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzc:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    .line 7
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.google.analytics.RADIO_POWERED"

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzd:Lcom/google/android/gms/tagmanager/zzcd;
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6c

    monitor-exit p0

    return-object v0

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method final declared-synchronized zzi(ZZ)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzff;->zzm()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzj:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzff;->zzg:Z

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzff;->zzm()Z

    move-result p1

    if-eq p1, v0, :cond_34

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzff;->zzm()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzh:Lcom/google/android/gms/tagmanager/zzfb;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/zzfb;->zza()V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string p2, "PowerSaveMode initiated."

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_36

    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzh:Lcom/google/android/gms/tagmanager/zzfb;

    const-wide/32 v0, 0x1b7740

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzfb;->zzc(J)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string p2, "PowerSaveMode terminated."

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_36

    monitor-exit p0

    return-void

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method

.method final declared-synchronized zzl(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcc;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzff;->zzc:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 1
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzc:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzff;->zzk:Lcom/google/android/gms/tagmanager/zzcc;

    if-nez p1, :cond_15

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzff;->zzk:Lcom/google/android/gms/tagmanager/zzcc;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method
