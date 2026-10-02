.class public Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"


# static fields
.field public static final DEFAULT_WAIT_FOR_CONTINUE:I = 0xbb8


# instance fields
.field private final waitForContinue:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xbb8

    .line 75
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "Wait for continue time"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->positive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->waitForContinue:I

    return-void
.end method

.method private static closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V
    .registers 1

    .line 141
    :try_start_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpClientConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method


# virtual methods
.method protected canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 4

    .line 92
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    return v0

    .line 95
    :cond_12
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_2c

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_2c

    const/16 p2, 0x130

    if-eq p1, p2, :cond_2c

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    return v0
.end method

.method protected doReceiveResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    const-string v0, "Client connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_11
    if-eqz p3, :cond_19

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_18

    goto :goto_19

    :cond_18
    return-object p3

    .line 272
    :cond_19
    :goto_19
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p3

    .line 273
    invoke-virtual {p0, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 274
    invoke-interface {p2, p3}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 276
    :cond_26
    invoke-interface {p3}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_11
.end method

.method protected doSendRequest(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 195
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    const-string v0, "Client connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const-string v0, "http.connection"

    invoke-interface {p3, v0, p2}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "http.request_sent"

    invoke-interface {p3, v1, v0}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpClientConnection;->sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 205
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    const/4 v2, 0x0

    if-eqz v0, :cond_86

    .line 211
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    .line 212
    move-object v3, p1

    check-cast v3, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {v3}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_81

    sget-object v4, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    .line 213
    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/ProtocolVersion;->lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 215
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->flush()V

    .line 218
    iget v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->waitForContinue:I

    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->isResponseAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 219
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    .line 220
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->canResponseHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 221
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpClientConnection;->receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 223
    :cond_55
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v4, 0xc8

    if-ge p1, v4, :cond_7f

    const/16 v4, 0x64

    if-ne p1, v4, :cond_66

    goto :goto_81

    .line 226
    :cond_66
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected response: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    const/4 v5, 0x0

    move-object v2, v0

    :cond_81
    :goto_81
    if-eqz v5, :cond_86

    .line 237
    invoke-interface {p2, v3}, Lcz/msebera/android/httpclient/HttpClientConnection;->sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V

    .line 240
    :cond_86
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpClientConnection;->flush()V

    .line 241
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v1, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method public execute(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    .line 118
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    const-string v0, "Client connection"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    :try_start_f
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->doSendRequest(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->doReceiveResponse(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpClientConnection;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_25
    .catch Lcz/msebera/android/httpclient/HttpException; {:try_start_f .. :try_end_19} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_19} :catch_1b

    return-object p1

    :cond_1a
    return-object v0

    :catch_1b
    move-exception p1

    .line 134
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 135
    throw p1

    :catch_20
    move-exception p1

    .line 131
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 132
    throw p1

    :catch_25
    move-exception p1

    .line 128
    invoke-static {p2}, Lcz/msebera/android/httpclient/protocol/HttpRequestExecutor;->closeConnection(Lcz/msebera/android/httpclient/HttpClientConnection;)V

    .line 129
    throw p1
.end method

.method public postProcess(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    const-string v0, "http.response"

    invoke-interface {p3, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method

.method public preProcess(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string v0, "HTTP processor"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    const-string v0, "http.request"

    invoke-interface {p3, v0, p1}, Lcz/msebera/android/httpclient/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-interface {p2, p1, p3}, Lcz/msebera/android/httpclient/protocol/HttpProcessor;->process(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)V

    return-void
.end method
