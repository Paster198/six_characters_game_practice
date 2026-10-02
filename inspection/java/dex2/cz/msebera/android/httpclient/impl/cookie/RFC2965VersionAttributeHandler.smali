.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965VersionAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965VersionAttributeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, "version"

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 59
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1b

    .line 66
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 p2, -0x1

    :goto_d
    if-ltz p2, :cond_13

    .line 73
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/SetCookie;->setVersion(I)V

    return-void

    .line 71
    :cond_13
    new-instance p1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string p2, "Invalid cookie version."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1b
    new-instance p1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string p2, "Missing value for version attribute"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 82
    const-string p2, "Cookie"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    instance-of p2, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz p2, :cond_20

    .line 84
    instance-of p2, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz p2, :cond_20

    check-cast p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string p2, "version"

    .line 85
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_20

    .line 86
    :cond_18
    new-instance p1, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string p2, "Violates RFC 2965. Version attribute is required."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    return-void
.end method
