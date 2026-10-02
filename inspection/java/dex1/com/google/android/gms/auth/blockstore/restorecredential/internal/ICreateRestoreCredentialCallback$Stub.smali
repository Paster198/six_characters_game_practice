.class public abstract Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback$Stub;
.super Lcom/google/android/gms/internal/auth_blockstore/zzb;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.auth.blockstore.restorecredential.internal.ICreateRestoreCredentialCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth_blockstore/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1a

    .line 1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    sget-object p4, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/auth_blockstore/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth_blockstore/zzb;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback$Stub;->onCreateRestoreCredential(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;)V

    return p3

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method
