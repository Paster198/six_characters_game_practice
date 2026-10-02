.class public Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;
.super Ljava/lang/Object;
.source "NetscapeDraftSpecFactory.java"

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
    .registers 2

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 2

    .line 83
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpecFactory;->cookieSpec:Lcz/msebera/android/httpclient/cookie/CookieSpec;

    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .registers 3

    if-eqz p1, :cond_20

    .line 69
    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_19

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 75
    :goto_1a
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_20
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftSpec;-><init>()V

    return-object p1
.end method
