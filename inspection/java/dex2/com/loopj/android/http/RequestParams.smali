.class public Lcom/loopj/android/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/RequestParams$StreamWrapper;,
        Lcom/loopj/android/http/RequestParams$FileWrapper;
    }
.end annotation


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field protected static final LOG_TAG:Ljava/lang/String; = "RequestParams"


# instance fields
.field protected autoCloseInputStreams:Z

.field protected contentEncoding:Ljava/lang/String;

.field protected elapsedFieldInJsonStreamer:Ljava/lang/String;

.field protected final fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/loopj/android/http/RequestParams$FileWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final fileParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected forceMultipartEntity:Z

.field protected isRepeatable:Z

.field protected final streamParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/loopj/android/http/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected useJsonStreamer:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 118
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 143
    new-instance v0, Lcom/loopj/android/http/RequestParams$1;

    invoke-direct {v0, p1, p2}, Lcom/loopj/android/http/RequestParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    .line 110
    const-string v0, "_elapsed"

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 112
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    if-eqz p1, :cond_57

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_57
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 6

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    .line 110
    const-string v1, "_elapsed"

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    .line 112
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 157
    array-length v1, p1

    .line 158
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_4d

    :goto_36
    if-ge v0, v1, :cond_4c

    .line 161
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .line 162
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    :cond_4c
    return-void

    .line 159
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Supplied arguments must be even"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createFormEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .registers 5

    .line 566
    :try_start_0
    new-instance v0, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 568
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "RequestParams"

    const-string v3, "createFormEntity failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private createJsonStreamerEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
    new-instance v0, Lcom/loopj/android/http/JsonStreamerEntity;

    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 529
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/loopj/android/http/JsonStreamerEntity;-><init>(Lcom/loopj/android/http/ResponseHandlerInterface;ZLjava/lang/String;)V

    .line 533
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_25

    .line 538
    :cond_3f
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_49

    .line 543
    :cond_63
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6d

    .line 548
    :cond_87
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_91
    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 549
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 550
    iget-object v3, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_91

    .line 551
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v4, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 552
    invoke-static {v3, v4, v5, v2}, Lcom/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v2

    .line 551
    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_91

    :cond_bd
    return-object v0
.end method

.method private createMultipartEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    new-instance v0, Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {v0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity;-><init>(Lcom/loopj/android/http/ResponseHandlerInterface;)V

    .line 575
    iget-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z

    invoke-virtual {v0, p1}, Lcom/loopj/android/http/SimpleMultipartEntity;->setIsRepeatable(Z)V

    .line 578
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_32
    const/4 p1, 0x0

    .line 583
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, v1}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 585
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 589
    :cond_57
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_61
    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 590
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    .line 591
    iget-object v3, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_61

    .line 592
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v4, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iget-object v2, v2, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_61

    .line 598
    :cond_87
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 599
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 600
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v2, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v4, v2, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    iget-object v2, v2, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 604
    :cond_b3
    iget-object p1, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_bd
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 605
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 606
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loopj/android/http/RequestParams$FileWrapper;

    .line 607
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v6, v3, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    iget-object v3, v3, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_ef
    return-object v0
.end method

.method private getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 628
    instance-of v1, p2, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    .line 629
    check-cast p2, Ljava/util/Map;

    .line 630
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 632
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_26

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Comparable;

    if-eqz v2, :cond_26

    .line 633
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 635
    :cond_26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 636
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 637
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    if-nez p1, :cond_43

    .line 639
    check-cast v2, Ljava/lang/String;

    goto :goto_4f

    :cond_43
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s[%s]"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4f
    invoke-direct {p0, v2, v3}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    .line 644
    :cond_57
    instance-of v1, p2, Ljava/util/List;

    const-string v3, "%s[%d]"

    if-eqz v1, :cond_81

    .line 645
    check-cast p2, Ljava/util/List;

    .line 646
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_63
    if-ge v2, v1, :cond_c2

    .line 648
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 650
    :cond_81
    instance-of v1, p2, [Ljava/lang/Object;

    if-eqz v1, :cond_a6

    .line 651
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 652
    array-length v1, p2

    :goto_8a
    if-ge v2, v1, :cond_c2

    .line 654
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-direct {p0, v4, v5}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 656
    :cond_a6
    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_c3

    .line 657
    check-cast p2, Ljava/util/Set;

    .line 658
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 659
    invoke-direct {p0, p1, v1}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_b0

    :cond_c2
    return-object v0

    .line 662
    :cond_c3
    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    .line 384
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 387
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 388
    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_14
    instance-of p1, v0, Ljava/util/List;

    if-eqz p1, :cond_1e

    .line 391
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 392
    :cond_1e
    instance-of p1, v0, Ljava/util/Set;

    if-eqz p1, :cond_27

    .line 393
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_27
    return-void
.end method

.method public getEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z

    if-eqz v0, :cond_9

    .line 518
    invoke-direct {p0, p1}, Lcom/loopj/android/http/RequestParams;->createJsonStreamerEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    return-object p1

    .line 519
    :cond_9
    iget-boolean v0, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 520
    invoke-direct {p0}, Lcom/loopj/android/http/RequestParams;->createFormEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    return-object p1

    .line 522
    :cond_2a
    invoke-direct {p0, p1}, Lcom/loopj/android/http/RequestParams;->createMultipartEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    return-object p1
.end method

.method protected getParamString()Ljava/lang/String;
    .registers 3

    .line 668
    invoke-virtual {p0}, Lcom/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 617
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 618
    new-instance v3, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_30
    const/4 v1, 0x0

    .line 621
    iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1, v2}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 419
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 420
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 421
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 422
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    return p1

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_b

    .line 360
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 5

    if-eqz p1, :cond_b

    .line 372
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_15

    .line 284
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_14

    .line 288
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/loopj/android/http/RequestParams$FileWrapper;

    invoke-direct {v1, p2, p3, p4}, Lcom/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void

    .line 285
    :cond_15
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 322
    iget-boolean v5, p0, Lcom/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 336
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p5}, Lcom/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 348
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 201
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2b

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    array-length v1, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_26

    aget-object v3, p2, v2

    if-eqz v3, :cond_20

    .line 230
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 233
    new-instance v4, Lcom/loopj/android/http/RequestParams$FileWrapper;

    invoke-direct {v4, v3, p3, p4}, Lcom/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 231
    :cond_20
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1

    .line 235
    :cond_26
    iget-object p2, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAutoCloseInputStreams(Z)V
    .registers 2

    .line 505
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_5

    .line 175
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    return-void

    .line 177
    :cond_5
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v0, "RequestParams"

    const-string v1, "setContentEncoding called with null attribute"

    invoke-interface {p1, v0, v1}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setElapsedFieldInJsonStreamer(Ljava/lang/String;)V
    .registers 2

    .line 495
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams;->elapsedFieldInJsonStreamer:Ljava/lang/String;

    return-void
.end method

.method public setForceMultipartEntityContentType(Z)V
    .registers 2

    .line 190
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->forceMultipartEntity:Z

    return-void
.end method

.method public setHttpEntityIsRepeatable(Z)V
    .registers 2

    .line 478
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->isRepeatable:Z

    return-void
.end method

.method public setUseJsonStreamer(Z)V
    .registers 2

    .line 482
    iput-boolean p1, p0, Lcom/loopj/android/http/RequestParams;->useJsonStreamer:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "&"

    const-string v4, "="

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_28

    .line 430
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 437
    :cond_3e
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5d

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_5d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, "STREAM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 446
    :cond_6f
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8e

    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_8e
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v2, "FILE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 455
    :cond_a0
    iget-object v1, p0, Lcom/loopj/android/http/RequestParams;->fileArrayParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_bf

    .line 457
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_bf
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v5, "FILES(SIZE="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    :cond_e5
    const/4 v1, 0x0

    .line 464
    iget-object v2, p0, Lcom/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1, v2}, Lcom/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 465
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_105

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_105
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f0

    .line 474
    :cond_117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
