.class Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;
.super Ljava/lang/Object;
.source "CacheEntryUpdater.java"


# instance fields
.field private final resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/client/cache/HeapResourceFactory;-><init>()V

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;-><init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;)V

    return-void
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/client/cache/ResourceFactory;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    return-void
.end method

.method private entryAndResponseHaveDateHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 4

    .line 166
    const-string v0, "Date"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 167
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private entryDateHeaderNewerThenResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 4

    .line 152
    const-string v0, "Date"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    .line 153
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 154
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    .line 155
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-static {p2}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-nez p2, :cond_20

    goto :goto_29

    .line 159
    :cond_20
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    return v0
.end method

.method private removeCacheEntry1xxWarnings(Ljava/util/List;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 138
    :cond_4
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 139
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "Warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {p2, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 143
    invoke-interface {v3}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 144
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_38
    return-void
.end method

.method private removeCacheHeadersThatMatchResponse(Ljava/util/List;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_2f

    aget-object v2, p2, v1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 125
    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 126
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/Header;

    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 129
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_e

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2f
    return-void
.end method


# virtual methods
.method protected mergeHeaders(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;)[Lcz/msebera/android/httpclient/Header;
    .registers 5

    .line 105
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->entryAndResponseHaveDateHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->entryDateHeaderNewerThenResponse(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1

    .line 111
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-direct {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->removeCacheHeadersThatMatchResponse(Ljava/util/List;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 114
    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->removeCacheEntry1xxWarnings(Ljava/util/List;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)V

    .line 115
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getAllHeaders()[Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcz/msebera/android/httpclient/Header;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcz/msebera/android/httpclient/Header;

    return-object p1
.end method

.method public updateCacheEntry(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p5}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "Response must have 304 status code"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 89
    invoke-virtual {p0, p2, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->mergeHeaders(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Lcz/msebera/android/httpclient/HttpResponse;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    .line 91
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p5

    if-eqz p5, :cond_29

    .line 92
    iget-object p5, p0, Lcz/msebera/android/httpclient/impl/client/cache/CacheEntryUpdater;->resourceFactory:Lcz/msebera/android/httpclient/client/cache/ResourceFactory;

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v0

    invoke-interface {p5, p1, v0}, Lcz/msebera/android/httpclient/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lcz/msebera/android/httpclient/client/cache/Resource;)Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object p1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    move-object v7, p1

    .line 94
    new-instance v2, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .line 97
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v5

    .line 100
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v2 .. v8}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lcz/msebera/android/httpclient/StatusLine;[Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/lang/String;)V

    return-object v2
.end method
