.class public abstract Lcom/google/android/gms/internal/fido/zzf;
.super Lcom/google/android/gms/internal/fido/zzb;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzg;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "com.google.android.gms.fido.fido2.api.ICredentialListCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fido/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_8
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fido/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzc;->zzc(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzf;->zzc(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_21

    .line 4
    :cond_17
    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzc;->zzb(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/fido/zzc;->zzc(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzf;->zzb(Ljava/util/List;)V

    .line 7
    :goto_21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
