.class public Lcz/msebera/android/httpclient/client/config/RequestConfig;
.super Ljava/lang/Object;
.source "RequestConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;


# instance fields
.field private final authenticationEnabled:Z

.field private final circularRedirectsAllowed:Z

.field private final connectTimeout:I

.field private final connectionRequestTimeout:I

.field private final cookieSpec:Ljava/lang/String;

.field private final decompressionEnabled:Z

.field private final expectContinueEnabled:Z

.field private final localAddress:Ljava/net/InetAddress;

.field private final maxRedirects:I

.field private final proxy:Lcz/msebera/android/httpclient/HttpHost;

.field private final proxyPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final redirectsEnabled:Z

.field private final relativeRedirectsAllowed:Z

.field private final socketTimeout:I

.field private final staleConnectionCheckEnabled:Z

.field private final targetPreferredAuthSchemes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->build()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-void
.end method

.method constructor <init>(ZLcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZ)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Ljava/net/InetAddress;",
            "Z",
            "Ljava/lang/String;",
            "ZZZIZ",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->expectContinueEnabled:Z

    .line 82
    iput-object p2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    .line 83
    iput-object p3, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->localAddress:Ljava/net/InetAddress;

    .line 84
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->staleConnectionCheckEnabled:Z

    .line 85
    iput-object p5, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    .line 86
    iput-boolean p6, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->redirectsEnabled:Z

    .line 87
    iput-boolean p7, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->relativeRedirectsAllowed:Z

    .line 88
    iput-boolean p8, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->circularRedirectsAllowed:Z

    .line 89
    iput p9, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->maxRedirects:I

    .line 90
    iput-boolean p10, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->authenticationEnabled:Z

    .line 91
    iput-object p11, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    .line 92
    iput-object p12, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    .line 93
    iput p13, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->connectionRequestTimeout:I

    .line 94
    iput p14, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->connectTimeout:I

    .line 95
    iput p15, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->socketTimeout:I

    move/from16 p1, p16

    .line 96
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->decompressionEnabled:Z

    return-void
.end method

.method public static copy(Lcz/msebera/android/httpclient/client/config/RequestConfig;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 3

    .line 347
    new-instance v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;-><init>()V

    .line 348
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isExpectContinueEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setExpectContinueEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getProxy()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setProxy(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setStaleConnectionCheckEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setCookieSpec(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setRedirectsEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isRelativeRedirectsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setRelativeRedirectsAllowed(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setCircularRedirectsAllowed(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getMaxRedirects()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setMaxRedirects(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setAuthenticationEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getTargetPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getProxyPreferredAuthSchemes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 361
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getConnectTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->getSocketTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->isDecompressionEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;->setDecompressionEnabled(Z)Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;
    .registers 1

    .line 342
    new-instance v0, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/client/config/RequestConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected clone()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 315
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/config/RequestConfig;->clone()Lcz/msebera/android/httpclient/client/config/RequestConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .line 282
    iget v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->connectTimeout:I

    return v0
.end method

.method public getConnectionRequestTimeout()I
    .registers 2

    .line 267
    iget v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->connectionRequestTimeout:I

    return v0
.end method

.method public getCookieSpec()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 147
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMaxRedirects()I
    .registers 2

    .line 219
    iget v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->maxRedirects:I

    return v0
.end method

.method public getProxy()Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .line 132
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public getProxyPreferredAuthSchemes()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 2

    .line 298
    iget v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->socketTimeout:I

    return v0
.end method

.method public getTargetPreferredAuthSchemes()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    return-object v0
.end method

.method public isAuthenticationEnabled()Z
    .registers 2

    .line 229
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->authenticationEnabled:Z

    return v0
.end method

.method public isCircularRedirectsAllowed()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->circularRedirectsAllowed:Z

    return v0
.end method

.method public isDecompressionEnabled()Z
    .registers 2

    .line 310
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->decompressionEnabled:Z

    return v0
.end method

.method public isExpectContinueEnabled()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->expectContinueEnabled:Z

    return v0
.end method

.method public isRedirectsEnabled()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->redirectsEnabled:Z

    return v0
.end method

.method public isRelativeRedirectsAllowed()Z
    .registers 2

    .line 196
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->relativeRedirectsAllowed:Z

    return v0
.end method

.method public isStaleConnectionCheckEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->staleConnectionCheckEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[expectContinueEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->expectContinueEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->proxy:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", localAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", cookieSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->cookieSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", redirectsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->redirectsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, ", relativeRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->relativeRedirectsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ", maxRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->maxRedirects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, ", circularRedirectsAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->circularRedirectsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, ", authenticationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->authenticationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 331
    const-string v1, ", targetPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->targetPreferredAuthSchemes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, ", proxyPreferredAuthSchemes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->proxyPreferredAuthSchemes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, ", connectionRequestTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->connectionRequestTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, ", connectTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, ", socketTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->socketTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, ", decompressionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->decompressionEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
