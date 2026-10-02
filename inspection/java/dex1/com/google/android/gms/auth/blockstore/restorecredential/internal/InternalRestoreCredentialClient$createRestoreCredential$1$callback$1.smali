.class public final Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$createRestoreCredential$1$callback$1;
.super Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback$Stub;
.source "com.google.android.gms:play-services-auth-blockstore@@16.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient;->createRestoreCredential(Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialRequest;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$createRestoreCredential$1$callback$1",
        "Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback$Stub;",
        "onCreateRestoreCredential",
        "",
        "status",
        "Lcom/google/android/gms/common/api/Status;",
        "response",
        "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;",
        "java.com.google.android.gmscore.integ.client.auth_blockstore_client_auth_blockstore"
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
            "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;",
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
            "Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$createRestoreCredential$1$callback$1;->$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/ICreateRestoreCredentialCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRestoreCredential(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/blockstore/restorecredential/CreateRestoreCredentialResponse;)V
    .registers 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/blockstore/restorecredential/internal/InternalRestoreCredentialClient$createRestoreCredential$1$callback$1;->$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
