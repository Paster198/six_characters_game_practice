.class public Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;
.super Ljava/lang/Object;
.source "DefaultFailureCache.java"

# interfaces
.implements Lcz/msebera/android/httpclient/impl/client/cache/FailureCache;


# static fields
.field static final DEFAULT_MAX_SIZE:I = 0x3e8

.field static final MAX_UPDATE_TRIES:I = 0xa


# instance fields
.field private final maxSize:I

.field private final storage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3e8

    .line 55
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    .line 64
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
    .registers 9

    .line 136
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    .line 138
    invoke-virtual {v5}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getCreationTimeInNanos()J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gez v7, :cond_10

    .line 141
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    move-object v3, v1

    move-wide v1, v5

    goto :goto_10

    :cond_33
    return-object v3
.end method

.method private removeOldestEntryIfMapSizeExceeded()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->maxSize:I

    if-le v0, v1, :cond_19

    .line 126
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->findValueWithOldestTimestamp()Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 128
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method private updateValue(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3b

    .line 104
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    if-nez v1, :cond_1e

    .line 106
    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    .line 107
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_38

    goto :goto_3b

    .line 112
    :cond_1e
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_28

    goto :goto_3b

    .line 116
    :cond_28
    new-instance v3, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, p1, v2}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;-><init>(Ljava/lang/String;I)V

    .line 117
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public getErrorCount(Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_13

    .line 72
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;

    if-eqz p1, :cond_11

    .line 73
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->getErrorCount()I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1

    .line 70
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public increaseErrorCount(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 89
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->updateValue(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->removeOldestEntryIfMapSizeExceeded()V

    return-void

    .line 87
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resetErrorCount(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/DefaultFailureCache;->storage:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 79
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
