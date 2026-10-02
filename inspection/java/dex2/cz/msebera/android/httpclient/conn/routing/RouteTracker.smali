.class public final Lcz/msebera/android/httpclient/conn/routing/RouteTracker;
.super Ljava/lang/Object;
.source "RouteTracker.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private connected:Z

.field private layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

.field private secure:Z

.field private final targetHost:Lcz/msebera/android/httpclient/HttpHost;

.field private tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 84
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 85
    sget-object p1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 86
    sget-object p1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 3

    .line 108
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getTargetHost()Lcz/msebera/android/httpclient/HttpHost;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 373
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final connectProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .registers 6

    .line 131
    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already connected"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 133
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 134
    new-array v0, v1, [Lcz/msebera/android/httpclient/HttpHost;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 135
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final connectTarget(Z)V
    .registers 5

    .line 118
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already connected"

    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 119
    iput-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    .line 120
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 288
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 292
    :cond_a
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;

    .line 293
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-ne v1, v3, :cond_43

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    if-ne v1, v3, :cond_43

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_43

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_43

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 299
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    .line 300
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 301
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    return v0

    :cond_43
    return v2
.end method

.method public final getHopCount()I
    .registers 3

    .line 201
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-eqz v0, :cond_d

    .line 202
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 205
    :cond_a
    array-length v0, v0

    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;
    .registers 6

    .line 213
    const-string v0, "Hop index"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 215
    :goto_f
    const-string v3, "Hop index exceeds tracked route length"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1c

    .line 218
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    aget-object p1, v0, p1

    return-object p1

    .line 220
    :cond_1c
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    return-object p1
.end method

.method public final getLayerType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;
    .registers 2

    .line 247
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 195
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lcz/msebera/android/httpclient/HttpHost;
    .registers 3

    .line 228
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getTargetHost()Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    .registers 2

    .line 237
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .registers 6

    const/16 v0, 0x11

    .line 315
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 317
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v1, :cond_1f

    .line 318
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 319
    invoke-static {v0, v4}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 322
    :cond_1f
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 323
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    return v0
.end method

.method public final isLayered()Z
    .registers 3

    .line 252
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final isSecure()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .registers 3

    .line 242
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final layerProtocol(Z)V
    .registers 4

    .line 183
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const-string v1, "No layered protocol unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 184
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 185
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 95
    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 96
    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iput-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    .line 97
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final toRoute()Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 9

    .line 269
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    iget-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v3, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    iget-boolean v5, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    iget-object v6, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v7, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-direct/range {v1 .. v7}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;[Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 338
    const-string v1, "RouteTracker["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_1e

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const/16 v1, 0x7b

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    if-eqz v1, :cond_2c

    const/16 v1, 0x63

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_2c
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_37

    const/16 v1, 0x74

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    :cond_37
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_42

    const/16 v1, 0x6c

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :cond_42
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    if-eqz v1, :cond_4b

    const/16 v1, 0x73

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    :cond_4b
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    if-eqz v1, :cond_63

    .line 358
    array-length v3, v1

    const/4 v4, 0x0

    :goto_56
    if-ge v4, v3, :cond_63

    aget-object v5, v1, v4

    .line 359
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 363
    :cond_63
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tunnelProxy(Lcz/msebera/android/httpclient/HttpHost;Z)V
    .registers 8

    .line 161
    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const-string v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    const-string v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lcz/msebera/android/httpclient/HttpHost;

    const/4 v3, 0x0

    .line 166
    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    aput-object p1, v2, v1

    .line 170
    iput-object v2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    .line 171
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method

.method public final tunnelTarget(Z)V
    .registers 4

    .line 145
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->connected:Z

    const-string v1, "No tunnel unless connected"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->check(ZLjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->proxyChain:[Lcz/msebera/android/httpclient/HttpHost;

    const-string v1, "No tunnel without proxy"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iput-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    .line 148
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/conn/routing/RouteTracker;->secure:Z

    return-void
.end method
