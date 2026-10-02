.class public Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "DefaultResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser<",
        "Lcz/msebera/android/httpclient/HttpMessage;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxGarbageLines:I

.field private final responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 68
    new-instance p1, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 80
    const-string p1, "Response factory"

    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 82
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    .line 83
    invoke-virtual {p0, p4}, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->getMaxGarbageLines(Lcz/msebera/android/httpclient/params/HttpParams;)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    return-void
.end method


# virtual methods
.method protected getMaxGarbageLines(Lcz/msebera/android/httpclient/params/HttpParams;)I
    .registers 4

    .line 87
    const-string v0, "http.connection.max-status-line-garbage"

    const v1, 0x7fffffff

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 100
    :goto_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 101
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 104
    :cond_13
    new-instance p1, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1b
    :goto_1b
    new-instance v4, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 107
    iget-object v5, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v6, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v5, v6, v4}, Lcz/msebera/android/httpclient/message/LineParser;->hasProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 121
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v0, v4}, Lcz/msebera/android/httpclient/message/LineParser;->parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1

    :cond_40
    if-eq v2, v3, :cond_6b

    .line 110
    iget v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->maxGarbageLines:I

    if-ge v1, v2, :cond_6b

    .line 115
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 116
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Garbage in response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcz/msebera/android/httpclient/impl/conn/DefaultResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_6b
    new-instance p1, Lcz/msebera/android/httpclient/ProtocolException;

    const-string v0, "The server failed to respond with a valid HTTP response"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
