.class public final Landroidx/credentials/provider/ProviderCreateCredentialRequest;
.super Ljava/lang/Object;
.source "ProviderCreateCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/credentials/provider/ProviderCreateCredentialRequest;",
        "",
        "callingRequest",
        "Landroidx/credentials/CreateCredentialRequest;",
        "callingAppInfo",
        "Landroidx/credentials/provider/CallingAppInfo;",
        "biometricPromptResult",
        "Landroidx/credentials/provider/BiometricPromptResult;",
        "(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;)V",
        "getBiometricPromptResult",
        "()Landroidx/credentials/provider/BiometricPromptResult;",
        "getCallingAppInfo",
        "()Landroidx/credentials/provider/CallingAppInfo;",
        "getCallingRequest",
        "()Landroidx/credentials/CreateCredentialRequest;",
        "Companion",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;

.field private static final EXTRA_CREATE_CREDENTIAL_REQUEST_TYPE:Ljava/lang/String; = "androidx.credentials.provider.extra.CREATE_CREDENTIAL_REQUEST_TYPE"

.field private static final EXTRA_CREATE_REQUEST_CANDIDATE_QUERY_DATA:Ljava/lang/String; = "androidx.credentials.provider.extra.CREATE_REQUEST_CANDIDATE_QUERY_DATA"

.field private static final EXTRA_CREATE_REQUEST_CREDENTIAL_DATA:Ljava/lang/String; = "androidx.credentials.provider.extra.CREATE_REQUEST_CREDENTIAL_DATA"


# instance fields
.field private final biometricPromptResult:Landroidx/credentials/provider/BiometricPromptResult;

.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

.field private final callingRequest:Landroidx/credentials/CreateCredentialRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;)V
    .registers 10

    const-string v0, "callingRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;-><init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;)V
    .registers 5

    const-string v0, "callingRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingRequest:Landroidx/credentials/CreateCredentialRequest;

    .line 45
    iput-object p2, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 46
    iput-object p3, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->biometricPromptResult:Landroidx/credentials/provider/BiometricPromptResult;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 43
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;-><init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;)V

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/provider/ProviderCreateCredentialRequest;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;->asBundle(Landroidx/credentials/provider/ProviderCreateCredentialRequest;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderCreateCredentialRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderCreateCredentialRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBiometricPromptResult()Landroidx/credentials/provider/BiometricPromptResult;
    .registers 2

    .line 46
    iget-object v0, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->biometricPromptResult:Landroidx/credentials/provider/BiometricPromptResult;

    return-object v0
.end method

.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .registers 2

    .line 45
    iget-object v0, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-object v0
.end method

.method public final getCallingRequest()Landroidx/credentials/CreateCredentialRequest;
    .registers 2

    .line 44
    iget-object v0, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingRequest:Landroidx/credentials/CreateCredentialRequest;

    return-object v0
.end method
