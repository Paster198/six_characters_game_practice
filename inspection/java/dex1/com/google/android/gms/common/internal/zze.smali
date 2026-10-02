.class public final Lcom/google/android/gms/common/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-nez p2, :cond_a

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(I)V

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_f
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 2
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1e

    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v2, :cond_1e

    .line 3
    check-cast v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    goto :goto_23

    .line 6
    :cond_1e
    new-instance v1, Lcom/google/android/gms/common/internal/zzaa;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/internal/zzaa;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_23
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    .line 5
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_31

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 p2, 0x0

    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(ILandroid/os/Bundle;I)V

    return-void

    :catchall_31
    move-exception p1

    .line 5
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1c

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1c
    move-exception p1

    .line 2
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method
