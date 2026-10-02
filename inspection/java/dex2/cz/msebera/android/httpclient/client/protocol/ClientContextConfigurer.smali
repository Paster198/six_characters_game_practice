.class public Lcz/msebera/android/httpclient/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;
.source "ClientContextConfigurer.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/protocol/ClientContext;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final context:Lcz/msebera/android/httpclient/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "HTTP context"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/protocol/ClientContextConfigurer;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public setAuthSchemeRegistry(Lcz/msebera/android/httpclient/auth/AuthSchemeRegistry;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ClientContextConfigurer;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const-string v1, "http.authscheme-registry"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieSpecRegistry(Lcz/msebera/android/httpclient/cookie/CookieSpecRegistry;)V
    .registers 4

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ClientContextConfigurer;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const-string v1, "http.cookiespec-registry"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieStore(Lcz/msebera/android/httpclient/client/CookieStore;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ClientContextConfigurer;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentialsProvider(Lcz/msebera/android/httpclient/client/CredentialsProvider;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/protocol/ClientContextConfigurer;->context:Lcz/msebera/android/httpclient/protocol/HttpContext;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
