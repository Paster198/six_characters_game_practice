.class public interface abstract Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onClearRegistry(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetCredential(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onImportCredentials(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/PendingImportCredentialsHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRegisterCredentials(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/RegistrationResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRegisterExport(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/RegisterExportResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
