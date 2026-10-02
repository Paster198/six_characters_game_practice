.class Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SSLContextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/ssl/SSLContextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyManagerDelegate"
.end annotation


# instance fields
.field private final aliasStrategy:Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;

.field private final keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509ExtendedKeyManager;Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;)V
    .registers 3

    .line 315
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 316
    iput-object p1, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 317
    iput-object p2, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 4

    .line 357
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    .line 358
    iget-object p2, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 4

    .line 387
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    .line 388
    iget-object p2, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 4

    .line 394
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    .line 395
    iget-object p2, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .registers 4

    .line 370
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    .line 371
    iget-object p2, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;

    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 376
    iget-object v0, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/ssl/PrivateKeyDetails;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_2e

    aget-object v4, p1, v3

    .line 330
    iget-object v5, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v5, v4, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 332
    array-length v6, v5

    move v7, v2

    :goto_16
    if-ge v7, v6, :cond_2b

    aget-object v8, v5, v7

    .line 333
    new-instance v9, Lcz/msebera/android/httpclient/ssl/PrivateKeyDetails;

    iget-object v10, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 334
    invoke-virtual {v10, v8}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Lcz/msebera/android/httpclient/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    .line 333
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_2e
    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 4

    .line 323
    iget-object v0, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .registers 3

    .line 381
    iget-object v0, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/ssl/PrivateKeyDetails;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    iget-object v1, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_24

    .line 346
    array-length v1, p2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_24

    aget-object v3, p2, v2

    .line 347
    new-instance v4, Lcz/msebera/android/httpclient/ssl/PrivateKeyDetails;

    iget-object v5, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 348
    invoke-virtual {v5, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcz/msebera/android/httpclient/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    .line 347
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .registers 4

    .line 364
    iget-object v0, p0, Lcz/msebera/android/httpclient/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/X509ExtendedKeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
