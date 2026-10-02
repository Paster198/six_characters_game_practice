.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# static fields
.field private static final AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

.field private static final cacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final neverCache1_0ResponsesWithQueryString:Z

.field private final sharedCache:Z

.field private final uncacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x3

    .line 56
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "s-maxage"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "must-revalidate"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "public"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v6, 0xc8

    .line 64
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/16 v3, 0xcb

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x12c

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x12d

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0x19a

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    .line 64
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(JZZZ)V
    .registers 8

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 86
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    .line 87
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    .line 88
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    const/4 p1, 0x1

    const/16 p2, 0xce

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p5, :cond_2e

    .line 90
    new-instance p4, Ljava/util/HashSet;

    new-array p1, p1, [Ljava/lang/Integer;

    .line 91
    aput-object p2, p1, p3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    return-void

    .line 93
    :cond_2e
    new-instance p4, Ljava/util/HashSet;

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Integer;

    .line 94
    aput-object p2, p5, p3

    const/16 p2, 0x12f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, p1

    .line 93
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    return-void
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 5

    .line 278
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 281
    :cond_a
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 282
    const-string v2, "Date"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz v0, :cond_40

    if-nez p1, :cond_1b

    goto :goto_40

    .line 286
    :cond_1b
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 287
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_40

    if-nez p1, :cond_30

    goto :goto_40

    .line 291
    :cond_30
    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    return v1

    :cond_3e
    :goto_3e
    const/4 p1, 0x1

    return p1

    :cond_40
    :goto_40
    return v1
.end method

.method private from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 4

    .line 295
    const-string v0, "Via"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 297
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_34

    const/4 p1, 0x0

    aget-object v0, v0, p1

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 299
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 300
    const-string v0, "HTTP/1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 302
    :cond_2d
    const-string v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 306
    :cond_34
    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 310
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p1

    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result p1

    if-lez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private unknownStatusCode(I)Z
    .registers 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-lt p1, v0, :cond_a

    const/16 v0, 0x65

    if-gt p1, v0, :cond_a

    return v1

    :cond_a
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_13

    const/16 v0, 0xce

    if-gt p1, v0, :cond_13

    return v1

    :cond_13
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x133

    if-gt p1, v0, :cond_1c

    return v1

    :cond_1c
    const/16 v0, 0x190

    if-lt p1, v0, :cond_25

    const/16 v0, 0x1a1

    if-gt p1, v0, :cond_25

    return v1

    :cond_25
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x1f9

    if-gt p1, v0, :cond_2e

    return v1

    :cond_2e
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z
    .registers 14

    .line 206
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_32

    aget-object v3, p1, v2

    .line 208
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_13
    if-ge v5, v4, :cond_2f

    aget-object v6, v3, v5

    .line 209
    array-length v7, p2

    move v8, v1

    :goto_19
    if-ge v8, v7, :cond_2c

    aget-object v9, p2, v8

    .line 210
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_32
    return v1
.end method

.method protected isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 6

    .line 220
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x5

    .line 223
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "max-age"

    aput-object v3, v0, v2

    const-string v2, "s-maxage"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "must-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy-revalidate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "public"

    aput-object v2, v0, v1

    .line 228
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 11

    .line 192
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    .line 193
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_48

    aget-object v3, p1, v2

    .line 194
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_13
    if-ge v5, v4, :cond_45

    aget-object v6, v3, v5

    .line 195
    const-string v7, "no-store"

    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    const-string v7, "no-cache"

    .line 196
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    iget-boolean v7, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v7, :cond_40

    const-string v7, "private"

    .line 197
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    goto :goto_43

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_43
    :goto_43
    const/4 p1, 0x1

    return p1

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_48
    return v1
.end method

.method public isResponseCacheable(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 6

    .line 240
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 241
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Response was not cacheable."

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v1

    :cond_f
    const/4 v0, 0x1

    .line 245
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "no-store"

    aput-object v2, v0, v1

    .line 246
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 250
    :cond_1d
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 251
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 252
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Response was not cacheable as it had a query string."

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v1

    .line 254
    :cond_3f
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 255
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Response was not cacheable as it is missing explicit caching headers."

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v1

    .line 260
    :cond_4d
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_54

    return v1

    .line 264
    :cond_54
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v0, :cond_6c

    .line 265
    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 266
    array-length v0, v0

    if-lez v0, :cond_6c

    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    .line 267
    invoke-virtual {p0, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    return v1

    .line 272
    :cond_6c
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result p1

    return p1
.end method

.method public isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 13

    .line 108
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string v0, "HEAD"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 110
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Response was not cacheable."

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v1

    .line 114
    :cond_19
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    .line 115
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    move p1, v2

    goto :goto_45

    .line 118
    :cond_30
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v1

    .line 120
    :cond_3d
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->unknownStatusCode(I)Z

    move-result p1

    if-eqz p1, :cond_44

    return v1

    :cond_44
    move p1, v1

    .line 126
    :goto_45
    const-string v0, "Content-Length"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 128
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    .line 129
    iget-wide v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_5d

    return v1

    .line 134
    :cond_5d
    const-string v0, "Age"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 136
    array-length v0, v0

    if-le v0, v2, :cond_67

    return v1

    .line 140
    :cond_67
    const-string v0, "Expires"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 142
    array-length v0, v0

    if-le v0, v2, :cond_71

    return v1

    .line 146
    :cond_71
    const-string v0, "Date"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 148
    array-length v3, v0

    if-eq v3, v2, :cond_7b

    return v1

    .line 152
    :cond_7b
    aget-object v0, v0, v1

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_88

    return v1

    .line 157
    :cond_88
    const-string v0, "Vary"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_90
    if-ge v4, v3, :cond_b1

    aget-object v5, v0, v4

    .line 158
    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_9a
    if-ge v7, v6, :cond_ae

    aget-object v8, v5, v7

    .line 159
    const-string v9, "*"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ab

    return v1

    :cond_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_9a

    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 165
    :cond_b1
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_b8

    return v1

    :cond_b8
    if-nez p1, :cond_c2

    .line 169
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result p1

    if-eqz p1, :cond_c1

    goto :goto_c2

    :cond_c1
    return v1

    :cond_c2
    :goto_c2
    return v2
.end method
