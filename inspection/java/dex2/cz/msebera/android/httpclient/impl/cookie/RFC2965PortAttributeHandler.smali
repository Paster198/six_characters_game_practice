.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965PortAttributeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CommonCookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parsePortAttribute(Ljava/lang/String;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    .line 70
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 71
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p0, v1

    if-ltz v2, :cond_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 73
    :cond_27
    new-instance p0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string v0, "Invalid Port attribute."

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_2f} :catch_30

    :cond_2f
    return-object p0

    :catch_30
    move-exception p0

    .line 78
    new-instance v0, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Port attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static portMatch(I[I)Z
    .registers 6

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p1, v2

    if-ne p0, v3, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .registers 2

    .line 165
    const-string v0, "port"

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .registers 5

    .line 147
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPort()I

    move-result p2

    .line 150
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string v1, "port"

    .line 151
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 152
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPorts()[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    return v1

    .line 156
    :cond_25
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPorts()[I

    move-result-object p1

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    :cond_30
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

    .line 110
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_1e

    .line 112
    check-cast p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz p2, :cond_1e

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 114
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;->parsePortAttribute(Ljava/lang/String;)[I

    move-result-object p2

    .line 115
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/SetCookie2;->setPorts([I)V

    :cond_1e
    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 127
    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->getPort()I

    move-result p2

    .line 130
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/cookie/ClientCookie;

    const-string v1, "port"

    .line 131
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/cookie/ClientCookie;->containsAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 132
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getPorts()[I

    move-result-object p1

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965PortAttributeHandler;->portMatch(I[I)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_30

    .line 133
    :cond_28
    new-instance p1, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;

    const-string p2, "Port attribute violates RFC 2965: Request port not found in cookie\'s port list."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieRestrictionViolationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_30
    :goto_30
    return-void
.end method
