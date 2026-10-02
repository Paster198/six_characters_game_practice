.class public final Lcom/google/android/gms/internal/measurement/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjr;


# static fields
.field private static final zza:Ljava/util/Map;


# instance fields
.field private final zzb:Landroid/content/SharedPreferences;

.field private final zzc:Ljava/lang/Runnable;

.field private zzd:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final zze:Ljava/lang/Object;

.field private volatile zzf:Ljava/util/Map;

.field private final zzg:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zze:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzg:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:Ljava/lang/Runnable;

    return-void
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzkk;
    .registers 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "direct_boot:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    .line 3
    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzji;->zzb(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_17
    :goto_17
    const-class v0, Lcom/google/android/gms/internal/measurement/zzkk;

    monitor-enter v0

    :try_start_1a
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkk;

    if-nez v2, :cond_6c

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkk;

    .line 5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_6e

    :try_start_2a
    const-string v4, "direct_boot:"

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4d

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzji;->zzc()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_3d
    const/16 v4, 0xc

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzcd;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    .line 9
    invoke-static {p0, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzci;->zza(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcc;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_67

    .line 10
    :goto_49
    :try_start_49
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_6e

    goto :goto_54

    .line 11
    :cond_4d
    :try_start_4d
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzcd;->zza:Lcom/google/android/gms/internal/measurement/zzcc;

    invoke-static {p0, p1, v5, v4}, Lcom/google/android/gms/internal/measurement/zzci;->zza(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcc;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_67

    goto :goto_49

    .line 13
    :goto_54
    :try_start_54
    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/measurement/zzkk;-><init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V

    new-instance p0, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzkj;-><init>(Lcom/google/android/gms/internal/measurement/zzkk;)V

    iput-object p0, v2, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object p2, v2, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Landroid/content/SharedPreferences;

    .line 14
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 15
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    :catchall_67
    move-exception p0

    .line 10
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12
    throw p0

    .line 16
    :cond_6c
    :goto_6c
    monitor-exit v0

    return-object v2

    :catchall_6e
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzkk;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zze:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzf:Ljava/util/Map;

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzc:Ljava/lang/Runnable;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzki;->zzc()V

    .line 2
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_28

    .line 3
    monitor-enter p0

    :try_start_d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzg:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjn;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzjn;->zza()V

    goto :goto_13

    .line 6
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw p1

    :catchall_28
    move-exception p0

    .line 2
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method static declared-synchronized zzd()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/measurement/zzkk;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzkk;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Landroid/content/SharedPreferences;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzkk;->zzd:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 2
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_d

    .line 4
    :cond_27
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzf:Ljava/util/Map;

    if-nez v0, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zze:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzf:Ljava/util/Map;

    if-nez v0, :cond_21

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    :try_start_f
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkk;->zzf:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 3
    :try_start_17
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    goto :goto_21

    :catchall_1c
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4
    throw p1

    .line 5
    :cond_21
    :goto_21
    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method
