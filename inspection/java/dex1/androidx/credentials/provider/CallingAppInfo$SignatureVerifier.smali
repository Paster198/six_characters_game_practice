.class final Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;
.super Ljava/lang/Object;
.source "CallingAppInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/CallingAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignatureVerifier"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;",
        "",
        "signingInfoCompat",
        "Landroidx/credentials/provider/SigningInfoCompat;",
        "(Landroidx/credentials/provider/SigningInfoCompat;)V",
        "convertToFingerprints",
        "",
        "",
        "signatures",
        "",
        "Landroid/content/pm/Signature;",
        "getSignatureFingerprints",
        "verifySignatureFingerprints",
        "",
        "candidateSigFingerprints",
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
.field private final signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;


# direct methods
.method public constructor <init>(Landroidx/credentials/provider/SigningInfoCompat;)V
    .registers 3

    const-string v0, "signingInfoCompat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    return-void
.end method

.method private final convertToFingerprints(Ljava/util/List;)Ljava/util/Set;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/Signature;

    .line 303
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 304
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 305
    const-string v1, "digest"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ":"

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    sget-object v1, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier$convertToFingerprints$1;->INSTANCE:Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier$convertToFingerprints$1;

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_43
    return-object v0
.end method

.method private final getSignatureFingerprints()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 289
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-virtual {v1}, Landroidx/credentials/provider/SigningInfoCompat;->getApkContentsSigners()Ljava/util/List;

    move-result-object v1

    .line 290
    iget-object v2, p0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-virtual {v2}, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners()Z

    move-result v2

    if-eqz v2, :cond_28

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 291
    invoke-direct {p0, v1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->convertToFingerprints(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 292
    :cond_28
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-virtual {v1}, Landroidx/credentials/provider/SigningInfoCompat;->getSigningCertificateHistory()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 294
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-virtual {v1}, Landroidx/credentials/provider/SigningInfoCompat;->getSigningCertificateHistory()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->convertToFingerprints(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 293
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4e
    return-object v0
.end method


# virtual methods
.method public final verifySignatureFingerprints(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "candidateSigFingerprints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->getSignatureFingerprints()Ljava/util/Set;

    move-result-object v0

    .line 312
    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifier;->signingInfoCompat:Landroidx/credentials/provider/SigningInfoCompat;

    invoke-virtual {v1}, Landroidx/credentials/provider/SigningInfoCompat;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 313
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 315
    :cond_18
    check-cast p1, Ljava/lang/Iterable;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method
