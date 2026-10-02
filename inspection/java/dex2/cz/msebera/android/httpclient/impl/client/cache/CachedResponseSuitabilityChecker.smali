.class Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"


# instance fields
.field private final heuristicCoefficient:F

.field private final heuristicDefaultLifetime:J

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final sharedCache:Z

.field private final useHeuristicCaching:Z

.field private final validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .registers 3

    .line 71
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;-><init>()V

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 63
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    .line 64
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isSharedCache()Z

    move-result p1

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    .line 65
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    .line 66
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    .line 67
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J

    move-result-wide p1

    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    return-void
.end method

.method private cacheEntryDoesNotContainMethodAndEntity(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 250
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private entryIsNotA204Response(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 246
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private etagValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 11

    .line 314
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 315
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 316
    :goto_e
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_43

    .line 318
    array-length v1, p1

    move v2, v0

    :goto_19
    if-ge v2, v1, :cond_43

    aget-object v3, p1, v2

    .line 319
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_23
    if-ge v5, v4, :cond_40

    aget-object v6, v3, v5

    .line 320
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    const-string v7, "*"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    if-nez p2, :cond_3b

    .line 322
    :cond_35
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    :cond_3b
    const/4 p1, 0x1

    return p1

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_43
    return v0
.end method

.method private getMaxStale(Lcz/msebera/android/httpclient/HttpRequest;)J
    .registers 18

    .line 105
    const-string v0, "Cache-Control"

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    :goto_e
    if-ge v5, v1, :cond_67

    aget-object v8, v0, v5

    .line 106
    invoke-interface {v8}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move v10, v4

    :goto_18
    if-ge v10, v9, :cond_64

    aget-object v11, v8, v10

    .line 107
    const-string v12, "max-stale"

    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_61

    .line 108
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3e

    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    :cond_3e
    cmp-long v12, v6, v2

    if-nez v12, :cond_48

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_61

    :cond_48
    const-wide/16 v12, 0x0

    .line 113
    :try_start_4a
    invoke-interface {v11}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_52} :catch_60

    cmp-long v11, v14, v12

    if-gez v11, :cond_57

    goto :goto_58

    :cond_57
    move-wide v12, v14

    :goto_58
    cmp-long v11, v6, v2

    if-eqz v11, :cond_60

    cmp-long v11, v12, v6

    if-gez v11, :cond_61

    :catch_60
    :cond_60
    move-wide v6, v12

    :cond_61
    :goto_61
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_67
    return-wide v6
.end method

.method private hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 300
    const-string v0, "If-None-Match"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 304
    const-string v0, "If-Modified-Since"

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private hasUnsupportedCacheEntryForGet(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 254
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->cacheEntryDoesNotContainMethodAndEntity(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->entryIsNotA204Response(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private hasUnsupportedConditionalHeaders(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 294
    const-string v0, "If-Range"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, "If-Match"

    .line 295
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, "If-Unmodified-Since"

    .line 296
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method private hasValidDateField(Lcz/msebera/android/httpclient/HttpRequest;Ljava/lang/String;)Z
    .registers 4

    .line 361
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    if-lez p2, :cond_16

    aget-object p1, p1, v0

    .line 362
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    return v0
.end method

.method private isFreshEnough(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpRequest;Ljava/util/Date;)Z
    .registers 12

    .line 75
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 78
    :cond_a
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    iget v5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F

    iget-wide v6, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J

    move-object v3, p1

    move-object v4, p3

    .line 79
    invoke-virtual/range {v2 .. v7}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    :cond_1d
    move-object v3, p1

    move-object v4, p3

    .line 82
    :cond_1f
    invoke-direct {p0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_27

    return p3

    .line 85
    :cond_27
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lcz/msebera/android/httpclient/HttpRequest;)J

    move-result-wide p1

    const-wide/16 v5, -0x1

    cmp-long v0, p1, v5

    if-nez v0, :cond_32

    return p3

    .line 89
    :cond_32
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, v3, v4}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-lez p1, :cond_3d

    return v1

    :cond_3d
    return p3
.end method

.method private isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 242
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private lastModifiedValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 9

    .line 340
    const-string v0, "Last-Modified"

    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 343
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    :goto_12
    const/4 v0, 0x0

    if-nez p2, :cond_16

    return v0

    .line 349
    :cond_16
    const-string v1, "If-Modified-Since"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_1e
    if-ge v2, v1, :cond_3c

    aget-object v3, p1, v2

    .line 350
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 352
    invoke-virtual {v3, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {p2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    return v0

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3c
    const/4 p1, 0x1

    return p1
.end method

.method private originInsistsOnFreshness(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 6

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 96
    :cond_a
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    .line 99
    :cond_10
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    const-string v3, "s-maxage"

    .line 100
    invoke-virtual {v0, p1, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    return v2

    :cond_24
    :goto_24
    return v1
.end method


# virtual methods
.method public allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 9

    .line 274
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    .line 275
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    .line 277
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    if-eqz v1, :cond_1f

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1f

    move p1, v2

    goto :goto_20

    :cond_1f
    move p1, v3

    :goto_20
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    if-eqz v4, :cond_28

    if-nez p1, :cond_29

    :cond_28
    return v3

    :cond_29
    if-eqz v0, :cond_2e

    if-nez v4, :cond_2e

    return v3

    :cond_2e
    if-eqz v1, :cond_33

    if-nez p1, :cond_33

    return v3

    :cond_33
    return v2
.end method

.method public canCachedResponseBeUsed(Lcz/msebera/android/httpclient/HttpHost;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 146
    invoke-direct {v1, v2, v0, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpRequest;Ljava/util/Date;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_17

    .line 147
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Cache entry was not fresh enough"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v5

    .line 151
    :cond_17
    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isGet(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v4, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 152
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Cache entry Content-Length and header information do not match"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 156
    :cond_2d
    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 157
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Request contained conditional headers we don\'t handle"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 161
    :cond_3b
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusCode()I

    move-result v4

    const/16 v6, 0x130

    if-ne v4, v6, :cond_4a

    return v5

    .line 165
    :cond_4a
    invoke-virtual {v1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v1, v0, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_57

    return v5

    .line 169
    :cond_57
    invoke-direct {v1, v0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedCacheEntryForGet(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 170
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "HEAD response caching enabled but the cache entry does not contain a request method, entity or a 204 response"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 175
    :cond_65
    const-string v4, "Cache-Control"

    invoke-interface {v0, v4}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v4, v0

    move v6, v5

    :goto_6d
    if-ge v6, v4, :cond_189

    aget-object v7, v0, v6

    .line 176
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_77
    if-ge v9, v8, :cond_182

    aget-object v10, v7, v9

    .line 177
    const-string v11, "no-cache"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 178
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response contained NO CACHE directive, cache was not suitable"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v5

    .line 182
    :cond_8f
    const-string v11, "no-store"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 183
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response contained NO STORE directive, cache was not suitable"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    return v5

    .line 187
    :cond_a3
    const-string v11, "max-age"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e4

    .line 189
    :try_start_af
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 190
    iget-object v12, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v12, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v12

    int-to-long v14, v11

    cmp-long v11, v12, v14

    if-lez v11, :cond_e4

    .line 191
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response from cache was NOT suitable due to max age"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_c9
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_c9} :catch_ca

    return v5

    :catch_ca
    move-exception v0

    .line 196
    iget-object v2, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response from cache was malformed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v5

    .line 201
    :cond_e4
    const-string v11, "max-stale"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Response from cache was malformed: "

    if-eqz v11, :cond_12c

    .line 203
    :try_start_f2
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 204
    iget-object v13, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v13, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v13
    :try_end_100
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_100} :catch_112

    move/from16 p1, v5

    move v15, v6

    int-to-long v5, v11

    cmp-long v5, v13, v5

    if-lez v5, :cond_12f

    .line 205
    :try_start_108
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response from cache was not suitable due to Max stale freshness"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_10f
    .catch Ljava/lang/NumberFormatException; {:try_start_108 .. :try_end_10f} :catch_110

    return p1

    :catch_110
    move-exception v0

    goto :goto_115

    :catch_112
    move-exception v0

    move/from16 p1, v5

    .line 210
    :goto_115
    iget-object v2, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return p1

    :cond_12c
    move/from16 p1, v5

    move v15, v6

    .line 215
    :cond_12f
    const-string v5, "min-fresh"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 217
    :try_start_13b
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-gez v10, :cond_14a

    return p1

    .line 221
    :cond_14a
    iget-object v10, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v10, v2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v10

    .line 222
    iget-object v13, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;

    invoke-virtual {v13, v2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v13

    sub-long/2addr v13, v10

    cmp-long v5, v13, v5

    if-gez v5, :cond_17b

    .line 224
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response from cache was not suitable due to min fresh freshness requirement"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
    :try_end_162
    .catch Ljava/lang/NumberFormatException; {:try_start_13b .. :try_end_162} :catch_163

    return p1

    :catch_163
    move-exception v0

    .line 230
    iget-object v2, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return p1

    :cond_17b
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move v6, v15

    goto/16 :goto_77

    :cond_182
    move/from16 p1, v5

    move v15, v6

    add-int/lit8 v6, v15, 0x1

    goto/16 :goto_6d

    .line 237
    :cond_189
    iget-object v0, v1, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response from cache was suitable"

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isConditional(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .registers 3

    .line 263
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method
