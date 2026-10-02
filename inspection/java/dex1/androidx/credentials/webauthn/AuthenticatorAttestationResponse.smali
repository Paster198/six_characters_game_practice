.class public final Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;
.super Ljava/lang/Object;
.source "AuthenticatorAttestationResponse.kt"

# interfaces
.implements Landroidx/credentials/webauthn/AuthenticatorResponse;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u001c\u001a\u00020\u0005H\u0002J\r\u0010\u001d\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008\u001eJ\u0008\u0010\u001f\u001a\u00020\u0017H\u0016R\u001a\u0010\u0011\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;",
        "Landroidx/credentials/webauthn/AuthenticatorResponse;",
        "requestOptions",
        "Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;",
        "credentialId",
        "",
        "credentialPublicKey",
        "origin",
        "",
        "up",
        "",
        "uv",
        "be",
        "bs",
        "packageName",
        "clientDataHash",
        "(Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;[B[BLjava/lang/String;ZZZZLjava/lang/String;[B)V",
        "attestationObject",
        "getAttestationObject",
        "()[B",
        "setAttestationObject",
        "([B)V",
        "clientJson",
        "Lorg/json/JSONObject;",
        "getClientJson",
        "()Lorg/json/JSONObject;",
        "setClientJson",
        "(Lorg/json/JSONObject;)V",
        "authData",
        "defaultAttestationObject",
        "defaultAttestationObject$credentials_release",
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
.field private attestationObject:[B

.field private final be:Z

.field private final bs:Z

.field private final clientDataHash:[B

.field private clientJson:Lorg/json/JSONObject;

.field private final credentialId:[B

.field private final credentialPublicKey:[B

.field private final origin:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;

.field private final up:Z

.field private final uv:Z


# direct methods
.method public constructor <init>(Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;[B[BLjava/lang/String;ZZZZLjava/lang/String;[B)V
    .registers 12

    const-string v0, "requestOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialPublicKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;

    .line 27
    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->credentialId:[B

    .line 28
    iput-object p3, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->credentialPublicKey:[B

    .line 29
    iput-object p4, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->origin:Ljava/lang/String;

    .line 30
    iput-boolean p5, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->up:Z

    .line 31
    iput-boolean p6, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->uv:Z

    .line 32
    iput-boolean p7, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->be:Z

    .line 33
    iput-boolean p8, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->bs:Z

    .line 34
    iput-object p9, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->packageName:Ljava/lang/String;

    .line 35
    iput-object p10, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->clientDataHash:[B

    .line 37
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->clientJson:Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "type"

    const-string p5, "webauthn.create"

    invoke-virtual {p2, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p2

    sget-object p3, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    invoke-virtual {p1}, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->getChallenge()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p3, "challenge"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p9, :cond_62

    .line 45
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->getClientJson()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "androidPackageName"

    invoke-virtual {p1, p2, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_62
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->defaultAttestationObject$credentials_release()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->attestationObject:[B

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;[B[BLjava/lang/String;ZZZZLjava/lang/String;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    move p9, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 25
    invoke-direct/range {p1 .. p11}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;-><init>(Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;[B[BLjava/lang/String;ZZZZLjava/lang/String;[B)V

    return-void
.end method

.method private final authData()[B
    .registers 8

    .line 52
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 53
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->requestOptions:Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;

    invoke-virtual {v1}, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->getRp()Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 55
    iget-boolean v1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->up:Z

    .line 58
    iget-boolean v2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->uv:Z

    if-eqz v2, :cond_27

    or-int/lit8 v1, v1, 0x4

    .line 61
    :cond_27
    iget-boolean v2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->be:Z

    if-eqz v2, :cond_2d

    or-int/lit8 v1, v1, 0x8

    .line 64
    :cond_2d
    iget-boolean v2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->bs:Z

    if-eqz v2, :cond_33

    or-int/lit8 v1, v1, 0x10

    :cond_33
    or-int/lit8 v1, v1, 0x40

    const/16 v2, 0x10

    .line 69
    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_3b
    if-ge v5, v2, :cond_42

    aput-byte v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 70
    :cond_42
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->credentialId:[B

    array-length v5, v2

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    array-length v2, v2

    int-to-byte v2, v2

    const/4 v6, 0x2

    new-array v6, v6, [B

    aput-byte v5, v6, v4

    const/4 v5, 0x1

    aput-byte v2, v6, v5

    .line 73
    const-string v2, "rpHash"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-byte v1, v1

    .line 74
    new-array v2, v5, [B

    aput-byte v1, v2, v4

    .line 73
    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    const/4 v1, 0x4

    .line 75
    new-array v1, v1, [B

    fill-array-data v1, :array_80

    .line 73
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .line 78
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->credentialId:[B

    .line 73
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .line 79
    iget-object v1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->credentialPublicKey:[B

    .line 73
    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    return-object v0

    nop

    :array_80
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final defaultAttestationObject$credentials_release()[B
    .registers 4

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 86
    const-string v1, "fmt"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "attStmt"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "authData"

    invoke-direct {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->authData()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Landroidx/credentials/webauthn/Cbor;

    invoke-direct {v1}, Landroidx/credentials/webauthn/Cbor;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAttestationObject()[B
    .registers 2

    .line 38
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->attestationObject:[B

    return-object v0
.end method

.method public getClientJson()Lorg/json/JSONObject;
    .registers 2

    .line 37
    iget-object v0, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->clientJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public json()Lorg/json/JSONObject;
    .registers 6

    .line 96
    invoke-virtual {p0}, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->getClientJson()Lorg/json/JSONObject;

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

    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->clientDataHash:[B

    if-nez v2, :cond_2c

    .line 99
    sget-object v2, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    invoke-virtual {v2, v0}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clientDataJSON"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_2c
    sget-object v0, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    iget-object v2, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->attestationObject:[B

    invoke-virtual {v0, v2}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attestationObject"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    new-instance v0, Lorg/json/JSONArray;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "internal"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "hybrid"

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "transports"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public final setAttestationObject([B)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->attestationObject:[B

    return-void
.end method

.method public setClientJson(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Landroidx/credentials/webauthn/AuthenticatorAttestationResponse;->clientJson:Lorg/json/JSONObject;

    return-void
.end method
