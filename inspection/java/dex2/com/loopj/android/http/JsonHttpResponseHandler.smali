.class public Lcom/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpRH"


# instance fields
.field private useRFC5179CompatibilityMode:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 77
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 78
    iput-boolean p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 66
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 67
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/http/JsonHttpResponseHandler;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return p0
.end method


# virtual methods
.method public isUseRFC5179CompatibilityMode()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return v0
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 129
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p3, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received"

    invoke-interface {p1, p2, p3, p4}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 5

    .line 124
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p4, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received"

    invoke-interface {p1, p2, p4, p3}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 5

    .line 112
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p4, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received"

    invoke-interface {p1, p2, p4, p3}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 11

    if-eqz p3, :cond_25

    .line 191
    new-instance v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/JsonHttpResponseHandler$2;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_21

    .line 226
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 229
    :cond_21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_25
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    .line 232
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p3, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-interface {p1, p2, p3}, Lcom/loopj/android/http/LogInterface;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 233
    move-object p2, p1

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
    .registers 4

    .line 134
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p3, "onSuccess(int, Header[], String) was not overriden, but callback was received"

    invoke-interface {p1, p2, p3}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/json/JSONArray;)V
    .registers 4

    .line 100
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p3, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received"

    invoke-interface {p1, p2, p3}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/json/JSONObject;)V
    .registers 4

    .line 89
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string p2, "JsonHttpRH"

    const-string p3, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received"

    invoke-interface {p1, p2, p3}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 5

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_22

    .line 140
    new-instance v0, Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lcz/msebera/android/httpclient/Header;)V

    .line 177
    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUseSynchronousMode()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getUsePoolThread()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 178
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 181
    :cond_1e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 184
    :cond_22
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected parseResponse([B)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 253
    iget-boolean v1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    const-string v2, "["

    const-string v3, "{"

    if-eqz v1, :cond_30

    .line 254
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 255
    :cond_26
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6e

    .line 260
    :cond_30
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 261
    :cond_3e
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 262
    :cond_4c
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6e

    .line 266
    :cond_56
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6e
    :goto_6e
    if-nez v0, :cond_71

    return-object p1

    :cond_71
    return-object v0
.end method

.method public setUseRFC5179CompatibilityMode(Z)V
    .registers 2

    .line 282
    iput-boolean p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler;->useRFC5179CompatibilityMode:Z

    return-void
.end method
