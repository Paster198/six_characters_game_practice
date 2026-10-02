.class public final Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;
.super Ljava/lang/Object;
.source "ProviderCreateCredentialRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/ProviderCreateCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;",
        "",
        "()V",
        "EXTRA_CREATE_CREDENTIAL_REQUEST_TYPE",
        "",
        "EXTRA_CREATE_REQUEST_CANDIDATE_QUERY_DATA",
        "EXTRA_CREATE_REQUEST_CREDENTIAL_DATA",
        "asBundle",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/provider/ProviderCreateCredentialRequest;",
        "fromBundle",
        "bundle",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/credentials/provider/ProviderCreateCredentialRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBundle(Landroidx/credentials/provider/ProviderCreateCredentialRequest;)Landroid/os/Bundle;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->getCallingRequest()Landroidx/credentials/CreateCredentialRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidx.credentials.provider.extra.CREATE_CREDENTIAL_REQUEST_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->getCallingRequest()Landroidx/credentials/CreateCredentialRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    const-string v2, "androidx.credentials.provider.extra.CREATE_REQUEST_CREDENTIAL_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p1}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->getCallingRequest()Landroidx/credentials/CreateCredentialRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/credentials/CreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    const-string v2, "androidx.credentials.provider.extra.CREATE_REQUEST_CANDIDATE_QUERY_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    sget-object v1, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    invoke-virtual {p1}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/credentials/provider/CallingAppInfo$Companion;->setCallingAppInfo$credentials_release(Landroid/os/Bundle;Landroidx/credentials/provider/CallingAppInfo;)V

    return-object v0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/ProviderCreateCredentialRequest;
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "androidx.credentials.provider.extra.CREATE_CREDENTIAL_REQUEST_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 95
    const-string v0, "androidx.credentials.provider.extra.CREATE_REQUEST_CREDENTIAL_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1a
    move-object v3, v0

    .line 97
    const-string v0, "androidx.credentials.provider.extra.CREATE_REQUEST_CANDIDATE_QUERY_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_28
    move-object v4, v0

    .line 98
    const-string v0, "androidx.credentials.provider.extra.CREDENTIAL_REQUEST_ORIGIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    sget-object v0, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/CallingAppInfo$Companion;->extractCallingAppInfo$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/provider/CallingAppInfo;

    move-result-object v9

    if-eqz v9, :cond_5e

    .line 104
    :try_start_37
    new-instance v7, Landroidx/credentials/provider/ProviderCreateCredentialRequest;

    .line 106
    sget-object v1, Landroidx/credentials/CreateCredentialRequest;->Companion:Landroidx/credentials/CreateCredentialRequest$Companion;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/credentials/CreateCredentialRequest$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/lang/String;)Landroidx/credentials/CreateCredentialRequest;

    move-result-object v8

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 104
    invoke-direct/range {v7 .. v12}, Landroidx/credentials/provider/ProviderCreateCredentialRequest;-><init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;Landroidx/credentials/provider/BiometricPromptResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_46} :catch_47

    return-object v7

    :catch_47
    move-exception v0

    move-object p1, v0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conversion failed with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle was missing CallingAppInfo."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle was missing request type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
