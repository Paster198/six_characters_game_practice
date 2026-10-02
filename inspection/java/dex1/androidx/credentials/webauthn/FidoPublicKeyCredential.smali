.class public final Landroidx/credentials/webauthn/FidoPublicKeyCredential;
.super Ljava/lang/Object;
.source "FidoPublicKeyCredential.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u000f\u001a\u00020\u0007R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/credentials/webauthn/FidoPublicKeyCredential;",
        "",
        "rawId",
        "",
        "response",
        "Landroidx/credentials/webauthn/AuthenticatorResponse;",
        "authenticatorAttachment",
        "",
        "([BLandroidx/credentials/webauthn/AuthenticatorResponse;Ljava/lang/String;)V",
        "getAuthenticatorAttachment",
        "()Ljava/lang/String;",
        "getRawId",
        "()[B",
        "getResponse",
        "()Landroidx/credentials/webauthn/AuthenticatorResponse;",
        "json",
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


# instance fields
.field private final authenticatorAttachment:Ljava/lang/String;

.field private final rawId:[B

.field private final response:Landroidx/credentials/webauthn/AuthenticatorResponse;


# direct methods
.method public constructor <init>([BLandroidx/credentials/webauthn/AuthenticatorResponse;Ljava/lang/String;)V
    .registers 5

    const-string v0, "rawId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticatorAttachment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->rawId:[B

    .line 25
    iput-object p2, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->response:Landroidx/credentials/webauthn/AuthenticatorResponse;

    .line 26
    iput-object p3, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->authenticatorAttachment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAuthenticatorAttachment()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->authenticatorAttachment:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawId()[B
    .registers 2

    .line 24
    iget-object v0, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->rawId:[B

    return-object v0
.end method

.method public final getResponse()Landroidx/credentials/webauthn/AuthenticatorResponse;
    .registers 2

    .line 25
    iget-object v0, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->response:Landroidx/credentials/webauthn/AuthenticatorResponse;

    return-object v0
.end method

.method public final json()Ljava/lang/String;
    .registers 4

    .line 32
    sget-object v0, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    iget-object v1, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->rawId:[B

    invoke-virtual {v0, v1}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v2, "rawId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v0, "type"

    const-string v2, "public-key"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v0, "authenticatorAttachment"

    iget-object v2, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->authenticatorAttachment:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Landroidx/credentials/webauthn/FidoPublicKeyCredential;->response:Landroidx/credentials/webauthn/AuthenticatorResponse;

    invoke-interface {v0}, Landroidx/credentials/webauthn/AuthenticatorResponse;->json()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "response"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "clientExtensionResults"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ret.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
