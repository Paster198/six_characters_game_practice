.class public Lcom/google/android/gms/internal/play_billing/zzav;
.super Landroid/os/Binder;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static globalInterceptor:Lcom/google/android/gms/internal/play_billing/zzax;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzav;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized installTransactionInterceptorPackagePrivate(Lcom/google/android/gms/internal/play_billing/zzax;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzav;

    monitor-enter v0

    if-eqz p0, :cond_17

    .line 1
    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzav;->globalInterceptor:Lcom/google/android/gms/internal/play_billing/zzax;

    if-nez v1, :cond_d

    .line 2
    sput-object p0, Lcom/google/android/gms/internal/play_billing/zzav;->globalInterceptor:Lcom/google/android/gms/internal/play_billing/zzax;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    monitor-exit v0

    return-void

    .line 1
    :cond_d
    :try_start_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Duplicate TransactionInterceptor installation."

    .line 2
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_15
    move-exception p0

    goto :goto_1f

    .line 1
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null interceptor"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_15

    throw p0
.end method

.method private routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0xffffff

    if-le p1, v0, :cond_a

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzav;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected enforceNoDataAvail(Landroid/os/Parcel;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzav;->globalInterceptor:Lcom/google/android/gms/internal/play_billing/zzax;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzax;->zza()V

    return-void

    .line 2
    :cond_8
    sget v0, Lcom/google/android/gms/internal/play_billing/zzaw;->zza:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result p1

    if-gtz p1, :cond_11

    return-void

    .line 4
    :cond_11
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parcel data not fully consumed, unread size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzav;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzav;->globalInterceptor:Lcom/google/android/gms/internal/play_billing/zzax;

    if-nez v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzav;->dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 3
    :cond_11
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzax;->zzb()Z

    move-result p1

    return p1
.end method
