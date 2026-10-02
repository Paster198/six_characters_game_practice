.class public Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
.super Lcz/msebera/android/httpclient/protocol/HttpCoreContext;
.source "HttpClientContext.java"


# static fields
.field public static final AUTHSCHEME_REGISTRY:Ljava/lang/String; = "http.authscheme-registry"

.field public static final AUTH_CACHE:Ljava/lang/String; = "http.auth.auth-cache"

.field public static final COOKIESPEC_REGISTRY:Ljava/lang/String; = "http.cookiespec-registry"

.field public static final COOKIE_ORIGIN:Ljava/lang/String; = "http.cookie-origin"

.field public static final COOKIE_SPEC:Ljava/lang/String; = "http.cookie-spec"

.field public static final COOKIE_STORE:Ljava/lang/String; = "http.cookie-store"

.field public static final CREDS_PROVIDER:Ljava/lang/String; = "http.auth.credentials-provider"

.field public static final HTTP_ROUTE:Ljava/lang/String; = "http.route"

.field public static final PROXY_AUTH_STATE:Ljava/lang/String; = "http.auth.proxy-scope"

.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"

.field public static final REQUEST_CONFIG:Ljava/lang/String; = "http.request-config"

.field public static final TARGET_AUTH_STATE:Ljava/lang/String; = "http.auth.target-scope"

.field public static final USER_TOKEN:Ljava/lang/String; = "http.user-token"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpCoreContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method

.method public static adapt(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .registers 2

    .line 139
    instance-of v0, p0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    if-eqz v0, :cond_7

    .line 140
    check-cast p0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    return-object p0

    .line 142
    :cond_7
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-object v0
.end method

.method public static create()Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;
    .registers 2

    .line 147
    new-instance v0, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;

    new-instance v1, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;-><init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-object v0
.end method

.method private getLookup(Ljava/lang/String;Ljava/lang/Class;)Lcz/msebera/android/httpclient/config/Lookup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "TT;>;"
        }
    .end annotation

    .line 185
    const-class p2, Lcz/msebera/android/httpclient/config/Lookup;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/config/Lookup;

    return-object p1
.end method


# virtual methods
.method public getAuthCache()Lcz/msebera/android/httpclient/client/AuthCache;
    .registers 3

    .line 213
    const-string v0, "http.auth.auth-cache"

    const-class v1, Lcz/msebera/android/httpclient/client/AuthCache;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/AuthCache;

    return-object v0
.end method

.method public getAuthSchemeRegistry()Lcz/msebera/android/httpclient/config/Lookup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation

    .line 197
    const-string v0, "http.authscheme-registry"

    const-class v1, Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getLookup(Ljava/lang/String;Ljava/lang/Class;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieOrigin()Lcz/msebera/android/httpclient/cookie/CookieOrigin;
    .registers 3

    .line 180
    const-string v0, "http.cookie-origin"

    const-class v1, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;

    return-object v0
.end method

.method public getCookieSpec()Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 3

    .line 176
    const-string v0, "http.cookie-spec"

    const-class v1, Lcz/msebera/android/httpclient/cookie/CookieSpec;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object v0
.end method

.method public getCookieSpecRegistry()Lcz/msebera/android/httpclient/config/Lookup;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .line 189
    const-string v0, "http.cookiespec-registry"

    const-class v1, Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getLookup(Ljava/lang/String;Ljava/lang/Class;)Lcz/msebera/android/httpclient/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public getCookieStore()Lcz/msebera/android/httpclient/client/CookieStore;
    .registers 3

    .line 168
    const-string v0, "http.cookie-store"

    const-class v1, Lcz/msebera/android/httpclient/client/CookieStore;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/CookieStore;

    return-object v0
.end method

.method public getCredentialsProvider()Lcz/msebera/android/httpclient/client/CredentialsProvider;
    .registers 3

    .line 205
    const-string v0, "http.auth.credentials-provider"

    const-class v1, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/CredentialsProvider;

    return-object v0
.end method

.method public getHttpRoute()Lcz/msebera/android/httpclient/conn/routing/RouteInfo;
    .registers 3

    .line 159
    const-string v0, "http.route"

    const-class v1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/conn/routing/RouteInfo;

    return-object v0
.end method

.method public getProxyAuthState()Lcz/msebera/android/httpclient/auth/AuthState;
    .registers 3

    .line 225
    const-string v0, "http.auth.proxy-scope"

    const-class v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    return-object v0
.end method

.method public getRedirectLocations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 164
    const-string v0, "http.protocol.redirect-locations"

    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getRequestConfig()Lcz/msebera/android/httpclient/client/config/RequestConfig;
    .registers 3

    .line 241
    const-string v0, "http.request-config"

    const-class v1, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;

    if-eqz v0, :cond_d

    return-object v0

    .line 242
    :cond_d
    sget-object v0, Lcz/msebera/android/httpclient/client/config/RequestConfig;->DEFAULT:Lcz/msebera/android/httpclient/client/config/RequestConfig;

    return-object v0
.end method

.method public getTargetAuthState()Lcz/msebera/android/httpclient/auth/AuthState;
    .registers 3

    .line 221
    const-string v0, "http.auth.target-scope"

    const-class v1, Lcz/msebera/android/httpclient/auth/AuthState;

    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/auth/AuthState;

    return-object v0
.end method

.method public getUserToken()Ljava/lang/Object;
    .registers 2

    .line 233
    const-string v0, "http.user-token"

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserToken(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 229
    const-string v0, "http.user-token"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAuthCache(Lcz/msebera/android/httpclient/client/AuthCache;)V
    .registers 3

    .line 217
    const-string v0, "http.auth.auth-cache"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAuthSchemeRegistry(Lcz/msebera/android/httpclient/config/Lookup;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/auth/AuthSchemeProvider;",
            ">;)V"
        }
    .end annotation

    .line 201
    const-string v0, "http.authscheme-registry"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieSpecRegistry(Lcz/msebera/android/httpclient/config/Lookup;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/config/Lookup<",
            "Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;",
            ">;)V"
        }
    .end annotation

    .line 193
    const-string v0, "http.cookiespec-registry"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)V
    .registers 3

    .line 172
    const-string v0, "http.cookie-store"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)V
    .registers 3

    .line 209
    const-string v0, "http.auth.credentials-provider"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRequestConfig(Lcz/msebera/android/httpclient/client/config/RequestConfig;)V
    .registers 3

    .line 246
    const-string v0, "http.request-config"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserToken(Ljava/lang/Object;)V
    .registers 3

    .line 237
    const-string v0, "http.user-token"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
