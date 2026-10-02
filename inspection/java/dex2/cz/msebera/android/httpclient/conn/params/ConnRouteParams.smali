.class public Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/params/ConnRoutePNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

.field public static final NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 54
    new-instance v0, Lcz/msebera/android/httpclient/HttpHost;

    const/4 v1, 0x0

    const-string v2, "no-host"

    const-string v3, "127.0.0.255"

    invoke-direct {v0, v3, v1, v2}, Lcz/msebera/android/httpclient/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    .line 61
    new-instance v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;-><init>(Lcz/msebera/android/httpclient/HttpHost;)V

    sput-object v1, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/HttpHost;
    .registers 2

    .line 80
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    const-string v0, "http.route.default-proxy"

    .line 82
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/HttpHost;

    if-eqz p0, :cond_18

    .line 83
    sget-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_HOST:Lcz/msebera/android/httpclient/HttpHost;

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    :cond_18
    return-object p0
.end method

.method public static getForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/conn/routing/HttpRoute;
    .registers 2

    .line 118
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "http.route.forced-route"

    .line 120
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    if-eqz p0, :cond_18

    .line 121
    sget-object v0, Lcz/msebera/android/httpclient/conn/params/ConnRouteParams;->NO_ROUTE:Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    :cond_18
    return-object p0
.end method

.method public static getLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/InetAddress;
    .registers 2

    .line 157
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const-string v0, "http.route.local-address"

    .line 159
    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    return-object p0
.end method

.method public static setDefaultProxy(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/HttpHost;)V
    .registers 3

    .line 102
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public static setForcedRoute(Lcz/msebera/android/httpclient/params/HttpParams;Lcz/msebera/android/httpclient/conn/routing/HttpRoute;)V
    .registers 3

    .line 140
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method

.method public static setLocalAddress(Lcz/msebera/android/httpclient/params/HttpParams;Ljava/net/InetAddress;)V
    .registers 3

    .line 173
    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0, p1}, Lcz/msebera/android/httpclient/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcz/msebera/android/httpclient/params/HttpParams;

    return-void
.end method
