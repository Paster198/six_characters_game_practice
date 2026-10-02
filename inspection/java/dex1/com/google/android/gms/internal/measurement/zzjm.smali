.class public final Lcom/google/android/gms/internal/measurement/zzjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjr;


# static fields
.field public static final zza:[Ljava/lang/String;

.field private static final zzb:Ljava/util/Map;


# instance fields
.field private final zzc:Landroid/content/ContentResolver;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Ljava/lang/Runnable;

.field private final zzf:Landroid/database/ContentObserver;

.field private final zzg:Ljava/lang/Object;

.field private volatile zzh:Ljava/util/Map;

.field private final zzi:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjm;->zzb:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjm;->zza:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzg:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzi:Ljava/util/List;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzc:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzd:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zze:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjl;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzjl;-><init>(Lcom/google/android/gms/internal/measurement/zzjm;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzf:Landroid/database/ContentObserver;

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzjm;
    .registers 7

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzjm;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjm;->zzb:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjm;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    if-nez v2, :cond_1c

    :try_start_d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjm;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_1c
    .catchall {:try_start_d .. :try_end_12} :catchall_1e

    :try_start_12
    iget-object p2, v3, Lcom/google/android/gms/internal/measurement/zzjm;->zzf:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_1b} :catch_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1e

    :catch_1b
    move-object v2, v3

    .line 5
    :catch_1c
    :cond_1c
    :try_start_1c
    monitor-exit v0

    return-object v2

    :catchall_1e
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzjm;)Ljava/util/Map;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzc:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzd:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    const-string p0, "ConfigurationContentLdr"

    if-nez v1, :cond_16

    const-string v0, "Unable to acquire ContentProviderClient, using default values"

    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_16
    :try_start_16
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzjm;->zza:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_91
    .catchall {:try_start_16 .. :try_end_1f} :catchall_8e

    if-nez v2, :cond_2e

    :try_start_21
    const-string v0, "ContentProvider query returned null cursor, using default values"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_81

    .line 5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object p0

    .line 6
    :cond_2e
    :try_start_2e
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3f

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_81

    .line 8
    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_91
    .catchall {:try_start_38 .. :try_end_3b} :catchall_8e

    .line 5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    :cond_3f
    const/16 v3, 0x100

    if-gt v0, v3, :cond_49

    .line 9
    :try_start_43
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3, v0}, Landroidx/collection/ArrayMap;-><init>(I)V

    goto :goto_50

    .line 5
    :cond_49
    new-instance v3, Ljava/util/HashMap;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 10
    invoke-direct {v3, v0, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 11
    :goto_50
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    .line 12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 13
    :cond_64
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "Cursor read incomplete (ContentProvider dead?), using default values"

    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_73
    .catchall {:try_start_43 .. :try_end_73} :catchall_81

    .line 8
    :try_start_73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_76} :catch_91
    .catchall {:try_start_73 .. :try_end_76} :catchall_8e

    .line 5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object v0

    .line 8
    :cond_7a
    :try_start_7a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7d} :catch_91
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8e

    .line 5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object v3

    :catchall_81
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_8d

    .line 2
    :try_start_85
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v0

    :try_start_8a
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8d
    :goto_8d
    throw v3
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_8e} :catch_91
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v0

    move-object p0, v0

    goto :goto_9f

    :catch_91
    move-exception v0

    .line 10
    :try_start_92
    const-string v2, "ContentProvider query failed, using default values"

    .line 16
    invoke-static {p0, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_8e

    .line 5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return-object p0

    :goto_9f
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 18
    throw p0
.end method

.method static declared-synchronized zze()V
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/measurement/zzjm;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzjm;->zzb:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjm;

    .line 2
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/zzjm;->zzc:Landroid/content/ContentResolver;

    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/zzjm;->zzf:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_d

    .line 3
    :cond_21
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjm;->zzd()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zzd()Ljava/util/Map;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzh:Ljava/util/Map;

    if-nez v0, :cond_3e

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzh:Ljava/util/Map;

    if-nez v0, :cond_39

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_3b

    :try_start_f
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzjk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/zzjk;-><init>(Lcom/google/android/gms/internal/measurement/zzjm;)V

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzjp;->zza(Lcom/google/android/gms/internal/measurement/zzjq;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_1a} :catch_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_1a} :catch_22
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_1a} :catch_20
    .catchall {:try_start_f .. :try_end_1a} :catchall_1e

    .line 5
    :goto_1a
    :try_start_1a
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3b

    goto :goto_31

    :catchall_1e
    move-exception v2

    goto :goto_35

    :catch_20
    move-exception v2

    goto :goto_25

    :catch_22
    move-exception v2

    goto :goto_25

    :catch_24
    move-exception v2

    .line 7
    :goto_25
    :try_start_25
    const-string v3, "ConfigurationContentLdr"

    const-string v4, "Unable to query ContentProvider, using default values"

    .line 3
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_1e

    goto :goto_1a

    .line 5
    :goto_31
    :try_start_31
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzh:Ljava/util/Map;

    move-object v0, v2

    goto :goto_39

    :goto_35
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    throw v2

    .line 7
    :cond_39
    :goto_39
    monitor-exit v1

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :goto_3e
    if-eqz v0, :cond_41

    return-object v0

    .line 8
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzh:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zze:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_28

    monitor-enter p0

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzi:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjn;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzjn;->zza()V

    goto :goto_13

    .line 5
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw v0

    :catchall_28
    move-exception v1

    .line 2
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method
