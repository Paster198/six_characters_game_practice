.class public final Lcom/google/android/gms/internal/measurement/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjd;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzb:Ljava/util/HashMap;

.field private final zzc:Ljava/util/HashMap;

.field private final zzd:Ljava/util/HashMap;

.field private final zze:Ljava/util/HashMap;

.field private final zzf:Ljava/util/HashMap;

.field private zzg:Ljava/lang/Object;

.field private zzh:Z

.field private final zzi:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzc:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    .line 3
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzd:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zze:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzf:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzg:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzh:Z

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzi:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/measurement/zzjh;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    if-eqz p1, :cond_ef

    .line 1
    monitor-enter p0

    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_2c

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p3, Ljava/util/HashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p3, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzg:Ljava/lang/Object;

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/measurement/zzjf;-><init>(Lcom/google/android/gms/internal/measurement/zzjh;Landroid/os/Handler;)V

    invoke-virtual {p1, p3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_56

    .line 51
    :cond_2c
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-eqz p3, :cond_56

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    .line 5
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzc:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzd:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zze:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzf:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzg:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzh:Z

    .line 3
    :cond_56
    :goto_56
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzg:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_6b

    goto :goto_6c

    :cond_6b
    move-object v2, p1

    .line 12
    :goto_6c
    monitor-exit p0

    return-object v2

    .line 44
    :cond_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_eb

    .line 45
    :try_start_6f
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_75
    .catch Lcom/google/android/gms/internal/measurement/zzjg; {:try_start_6f .. :try_end_75} :catch_ea

    if-eqz v4, :cond_e2

    .line 46
    :try_start_77
    sget-object v5, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Landroid/net/Uri;

    new-array v8, v0, [Ljava/lang/String;

    aput-object p2, v8, v1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 47
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_84} :catch_d4
    .catchall {:try_start_77 .. :try_end_84} :catchall_d1

    if-eqz p1, :cond_bd

    .line 49
    :try_start_86
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 52
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_ba

    .line 50
    :try_start_90
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_93} :catch_d4
    .catchall {:try_start_90 .. :try_end_93} :catchall_d1

    .line 51
    :try_start_93
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_96
    .catch Lcom/google/android/gms/internal/measurement/zzjg; {:try_start_93 .. :try_end_96} :catch_ea

    goto :goto_9e

    .line 50
    :cond_97
    :try_start_97
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9a} :catch_d4
    .catchall {:try_start_97 .. :try_end_9a} :catchall_d1

    .line 51
    :try_start_9a
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_9d
    .catch Lcom/google/android/gms/internal/measurement/zzjg; {:try_start_9a .. :try_end_9d} :catch_ea

    move-object v0, v2

    :goto_9e
    if-eqz v0, :cond_a7

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    move-object v0, v2

    :cond_a7
    monitor-enter p0

    :try_start_a8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzg:Ljava/lang/Object;

    if-ne p3, p1, :cond_b1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:Ljava/util/HashMap;

    .line 56
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_b1
    monitor-exit p0

    if-eqz v0, :cond_b5

    return-object v0

    :cond_b5
    return-object v2

    :catchall_b6
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_b6

    throw p1

    :catchall_ba
    move-exception v0

    move-object p2, v0

    goto :goto_c5

    .line 47
    :cond_bd
    :try_start_bd
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzjg;

    const-string p3, "ContentProvider query returned null cursor"

    .line 48
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_ba

    :goto_c5
    if-eqz p1, :cond_d0

    .line 47
    :try_start_c7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    goto :goto_d0

    :catchall_cb
    move-exception v0

    move-object p1, v0

    :try_start_cd
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw p2
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_cd .. :try_end_d1} :catch_d4
    .catchall {:try_start_cd .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception v0

    move-object p1, v0

    goto :goto_de

    :catch_d4
    move-exception v0

    move-object p1, v0

    .line 18
    :try_start_d6
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzjg;

    const-string p3, "ContentProvider query failed"

    .line 53
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_d1

    .line 51
    :goto_de
    :try_start_de
    invoke-virtual {v4}, Landroid/content/ContentProviderClient;->release()Z

    .line 54
    throw p1

    .line 45
    :cond_e2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjg;

    const-string p2, "Unable to acquire ContentProviderClient"

    .line 46
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjg;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ea
    .catch Lcom/google/android/gms/internal/measurement/zzjg; {:try_start_de .. :try_end_ea} :catch_ea

    :catch_ea
    return-object v2

    :catchall_eb
    move-exception v0

    move-object p1, v0

    .line 44
    :try_start_ed
    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_eb

    throw p1

    .line 9
    :cond_ef
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ContentResolver needed with GservicesDelegateSupplier.init()"

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
