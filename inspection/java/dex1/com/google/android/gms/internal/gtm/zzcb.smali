.class public final Lcom/google/android/gms/internal/gtm/zzcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcc;

.field private volatile zzb:Z

.field private volatile zzc:Lcom/google/android/gms/internal/gtm/zzey;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzcc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "AnalyticsServiceConnection.onServiceConnected"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    monitor-enter p0

    if-nez p2, :cond_14

    :try_start_8
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string p2, "Service connected with null binder"

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_44

    .line 15
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_89

    return-void

    :cond_14
    const/4 p1, 0x0

    .line 2
    :try_start_15
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    .line 4
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzey;

    if-eqz v1, :cond_2e

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzey;

    goto :goto_33

    .line 14
    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzey;

    .line 7
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/gtm/zzey;-><init>(Landroid/os/IBinder;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_33} :catch_46
    .catchall {:try_start_15 .. :try_end_33} :catchall_44

    .line 6
    :goto_33
    :try_start_33
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v1, "Bound to IAnalyticsService interface"

    .line 8
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3a} :catch_47
    .catchall {:try_start_33 .. :try_end_3a} :catchall_44

    goto :goto_4e

    .line 7
    :cond_3b
    :try_start_3b
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v1, "Got binder with a wrong descriptor"

    .line 9
    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_46
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    move-object v0, p1

    goto :goto_4e

    :catchall_44
    move-exception p1

    goto :goto_85

    :catch_46
    move-object v0, p1

    .line 16
    :catch_47
    :try_start_47
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v1, "Service connect failed to get IAnalyticsService"

    .line 10
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_44

    :goto_4e
    if-nez v0, :cond_64

    .line 11
    :try_start_50
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zza(Lcom/google/android/gms/internal/gtm/zzcc;)Lcom/google/android/gms/internal/gtm/zzcb;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_63} :catch_80
    .catchall {:try_start_50 .. :try_end_63} :catchall_44

    goto :goto_80

    .line 16
    :cond_64
    :try_start_64
    iget-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzb:Z

    if-nez p2, :cond_7e

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v1, "onServiceConnected received after the timeout limit"

    .line 12
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbz;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbz;-><init>(Lcom/google/android/gms/internal/gtm/zzcb;Lcom/google/android/gms/internal/gtm/zzey;[B)V

    .line 14
    invoke-virtual {p2, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    goto :goto_80

    :cond_7e
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzc:Lcom/google/android/gms/internal/gtm/zzey;
    :try_end_80
    .catchall {:try_start_64 .. :try_end_80} :catchall_44

    .line 15
    :catch_80
    :goto_80
    :try_start_80
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    monitor-exit p0

    return-void

    .line 15
    :goto_85
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    throw p1

    :catchall_89
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_89

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "AnalyticsServiceConnection.onServiceDisconnected"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzca;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzca;-><init>(Lcom/google/android/gms/internal/gtm/zzcb;Landroid/content/ComponentName;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/gtm/zzey;
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    .line 3
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_package_name"

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_2b
    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzc:Lcom/google/android/gms/internal/gtm/zzey;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzb:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzcc;->zza(Lcom/google/android/gms/internal/gtm/zzcc;)Lcom/google/android/gms/internal/gtm/zzcb;

    move-result-object v4

    const/16 v5, 0x81

    .line 7
    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v2, "Bind to service requested"

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_4e

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzb:Z

    .line 9
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_7b

    return-object v3

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzw()Lcom/google/android/gms/internal/gtm/zzct;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzeu;->zzL:Lcom/google/android/gms/internal/gtm/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzet;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 12
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_62} :catch_63
    .catchall {:try_start_4e .. :try_end_62} :catchall_7b

    goto :goto_6a

    .line 16
    :catch_63
    :try_start_63
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v2, "Wait for service connect was interrupted"

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 12
    :goto_6a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzc:Lcom/google/android/gms/internal/gtm/zzey;

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zzc:Lcom/google/android/gms/internal/gtm/zzey;

    if-nez v0, :cond_79

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    const-string v2, "Successfully bound to service but never got onServiceConnected callback"

    .line 14
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    .line 15
    :cond_79
    monitor-exit p0

    return-object v0

    :catchall_7b
    move-exception v0

    .line 16
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_7b

    throw v0
.end method
