.class public Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestFactory;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

.field private static final RFC2616_COMMON_METHODS:[Ljava/lang/String;

.field private static final RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

.field private static final RFC2616_SPECIAL_METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 47
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    const/4 v0, 0x1

    .line 49
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GET"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    const/4 v1, 0x2

    .line 53
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "POST"

    aput-object v4, v2, v3

    const-string v4, "PUT"

    aput-object v4, v2, v0

    sput-object v2, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    const/4 v2, 0x5

    .line 58
    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "HEAD"

    aput-object v4, v2, v3

    const-string v3, "OPTIONS"

    aput-object v3, v2, v0

    const-string v0, "DELETE"

    aput-object v0, v2, v1

    const/4 v0, 0x3

    const-string v1, "TRACE"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "CONNECT"

    aput-object v1, v2, v0

    sput-object v2, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method


# virtual methods
.method public newHttpRequest(Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/MethodNotSupportedException;
        }
    .end annotation

    .line 83
    const-string v0, "Request line"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 86
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-object v0

    .line 87
    :cond_17
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 88
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-object v0

    .line 89
    :cond_25
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 90
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-object v0

    .line 92
    :cond_33
    new-instance p1, Lcz/msebera/android/httpclient/MethodNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/MethodNotSupportedException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 100
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_e
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 102
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 103
    :cond_1c
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 104
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 106
    :cond_2a
    new-instance p2, Lcz/msebera/android/httpclient/MethodNotSupportedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " method not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
