.class Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;
.super Ljava/lang/Object;
.source "CacheValidityPolicy.java"


# static fields
.field public static final MAX_AGE:J = 0x80000000L


# direct methods
.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z
    .registers 14

    .line 156
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_33

    aget-object v4, p1, v2

    .line 157
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_e
    if-ge v6, v5, :cond_30

    aget-object v7, v4, v6

    .line 158
    const-string v8, "stale-if-error"

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 160
    :try_start_1e
    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_26} :catch_2d

    int-to-long v7, v7

    cmp-long v7, p2, v7

    if-gtz v7, :cond_2d

    const/4 v3, 0x1

    goto :goto_30

    :catch_2d
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_33
    return v3
.end method


# virtual methods
.method protected contentLengthHeaderMatchesActualLength(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 6

    .line 217
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasContentLengthHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 218
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getContentLengthValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method protected getAgeValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 13

    .line 235
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_b
    if-ge v3, v0, :cond_2a

    aget-object v6, p1, v3

    const-wide v7, 0x80000000L

    .line 238
    :try_start_14
    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1c} :catch_22

    cmp-long v6, v9, v1

    if-gez v6, :cond_21

    goto :goto_22

    :cond_21
    move-wide v7, v9

    :catch_22
    :goto_22
    cmp-long v6, v7, v4

    if-lez v6, :cond_27

    move-wide v4, v7

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2a
    return-wide v4
.end method

.method protected getApparentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 7

    .line 222
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_c

    const-wide v0, 0x80000000L

    return-wide v0

    .line 226
    :cond_c
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_20

    return-wide v3

    :cond_20
    const-wide/16 v3, 0x3e8

    .line 230
    div-long/2addr v1, v3

    return-wide v1
.end method

.method protected getContentLengthValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 4

    .line 193
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-nez p1, :cond_b

    return-wide v0

    .line 199
    :cond_b
    :try_start_b
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_13} :catch_13

    :catch_13
    return-wide v0
.end method

.method protected getCorrectedInitialAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 6

    .line 262
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCorrectedReceivedAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getResponseDelaySecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCorrectedReceivedAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 6

    .line 251
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getApparentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    .line 252
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getAgeValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_d

    return-wide v0

    :cond_d
    return-wide v2
.end method

.method public getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 5

    .line 53
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCorrectedInitialAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getResidentTimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected getDateValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getExpirationDate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 3

    .line 292
    const-string v0, "Expires"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 296
    :cond_a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 7

    .line 57
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getMaxAge(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    return-wide v0

    .line 62
    :cond_b
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_14

    return-wide v1

    .line 67
    :cond_14
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getExpirationDate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_1b

    return-wide v1

    .line 71
    :cond_1b
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 72
    div-long/2addr v1, v3

    return-wide v1
.end method

.method public getHeuristicFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;FJ)J
    .registers 7

    .line 99
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 100
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getLastModifiedValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    .line 103
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-gez p1, :cond_1c

    return-wide v0

    :cond_1c
    const-wide/16 v0, 0x3e8

    .line 107
    div-long/2addr p3, v0

    long-to-float p1, p3

    mul-float/2addr p2, p1

    float-to-long p1, p2

    return-wide p1

    :cond_23
    return-wide p3
.end method

.method protected getLastModifiedValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 3

    .line 185
    const-string v0, "Last-Modified"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_a
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method protected getMaxAge(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 15

    .line 272
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    array-length v0, p1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_c
    if-ge v4, v0, :cond_4c

    aget-object v7, p1, v4

    .line 273
    invoke-interface {v7}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_16
    if-ge v9, v8, :cond_49

    aget-object v10, v7, v9

    .line 274
    const-string v11, "max-age"

    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    const-string v11, "s-maxage"

    .line 275
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 277
    :cond_32
    :try_start_32
    invoke-interface {v10}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_3a} :catch_44

    cmp-long v12, v5, v1

    if-eqz v12, :cond_42

    cmp-long v12, v10, v5

    if-gez v12, :cond_46

    :cond_42
    move-wide v5, v10

    goto :goto_46

    :catch_44
    const-wide/16 v5, 0x0

    :cond_46
    :goto_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_4c
    return-wide v5
.end method

.method protected getResidentTimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 5

    .line 266
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 267
    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected getResponseDelaySecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 6

    .line 257
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    .line 258
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 6

    .line 312
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 313
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gtz v2, :cond_f

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_f
    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
    .registers 10

    .line 301
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_29

    aget-object v3, p1, v2

    .line 302
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_13
    if-ge v5, v4, :cond_26

    aget-object v6, v3, v5

    .line 303
    invoke-interface {v6}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 p1, 0x1

    return p1

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    return v1
.end method

.method protected hasContentLengthHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 206
    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public isResponseFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 5

    .line 76
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public isResponseHeuristicallyFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
    .registers 8

    .line 94
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getHeuristicFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;FJ)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public isRevalidatable(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 114
    const-string v0, "ETag"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "Last-Modified"

    .line 115
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public mayReturnStaleIfError(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 6

    .line 147
    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 148
    const-string p3, "Cache-Control"

    invoke-interface {p1, p3}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 150
    invoke-virtual {p2, p3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public mayReturnStaleWhileRevalidating(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 15

    .line 127
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    .line 128
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_13
    if-ge v6, v5, :cond_39

    aget-object v7, v4, v6

    .line 129
    const-string v8, "stale-while-revalidate"

    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 131
    :try_start_23
    invoke-interface {v7}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 132
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v8
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2f} :catch_36

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gtz v7, :cond_36

    const/4 p1, 0x1

    return p1

    :catch_36
    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3c
    return v2
.end method

.method public mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 119
    const-string v0, "must-revalidate"

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3

    .line 123
    const-string v0, "proxy-revalidate"

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
