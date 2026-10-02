.class public Lcom/google/android/gms/internal/common/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final zza:Landroid/os/IBinder;

.field private final zzb:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    return-object v0
.end method

.method protected final zzB(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_13
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_11
    move-exception p1

    goto :goto_18

    :catch_13
    move-exception p1

    .line 4
    :try_start_14
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    throw p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_11

    .line 6
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 7
    throw p1
.end method

.method protected final zzC(ILandroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {p1, v2, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_c
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 3
    throw p1
.end method

.method protected final zzD(ILandroid/os/Parcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zza;->zza:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, p2, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readException()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_15

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_15
    move-exception v0

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 6
    throw v0
.end method

.method protected final zza()Landroid/os/Parcel;
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zza;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method
