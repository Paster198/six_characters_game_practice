.class public abstract Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub;
.super Lcom/google/android/gms/internal/auth_blockstore/zzb;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    const-string v0, "com.google.android.gms.auth.blockstore.restorecredential.internal.IRestoreCredentialService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;

    if-eqz v1, :cond_11

    .line 2
    check-cast v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
