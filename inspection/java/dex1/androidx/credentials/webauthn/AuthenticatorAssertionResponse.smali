.class public final Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;
.super Ljava/lang/Object;
.source "AuthenticatorAssertionResponse.kt"

# interfaces
.implements Landroidx/credentials/webauthn/AuthenticatorResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J\u0008\u0010!\u001a\u00020\u0017H\u0016R\u001a\u0010\u0011\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013\"\u0004\u0008\u001e\u0010\u0015R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;",
        "Landroidx/credentials/webauthn/AuthenticatorResponse;",
        "requestOptions",
        "Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;",
        "credentialId",
        "",
        "origin",
        "",
        "up",
        "",
        "uv",
        "be",
        "bs",
        "userHandle",
        "packageName",
        "clientDataHash",
        "(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[B)V",
        "authenticatorData",
        "getAuthenticatorData",
        "()[B",
        "setAuthenticatorData",
        "([B)V",
        "clientJson",
        "Lorg/json/JSONObject;",
        "getClientJson",
        "()Lorg/json/JSONObject;",
        "setClientJson",
        "(Lorg/json/JSONObject;)V",
        "signature",
        "getSignature",
        "setSignature",
        "dataToSign",
        "defaultAuthenticatorData",
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
.field private authenticatorData:[B

.field private final be:Z

.field private final bs:Z

.field private final clientDataHash:[B

.field private clientJson:Lorg/json/JSONObject;

.field private final credentialId:[B

.field private final origin:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;

.field private signature:[B

.field private final up:Z

.field private userHandle:[B

.field private final uv:Z


# direct methods
.method public constructor <init>(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[B)V
    .registers 13

    const-string v0, "requestOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "userHandle"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;

    .line 26
    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->credentialId:[B

    .line 27
    iput-object p3, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->origin:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->up:Z

    .line 29
    iput-boolean p5, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->uv:Z

    .line 30
    iput-boolean p6, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->be:Z

    .line 31
    iput-boolean p7, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->bs:Z

    .line 32
    iput-object p8, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->userHandle:[B

    .line 33
    iput-object p9, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->packageName:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientDataHash:[B

    .line 36
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientJson:Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 38
    new-array p2, p2, [B

    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    .line 41
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p2

    const-string p4, "type"

    const-string p5, "webauthn.get"

    invoke-virtual {p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p2

    sget-object p4, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    invoke-virtual {p1}, Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;->getChallenge()[B

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p4, "challenge"

    invoke-virtual {p2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p9, :cond_67

    .line 45
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "androidPackageName"

    invoke-virtual {p1, p2, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_67
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->defaultAuthenticatorData()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit16 p12, p11, 0x100

    const/4 v0, 0x0

    if-eqz p12, :cond_6

    move-object p9, v0

    :cond_6
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_c

    move-object p11, v0

    goto :goto_d

    :cond_c
    move-object p11, p10

    :goto_d
    move-object p10, p9

    move-object p9, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 24
    invoke-direct/range {p1 .. p11}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;-><init>(Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;[BLjava/lang/String;ZZZZ[BLjava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public final dataToSign()[B
    .registers 4

    .line 72
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 74
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientDataHash:[B

    if-eqz v1, :cond_b

    goto :goto_2c

    .line 77
    :cond_b
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientJson.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v0, "md.digest(clientJson.toString().toByteArray())"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    :goto_2c
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final defaultAuthenticatorData()[B
    .registers 5

    .line 52
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 53
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;

    invoke-virtual {v1}, Landroidx/credentials/webauthn/PublicKeyCredentialRequestOptions;->getRpId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 55
    iget-boolean v1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->up:Z

    .line 58
    iget-boolean v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->uv:Z

    if-eqz v2, :cond_23

    or-int/lit8 v1, v1, 0x4

    .line 61
    :cond_23
    iget-boolean v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->be:Z

    if-eqz v2, :cond_29

    or-int/lit8 v1, v1, 0x8

    .line 64
    :cond_29
    iget-boolean v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->bs:Z

    if-eqz v2, :cond_2f

    or-int/lit8 v1, v1, 0x10

    .line 67
    :cond_2f
    const-string v2, "rpHash"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-byte v1, v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_4a

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    return-object v0

    :array_4a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final getAuthenticatorData()[B
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    return-object v0
.end method

.method public getClientJson()Lorg/json/JSONObject;
    .registers 2

    .line 36
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getSignature()[B
    .registers 2

    .line 38
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    return-object v0
.end method

.method public json()Lorg/json/JSONObject;
    .registers 4

    .line 84
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientJson.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientDataHash:[B

    if-nez v2, :cond_2c

    .line 87
    sget-object v2, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    invoke-virtual {v2, v0}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clientDataJSON"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_2c
    sget-object v0, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "authenticatorData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    sget-object v0, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "signature"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    sget-object v0, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->userHandle:[B

    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "userHandle"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public final setAuthenticatorData([B)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->authenticatorData:[B

    return-void
.end method

.method public setClientJson(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->clientJson:Lorg/json/JSONObject;

    return-void
.end method

.method public final setSignature([B)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAssertionResponse;->signature:[B

    return-void
.end method
