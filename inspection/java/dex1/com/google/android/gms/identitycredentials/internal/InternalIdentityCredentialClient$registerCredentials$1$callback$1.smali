.class public final Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$registerCredentials$1$callback$1;
.super Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialBaseCallbacks;
.source "com.google.android.gms:play-services-identity-credentials@@16.0.0-alpha02"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient;->registerCredentials(Lcom/google/android/gms/identitycredentials/RegistrationRequest;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$registerCredentials$1$callback$1",
        "Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialBaseCallbacks;",
        "onRegisterCredentials",
        "",
        "status",
        "Lcom/google/android/gms/common/api/Status;",
        "result",
        "Lcom/google/android/gms/identitycredentials/RegistrationResponse;",
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


# instance fields
.field final synthetic $completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/identitycredentials/RegistrationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/identitycredentials/RegistrationResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$registerCredentials$1$callback$1;->$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/identitycredentials/internal/IdentityCredentialBaseCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterCredentials(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/identitycredentials/RegistrationResponse;)V
    .registers 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/identitycredentials/internal/InternalIdentityCredentialClient$registerCredentials$1$callback$1;->$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
