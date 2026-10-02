.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;
.super Ljava/lang/Object;
.source "RFC2109SpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 2

    .line 86
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109SpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 5

    if-eqz p1, :cond_27

    .line 69
    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_19

    .line 72
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 75
    :goto_1a
    const-string v1, "http.protocol.single-cookie-header"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    .line 78
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-direct {v1, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    return-object v1

    .line 80
    :cond_27
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>()V

    return-object p1
.end method
