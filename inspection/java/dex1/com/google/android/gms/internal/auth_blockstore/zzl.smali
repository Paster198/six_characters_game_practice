.class public abstract Lcom/google/android/gms/internal/auth_blockstore/zzl;
.super Lcom/google/android/gms/internal/auth_blockstore/zzb;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/auth_blockstore/zzm;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.auth.blockstore.internal.IRetrieveBytesCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth_blockstore/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1f

    const/4 p4, 0x2

    if-eq p1, p4, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_8
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    sget-object p4, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/auth_blockstore/zzl;->zzb(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/blockstore/RetrieveBytesResponse;)V

    goto :goto_31

    .line 5
    :cond_1f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/auth_blockstore/zzl;->zza(Lcom/google/android/gms/common/api/Status;[B)V

    :goto_31
    return p3
.end method
