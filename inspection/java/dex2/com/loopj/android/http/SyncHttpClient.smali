.class public Lcom/loopj/android/http/SyncHttpClient;
.super Lcom/loopj/android/http/AsyncHttpClient;
.source "SyncHttpClient.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x50

    const/16 v1, 0x1bb

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, v2, v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x1bb

    .line 48
    invoke-direct {p0, v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 4

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method


# virtual methods
.method protected sendRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .registers 8

    if-eqz p4, :cond_7

    .line 87
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x1

    .line 90
    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setUseSynchronousMode(Z)V

    .line 95
    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/SyncHttpClient;->newAsyncHttpRequest(Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;Lcz/msebera/android/httpclient/protocol/HttpContext;Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/loopj/android/http/AsyncHttpRequest;->run()V

    .line 99
    new-instance p1, Lcom/loopj/android/http/RequestHandle;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/loopj/android/http/RequestHandle;-><init>(Lcom/loopj/android/http/AsyncHttpRequest;)V

    return-object p1
.end method
