.class public Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/ConnectionReuseStrategy;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canResponseHaveBody(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 3

    .line 183
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1a

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1a

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected createTokenIterator(Lcz/msebera/android/httpclient/HeaderIterator;)Lcz/msebera/android/httpclient/TokenIterator;
    .registers 3

    .line 179
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)Z
    .registers 8

    .line 77
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p2

    .line 83
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 85
    const-string v3, "chunked"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    return v2

    .line 89
    :cond_29
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 90
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 92
    array-length v3, v0

    if-ne v3, v1, :cond_44

    .line 93
    aget-object v0, v0, v2

    .line 95
    :try_start_3a
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_42} :catch_44

    if-gez v0, :cond_45

    :catch_44
    :cond_44
    return v2

    .line 111
    :cond_45
    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 112
    array-length v3, v0

    if-nez v3, :cond_54

    .line 113
    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 139
    :cond_54
    array-length p1, v0

    if-eqz p1, :cond_84

    .line 141
    :try_start_57
    new-instance p1, Lcz/msebera/android/httpclient/message/BasicTokenIterator;

    new-instance v3, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcz/msebera/android/httpclient/message/BasicHeaderIterator;-><init>([Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    invoke-direct {p1, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;-><init>(Lcz/msebera/android/httpclient/HeaderIterator;)V

    move v0, v2

    .line 143
    :cond_63
    :goto_63
    invoke-interface {p1}, Lcz/msebera/android/httpclient/TokenIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 144
    invoke-interface {p1}, Lcz/msebera/android/httpclient/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 145
    const-string v4, "Close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    return v2

    .line 147
    :cond_76
    const-string v4, "Keep-Alive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_7c
    .catch Lcz/msebera/android/httpclient/ParseException; {:try_start_57 .. :try_end_7c} :catch_83

    if-eqz v3, :cond_63

    move v0, v1

    goto :goto_63

    :cond_80
    if-eqz v0, :cond_84

    return v1

    :catch_83
    return v2

    .line 165
    :cond_84
    sget-object p1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p2, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
