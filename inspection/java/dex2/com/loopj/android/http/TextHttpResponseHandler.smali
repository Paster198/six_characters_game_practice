.class public abstract Lcom/loopj/android/http/TextHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "TextHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpRH"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object v1, v0

    goto :goto_a

    .line 86
    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_a
    if-eqz v1, :cond_1a

    .line 87
    const-string p0, "\ufeff"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_19} :catch_1b

    return-object p0

    :cond_1a
    return-object v1

    :catch_1b
    move-exception p0

    .line 92
    sget-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "TextHttpRH"

    const-string v2, "Encoding response into string failed"

    invoke-interface {p1, v1, v2, p0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public abstract onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .line 123
    invoke-virtual {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 5

    .line 118
    invoke-virtual {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(I[Lcz/msebera/android/httpclient/Header;Ljava/lang/String;)V

    return-void
.end method
