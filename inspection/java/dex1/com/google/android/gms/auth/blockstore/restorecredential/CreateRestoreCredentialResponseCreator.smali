.class public final Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponseCreator;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static writeToParcel(Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;->getResponseBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1f

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v2

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 5
    :cond_1a
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5

    .line 7
    :cond_1f
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 8
    new-instance p1, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;

    invoke-direct {p1, v1}, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponseCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponseCreator;->newArray(I)[Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;

    move-result-object p1

    return-object p1
.end method
