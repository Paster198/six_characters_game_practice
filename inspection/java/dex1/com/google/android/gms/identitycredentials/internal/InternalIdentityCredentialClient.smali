.class public final Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;
.super Lcom/google/android/gms/common/api/GoogleApi;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"

# interfaces
.implements Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;",
        "Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t2\u0006\u0010\u000b\u001a\u00020\u000fH\u0016J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\t2\u0006\u0010\u000b\u001a\u00020\u0012H\u0016J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\t2\u0006\u0010\u000b\u001a\u00020\u0015H\u0016J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\t2\u0006\u0010\u000b\u001a\u00020\u0018H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;",
        "Lcom/google/android/gms/common/api/GoogleApi;",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        "Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
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


# direct methods
.method public static synthetic $r8$lambda$MhQWP5IHgyQfxEhTJS_nsUOYfj8(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->getCredential$lambda$0(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jp-XIJgn19zmmplmtVTxHyI6JLw(Lcom/google/android/gms/identitycredentials/RegistrationRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->registerCredentials$lambda$1(Lcom/google/android/gms/identitycredentials/RegistrationRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pIzulL1FOjpZxbboipqOahsXxZo(Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->clearRegistry$lambda$2(Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    # getter for: Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;->API:Lcom/google/android/gms/common/api/Api;
    invoke-static {}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClientKt;->access$getAPI$p()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Api$ApiOptions;->NO_OPTIONS:Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    check-cast v1, Lcom/google/android/gms/common/api/Api$ApiOptions;

    sget-object v2, Lcom/google/android/gms/common/api/GoogleApi$Settings;->DEFAULT_SETTINGS:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method

.method private static final clearRegistry$lambda$2(Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$clearRegistry$1$callback$1;

    invoke-direct {v0, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$clearRegistry$1$callback$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    check-cast v0, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks$Stub;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;

    check-cast v0, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;->clearRegistry(Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;)V

    return-void
.end method

.method private static final getCredential$lambda$0(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$getCredential$1$callback$1;

    invoke-direct {v0, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$getCredential$1$callback$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    check-cast v0, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks$Stub;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;

    check-cast v0, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;->getCredential(Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)V

    return-void
.end method

.method private static final registerCredentials$lambda$1(Lcom/google/android/gms/identitycredentials/RegistrationRequest;Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    const-string v0, "$request"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$registerCredentials$1$callback$1;

    invoke-direct {v0, p2}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$registerCredentials$1$callback$1;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    check-cast v0, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks$Stub;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialClientImpl;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;

    check-cast v0, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialService;->registerCredentials(Lcom/google/android/gms/identitycredentials/internal/IIdentityCredentialCallbacks;Lcom/google/android/gms/identitycredentials/RegistrationRequest;)V

    return-void
.end method


# virtual methods
.method public clearRegistry(Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 6
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

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/identity_credentials/zze;->zzc:Lcom/google/android/gms/common/Feature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/gms/identitycredentials/ClearRegistryRequest;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 v0, 0x7fbf

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "doWrite(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getCredential(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 6
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

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/identity_credentials/zze;->zza:Lcom/google/android/gms/common/Feature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 v0, 0x7fbd

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "doRead(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public registerCredentials(Lcom/google/android/gms/identitycredentials/RegistrationRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 6
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

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/identity_credentials/zze;->zzb:Lcom/google/android/gms/common/Feature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setFeatures([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/gms/identitycredentials/RegistrationRequest;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    const/16 v0, 0x7fbe

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "doWrite(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
