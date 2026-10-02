.class public Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;
.super Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;
.source "DefaultHttpResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser<",
        "Lcz/msebera/android/httpclient/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

.field private final responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V
    .registers 4

    const/4 v0, 0x0

    .line 122
    sget-object v1, Lcz/msebera/android/httpclient/config/MessageConstraints;->DEFAULT:Lcz/msebera/android/httpclient/config/MessageConstraints;

    invoke-direct {p0, p1, v0, v0, v1}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .registers 4

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, v0, p2}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .registers 5

    .line 103
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/config/MessageConstraints;)V

    if-eqz p3, :cond_6

    goto :goto_8

    .line 104
    :cond_6
    sget-object p3, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    :goto_8
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 106
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p4}, Lcz/msebera/android/httpclient/impl/io/AbstractMessageParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/params/HttpParams;)V

    .line 81
    const-string p1, "Response factory"

    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HttpResponseFactory;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    .line 82
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-void
.end method


# virtual methods
.method protected bridge synthetic parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected parseHead(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)Lcz/msebera/android/httpclient/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/HttpException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    .line 131
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->readLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2a

    .line 136
    new-instance p1, Lcz/msebera/android/httpclient/message/ParserCursor;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineParser:Lcz/msebera/android/httpclient/message/LineParser;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->lineBuf:Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {v0, v1, p1}, Lcz/msebera/android/httpclient/message/LineParser;->parseStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParser;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcz/msebera/android/httpclient/HttpResponseFactory;->newHttpResponse(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p1

    return-object p1

    .line 133
    :cond_2a
    new-instance p1, Lcz/msebera/android/httpclient/NoHttpResponseException;

    const-string v0, "The target server failed to respond"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
