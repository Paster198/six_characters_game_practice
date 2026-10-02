.class public interface abstract Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u0006\u0010\u0005\u001a\u00020\tH\'J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00032\u0006\u0010\u0005\u001a\u00020\u000cH\'J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\u0006\u0010\u0005\u001a\u00020\u000fH\'J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00032\u0006\u0010\u0005\u001a\u00020\u0012H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0013\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;",
        "",
        "getCredential",
        "Lcom/google/android/gms/tasks/Task;",
        "Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;",
        "request",
        "Lcom/google/android/gms/identitycredentials/GetCredentialRequest;",
        "registerCredentials",
        "Lcom/google/android/gms/identitycredentials/RegistrationResponse;",
        "Lcom/google/android/gms/identitycredentials/RegistrationRequest;",
        "clearRegistry",
        "Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;",
        "Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;",
        "importCredentials",
        "Lcom/google/android/gms/identitycredentials/PendingImportCredentialsHandle;",
        "Lcom/google/android/gms/identitycredentials/ImportCredentialsRequest;",
        "registerExport",
        "Lcom/google/android/gms/identitycredentials/RegisterExportResponse;",
        "Lcom/google/android/gms/identitycredentials/RegisterExportRequest;",
        "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract clearRegistry(Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/identitycredentials/ClearRegistryResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCredential(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/identitycredentials/GetCredentialRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerCredentials(Lcom/google/android/gms/identitycredentials/RegistrationRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/identitycredentials/RegistrationRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/identitycredentials/RegistrationResponse;",
            ">;"
        }
    .end annotation
.end method
