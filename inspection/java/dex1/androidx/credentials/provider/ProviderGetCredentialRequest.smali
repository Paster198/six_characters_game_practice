.class public final Landroidx/credentials/provider/ProviderGetCredentialRequest;
.super Ljava/lang/Object;
.source "ProviderGetCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B)\u0008\u0017\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB1\u0008\u0007\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/credentials/provider/ProviderGetCredentialRequest;",
        "",
        "credentialOptions",
        "",
        "Landroidx/credentials/CredentialOption;",
        "callingAppInfo",
        "Landroidx/credentials/provider/CallingAppInfo;",
        "biometricPromptResult",
        "Landroidx/credentials/provider/BiometricPromptResult;",
        "(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;)V",
        "sourceBundle",
        "Landroid/os/Bundle;",
        "(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;Landroid/os/Bundle;)V",
        "getBiometricPromptResult",
        "()Landroidx/credentials/provider/BiometricPromptResult;",
        "getCallingAppInfo",
        "()Landroidx/credentials/provider/CallingAppInfo;",
        "getCredentialOptions",
        "()Ljava/util/List;",
        "getSourceBundle",
        "()Landroid/os/Bundle;",
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
.field public static final Companion:Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;

.field private static final EXTRA_CREDENTIAL_OPTION_ALLOWED_PROVIDERS_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_ALLOWED_PROVIDERS_"

.field private static final EXTRA_CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_CANDIDATE_QUERY_DATA_"

.field private static final EXTRA_CREDENTIAL_OPTION_CREDENTIAL_RETRIEVAL_DATA_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_CREDENTIAL_RETRIEVAL_DATA_"

.field private static final EXTRA_CREDENTIAL_OPTION_IS_SYSTEM_PROVIDER_REQUIRED_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_IS_SYSTEM_PROVIDER_REQUIRED_"

.field private static final EXTRA_CREDENTIAL_OPTION_SIZE:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_SIZE"

.field private static final EXTRA_CREDENTIAL_OPTION_TYPE_PREFIX:Ljava/lang/String; = "androidx.credentials.provider.extra.CREDENTIAL_OPTION_TYPE_"


# instance fields
.field private final biometricPromptResult:Landroidx/credentials/provider/BiometricPromptResult;

.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

.field private final credentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Landroidx/credentials/provider/CallingAppInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/ProviderGetCredentialRequest;-><init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Landroidx/credentials/provider/CallingAppInfo;",
            "Landroidx/credentials/provider/BiometricPromptResult;",
            ")V"
        }
    .end annotation

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/credentials/provider/ProviderGetCredentialRequest;-><init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 71
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/ProviderGetCredentialRequest;-><init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Landroidx/credentials/provider/CallingAppInfo;",
            "Landroidx/credentials/provider/BiometricPromptResult;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->credentialOptions:Ljava/util/List;

    .line 50
    iput-object p2, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    .line 51
    iput-object p3, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->biometricPromptResult:Landroidx/credentials/provider/BiometricPromptResult;

    .line 53
    iput-object p4, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->sourceBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static final asBundle(Landroidx/credentials/provider/ProviderGetCredentialRequest;)Landroid/os/Bundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;->asBundle(Landroidx/credentials/provider/ProviderGetCredentialRequest;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final createFrom$credentials_release(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderGetCredentialRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/CredentialOption;",
            ">;",
            "Landroidx/credentials/provider/CallingAppInfo;",
            "Landroidx/credentials/provider/BiometricPromptResult;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/credentials/provider/ProviderGetCredentialRequest;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;->createFrom$credentials_release(Ljava/util/List;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderGetCredentialRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderGetCredentialRequest;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->Companion:Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/ProviderGetCredentialRequest$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderGetCredentialRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBiometricPromptResult()Landroidx/credentials/provider/BiometricPromptResult;
    .registers 2

    .line 51
    iget-object v0, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->biometricPromptResult:Landroidx/credentials/provider/BiometricPromptResult;

    return-object v0
.end method

.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .registers 2

    .line 50
    iget-object v0, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-object v0
.end method

.method public final getCredentialOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/CredentialOption;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->credentialOptions:Ljava/util/List;

    return-object v0
.end method

.method public final getSourceBundle()Landroid/os/Bundle;
    .registers 2

    .line 53
    iget-object v0, p0, Landroidx/credentials/provider/ProviderGetCredentialRequest;->sourceBundle:Landroid/os/Bundle;

    return-object v0
.end method
