.class public final Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            ">;"
        }
    .end annotation
.end field

.field private final secure:Z

.field private final targetHost:Lcz/msebera/android/httpclient/HttpHost;

.field private final tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 9

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1, v0, p2, v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;Z)V
    .registers 12

    .line 199
    const-string v0, "Proxy host"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_f

    sget-object p3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    goto :goto_11

    :cond_f
    sget-object p3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    :goto_11
    move-object v5, p3

    if-eqz p4, :cond_17

    sget-object p3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    goto :goto_19

    :cond_17
    sget-object p3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    :goto_19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V
    .registers 14

    if-eqz p3, :cond_7

    .line 155
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method private constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpHost;",
            "Ljava/net/InetAddress;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/HttpHost;",
            ">;Z",
            "Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;",
            "Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;",
            ")V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "Target host"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->normalize(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 75
    iput-object p2, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz p3, :cond_20

    .line 76
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    goto :goto_23

    :cond_20
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    .line 81
    :goto_23
    sget-object p1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne p5, p1, :cond_33

    .line 82
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    const-string p2, "Proxy required if tunnelled"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 84
    :cond_33
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->secure:Z

    if-eqz p5, :cond_38

    goto :goto_3a

    .line 85
    :cond_38
    sget-object p5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    :goto_3a
    iput-object p5, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-eqz p6, :cond_3f

    goto :goto_41

    .line 86
    :cond_3f
    sget-object p6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    :goto_41
    iput-object p6, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Z)V
    .registers 11

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->PLAIN:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;[Lcz/msebera/android/httpclient/HttpHost;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V
    .registers 14

    if-eqz p3, :cond_7

    .line 132
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_8

    :cond_7
    const/4 p3, 0x0

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/net/InetAddress;Ljava/util/List;ZLcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method private static getDefaultPort(Ljava/lang/String;)I
    .registers 2

    .line 91
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x50

    return p0

    .line 93
    :cond_b
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x1bb

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method private static normalize(Lcz/msebera/android/httpclient/HttpHost;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 4

    .line 103
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result v0

    if-ltz v0, :cond_7

    return-object p0

    .line 106
    :cond_7
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1b

    .line 109
    new-instance p0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2, v1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/net/InetAddress;ILjava/lang/String;)V

    return-object p0

    .line 111
    :cond_1b
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v1}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v2, v1}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 363
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 290
    :cond_4
    instance-of v1, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 291
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    .line 292
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->secure:Z

    iget-boolean v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->secure:Z

    if-ne v1, v3, :cond_3c

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_3c

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_3c

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    .line 297
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    .line 298
    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    .line 299
    invoke-static {v1, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    return v0

    :cond_3c
    return v2
.end method

.method public final getHopCount()I
    .registers 3

    .line 232
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_b
    return v1
.end method

.method public final getHopTarget(I)Lcz/msebera/android/httpclient/HttpHost;
    .registers 6

    .line 237
    const-string v0, "Hop index"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 239
    :goto_f
    const-string v3, "Hop index exceeds tracked route length"

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_20

    .line 241
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HttpHost;

    return-object p1

    .line 243
    :cond_20
    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    return-object p1
.end method

.method public final getLayerType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;
    .registers 2

    .line 264
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 223
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .registers 4

    .line 227
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getProxyHost()Lcz/msebera/android/httpclient/HttpHost;
    .registers 3

    .line 249
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpHost;

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTargetHost()Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .line 218
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;
    .registers 2

    .line 254
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x11

    .line 314
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 316
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz v1, :cond_27

    .line 317
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/HttpHost;

    .line 318
    invoke-static {v0, v2}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    goto :goto_16

    .line 321
    :cond_27
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->secure:Z

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 323
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isLayered()Z
    .registers 3

    .line 269
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

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

    .line 274
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .registers 3

    .line 259
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 335
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    const-string v2, "->"

    if-eqz v1, :cond_19

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const/16 v1, 0x7b

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->tunnelled:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    sget-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$TunnelType;

    if-ne v1, v3, :cond_29

    const/16 v1, 0x74

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_29
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->layered:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    sget-object v3, Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;->LAYERED:Lcz/msebera/android/httpclient/conn/routing/RouteInfo$LayerType;

    if-ne v1, v3, :cond_34

    const/16 v1, 0x6c

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    :cond_34
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->secure:Z

    if-eqz v1, :cond_3d

    const/16 v1, 0x73

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_3d
    const-string v1, "}->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->proxyChain:Ljava/util/List;

    if-eqz v1, :cond_5d

    .line 351
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/HttpHost;

    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 356
    :cond_5d
    iget-object v1, p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->targetHost:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
