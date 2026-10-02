.class public final Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;
.super Ljava/lang/Object;
.source "PublicKeyCredentialCreationOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0017R\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0011\u0010+\u001a\u00020,\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.\u00a8\u0006/"
    }
    d2 = {
        "Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;",
        "",
        "requestJson",
        "",
        "(Ljava/lang/String;)V",
        "attestation",
        "getAttestation",
        "()Ljava/lang/String;",
        "setAttestation",
        "authenticatorSelection",
        "Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;",
        "getAuthenticatorSelection",
        "()Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;",
        "setAuthenticatorSelection",
        "(Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;)V",
        "challenge",
        "",
        "getChallenge",
        "()[B",
        "excludeCredentials",
        "",
        "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
        "getExcludeCredentials",
        "()Ljava/util/List;",
        "setExcludeCredentials",
        "(Ljava/util/List;)V",
        "json",
        "Lorg/json/JSONObject;",
        "getJson",
        "()Lorg/json/JSONObject;",
        "pubKeyCredParams",
        "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;",
        "getPubKeyCredParams",
        "rp",
        "Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;",
        "getRp",
        "()Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;",
        "timeout",
        "",
        "getTimeout",
        "()J",
        "setTimeout",
        "(J)V",
        "user",
        "Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;",
        "getUser",
        "()Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;",
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
.field private attestation:Ljava/lang/String;

.field private authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

.field private final challenge:[B

.field private excludeCredentials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final json:Lorg/json/JSONObject;

.field private final pubKeyCredParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

.field private timeout:J

.field private final user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    .line 39
    const-string p1, "challenge"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    sget-object v1, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    const-string v2, "challengeString"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Decode(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->challenge:[B

    .line 41
    const-string p1, "rp"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 42
    new-instance v1, Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rpJson.getString(\"name\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "rpJson.getString(\"id\")"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, p1}, Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    .line 43
    const-string p1, "user"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 44
    sget-object v1, Landroidx/credentials/webauthn/WebAuthnUtils;->Companion:Landroidx/credentials/webauthn/WebAuthnUtils$Companion;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rpUser.getString(\"id\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroidx/credentials/webauthn/WebAuthnUtils$Companion;->b64Decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 46
    new-instance v3, Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    .line 47
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rpUser.getString(\"name\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string v4, "displayName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "rpUser.getString(\"displayName\")"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {v3, v2, v1, p1}, Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 45
    iput-object v3, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    .line 51
    const-string p1, "pubKeyCredParams"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_87
    if-ge v2, v1, :cond_a9

    .line 54
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 56
    new-instance v4, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "e.getString(\"type\")"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "alg"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Landroidx/credentials/webauthn/PublicKeyCredentialParameters;-><init>(Ljava/lang/String;J)V

    .line 55
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 59
    :cond_a9
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    .line 61
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    const-string v1, "timeout"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    .line 63
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    .line 64
    new-instance v1, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "platform"

    const-string v3, "required"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    .line 65
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    const-string v1, "attestation"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.optString(\"attestation\", \"none\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Challenge "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->challenge:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebAuthn"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rp "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pubKeyCredParams "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "timeout "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "excludeCredentials "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "authenticatorSelection "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "attestation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getAttestation()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticatorSelection()Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;
    .registers 2

    .line 34
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    return-object v0
.end method

.method public final getChallenge()[B
    .registers 2

    .line 29
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->challenge:[B

    return-object v0
.end method

.method public final getExcludeCredentials()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    return-object v0
.end method

.method public final getJson()Lorg/json/JSONObject;
    .registers 2

    .line 25
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPubKeyCredParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialParameters;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->pubKeyCredParams:Ljava/util/List;

    return-object v0
.end method

.method public final getRp()Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;
    .registers 2

    .line 27
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->rp:Landroidx/credentials/webauthn/PublicKeyCredentialRpEntity;

    return-object v0
.end method

.method public final getTimeout()J
    .registers 3

    .line 32
    iget-wide v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    return-wide v0
.end method

.method public final getUser()Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;
    .registers 2

    .line 28
    iget-object v0, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->user:Landroidx/credentials/webauthn/PublicKeyCredentialUserEntity;

    return-object v0
.end method

.method public final setAttestation(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->attestation:Ljava/lang/String;

    return-void
.end method

.method public final setAuthenticatorSelection(Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->authenticatorSelection:Landroidx/credentials/webauthn/AuthenticatorSelectionCriteria;

    return-void
.end method

.method public final setExcludeCredentials(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/webauthn/PublicKeyCredentialDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->excludeCredentials:Ljava/util/List;

    return-void
.end method

.method public final setTimeout(J)V
    .registers 3

    .line 32
    iput-wide p1, p0, Landroidx/credentials/webauthn/PublicKeyCredentialCreationOptions;->timeout:J

    return-void
.end method
