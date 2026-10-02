.class public Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;
.super Ljava/lang/Object;
.source "PublicSuffixDomainFilter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# instance fields
.field private final handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

.field private final publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "Cookie handler"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "Public suffix list"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 67
    new-instance p1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getRules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixList;->getExceptions()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "Cookie handler"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    .line 59
    const-string p1, "Public suffix matcher"

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public static decorate(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;
    .registers 3

    .line 100
    const-string v0, "Cookie attribute handler"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_d

    .line 101
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;-><init>(Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;)V

    return-object v0

    :cond_d
    return-object p0
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 5

    .line 75
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->publicSuffixMatcher:Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;

    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_16
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixDomainFilter;->handler:Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    return-void
.end method
