.class public Lcom/google/android/gms/internal/auth_blockstore/zzb;
.super Landroid/os/Binder;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static globalInterceptor:Lcom/google/android/gms/internal/auth_blockstore/zzd;


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
    invoke-virtual {p0, p0, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->getInterfaceDescriptor()Ljava/lang/String;

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

    throw p1
.end method

.method protected enforceNoDataAvail(Landroid/os/Parcel;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth_blockstore/zzb;->globalInterceptor:Lcom/google/android/gms/internal/auth_blockstore/zzd;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth_blockstore/zzd;->zza()V

    return-void

    .line 2
    :cond_8
    sget v0, Lcom/google/android/gms/internal/auth_blockstore/zzc;->zza:I

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/auth_blockstore/zzb;->globalInterceptor:Lcom/google/android/gms/internal/auth_blockstore/zzd;

    if-nez v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 3
    :cond_11
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth_blockstore/zzd;->zzb()Z

    move-result p1

    return p1
.end method
