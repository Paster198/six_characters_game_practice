.class public interface abstract Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IRestoreCredentialService$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearRestoreCredential(Lcom/google/android/gms/auth/blockstore/restorecredential/ClearRestoreCredentialRequest;Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IClearRestoreCredentialCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createRestoreCredential(Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRestoreCredential(Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialRequest;Lcom/google/android/gms/auth/blockstore/restorecredential/internal/IGetRestoreCredentialCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
