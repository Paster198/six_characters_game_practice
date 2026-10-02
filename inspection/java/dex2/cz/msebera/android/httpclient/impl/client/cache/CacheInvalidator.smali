.class Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;
.super Ljava/lang/Object;
.source "CacheInvalidator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/cache/HttpCacheInvalidator;


# instance fields
.field private final cacheKeyGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 72
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    .line 73
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    return-void
.end method

.method private flushEntry(Ljava/lang/String;)V
    .registers 4

    .line 129
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "unable to flush cache entry"

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private flushLocationCacheEntry(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;Ljava/net/URL;)V
    .registers 6

    .line 228
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_1e

    .line 237
    :cond_11
    invoke-direct {p0, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->responseDateOlderThanEntryDate(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1e

    .line 240
    :cond_18
    invoke-direct {p0, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->responseAndEntryEtagsDiffer(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result p2

    if-nez p2, :cond_1f

    :goto_1e
    return-void

    .line 244
    :cond_1f
    invoke-virtual {p0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V

    return-void
.end method

.method private getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    .line 175
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private getContentLocationURL(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;)Ljava/net/URL;
    .registers 4

    .line 248
    const-string v0, "Content-Location"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 252
    :cond_a
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    .line 257
    :cond_15
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method private getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .registers 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->storage:Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception p1

    .line 139
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "could not retrieve entry from storage"

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getLocationURL(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;)Ljava/net/URL;
    .registers 4

    .line 261
    const-string v0, "Location"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_a
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    .line 270
    :cond_15
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method private getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 4

    .line 185
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private isAHeadCacheEntry(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 124
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private notGetOrHeadRequest(Ljava/lang/String;)Z
    .registers 3

    .line 198
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "HEAD"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private requestIsGet(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 120
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private responseAndEntryEtagsDiffer(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 4

    .line 275
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    .line 276
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p2, :cond_1e

    if-nez p1, :cond_f

    goto :goto_1e

    .line 280
    :cond_f
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return p1
.end method

.method private responseDateOlderThanEntryDate(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 4

    .line 285
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    .line 286
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    if-nez p1, :cond_10

    goto :goto_2a

    .line 291
    :cond_10
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 292
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p2, :cond_2a

    if-nez p1, :cond_25

    goto :goto_2a

    .line 296
    :cond_25
    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1

    :cond_2a
    :goto_2a
    return v0
.end method

.method private shouldInvalidateHeadCacheEntry(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 116
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->requestIsGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->isAHeadCacheEntry(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z
    .registers 3

    .line 164
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V

    const/4 p1, 0x1

    return p1
.end method

.method public flushInvalidatedCacheEntries(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 7

    .line 85
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getEntry(Ljava/lang/String;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    move-result-object v0

    .line 88
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->requestShouldNotBeCached(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-direct {p0, p2, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->shouldInvalidateHeadCacheEntry(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 89
    :cond_16
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalidating parent cache entry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    if-eqz v0, :cond_4b

    .line 91
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V

    goto :goto_38

    .line 94
    :cond_48
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V

    .line 96
    :cond_4b
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_59

    .line 98
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string p2, "Couldn\'t transform request into valid URL"

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->error(Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_59
    const-string v0, "Content-Location"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 103
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 105
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushRelativeUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)V

    .line 108
    :cond_6e
    const-string v0, "Location"

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_7d

    .line 110
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z

    :cond_7d
    return-void
.end method

.method public flushInvalidatedCacheEntries(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 6

    .line 208
    invoke-interface {p3}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_30

    const/16 v1, 0x12b

    if-le v0, v1, :cond_11

    goto :goto_30

    .line 212
    :cond_11
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->getURI(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_1e

    goto :goto_30

    .line 216
    :cond_1e
    invoke-direct {p0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getContentLocationURL(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;)Ljava/net/URL;

    move-result-object p2

    if-eqz p2, :cond_27

    .line 218
    invoke-direct {p0, p1, p3, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushLocationCacheEntry(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;Ljava/net/URL;)V

    .line 220
    :cond_27
    invoke-direct {p0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getLocationURL(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;)Ljava/net/URL;

    move-result-object p2

    if-eqz p2, :cond_30

    .line 222
    invoke-direct {p0, p1, p3, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushLocationCacheEntry(Ljava/net/URL;Lcz/msebera/android/httpclient/HttpResponse;Ljava/net/URL;)V

    :cond_30
    :goto_30
    return-void
.end method

.method protected flushRelativeUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)V
    .registers 3

    .line 155
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 159
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V

    return-void
.end method

.method protected flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_26

    .line 149
    :cond_11
    invoke-virtual {p2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 150
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method protected requestShouldNotBeCached(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 2

    .line 193
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheInvalidator;->notGetOrHeadRequest(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
