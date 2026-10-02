.class public interface abstract Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IGetRestoreCredentialCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IGetRestoreCredentialCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetRestoreCredential(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
