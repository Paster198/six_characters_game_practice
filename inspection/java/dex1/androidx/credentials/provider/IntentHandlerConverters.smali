.class public final Landroidx/credentials/provider/IntentHandlerConverters;
.super Ljava/lang/Object;
.source "IntentHandlerConverters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0002H\u0007\u001a\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u0002H\u0007\u001a\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0008*\u00020\u0002H\u0007\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u0002H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "getBeginGetResponse",
        "Landroidx/credentials/provider/BeginGetCredentialResponse;",
        "Landroid/content/Intent;",
        "getCreateCredentialCredentialResponse",
        "Landroid/credentials/CreateCredentialResponse;",
        "getCreateCredentialException",
        "Landroid/credentials/CreateCredentialException;",
        "getGetCredentialException",
        "Landroid/credentials/GetCredentialException;",
        "getGetCredentialResponse",
        "Landroid/credentials/GetCredentialResponse;",
        "credentials_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBeginGetResponse(Landroid/content/Intent;)Landroidx/credentials/provider/BeginGetCredentialResponse;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-string v0, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return-object v2

    .line 66
    :cond_f
    const-class v1, Landroid/service/credentials/BeginGetCredentialResponse;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/credentials/BeginGetCredentialResponse;

    if-nez p0, :cond_1a

    return-object v2

    .line 71
    :cond_1a
    sget-object v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;->convertToJetpackResponse(Landroid/service/credentials/BeginGetCredentialResponse;)Landroidx/credentials/provider/BeginGetCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final getCreateCredentialCredentialResponse(Landroid/content/Intent;)Landroid/credentials/CreateCredentialResponse;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_f
    const-class v1, Landroid/credentials/CreateCredentialResponse;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/CreateCredentialResponse;

    return-object p0
.end method

.method public static final getCreateCredentialException(Landroid/content/Intent;)Landroid/credentials/CreateCredentialException;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_f
    const-class v1, Landroid/credentials/CreateCredentialException;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/CreateCredentialException;

    return-object p0
.end method

.method public static final getGetCredentialException(Landroid/content/Intent;)Landroid/credentials/GetCredentialException;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_f
    const-class v1, Landroid/credentials/GetCredentialException;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/GetCredentialException;

    return-object p0
.end method

.method public static final getGetCredentialResponse(Landroid/content/Intent;)Landroid/credentials/GetCredentialResponse;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_f
    const-class v1, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/GetCredentialResponse;

    return-object p0
.end method
