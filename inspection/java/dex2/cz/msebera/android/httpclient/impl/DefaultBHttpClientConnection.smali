.class public Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;
.super Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;
.source "DefaultBHttpClientConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpClientConnection;


# instance fields
.field private final requestWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageParser<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    .line 114
    invoke-direct/range {v0 .. v9}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lcz/msebera/android/httpclient/config/MessageConstraints;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct/range {p0 .. p7}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    move-object p1, p0

    if-eqz p8, :cond_7

    goto :goto_9

    .line 99
    :cond_7
    sget-object p8, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    .line 100
    :goto_9
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->getSessionOutputBuffer()Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    move-result-object p2

    invoke-interface {p8, p2}, Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;->create(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    move-result-object p2

    iput-object p2, p1, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->requestWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    if-eqz p9, :cond_16

    goto :goto_18

    .line 101
    :cond_16
    sget-object p9, Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpResponseParserFactory;

    .line 102
    :goto_18
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->getSessionInputBuffer()Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    move-result-object p2

    invoke-interface {p9, p2, p5}, Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;->create(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/config/MessageConstraints;)Lcz/msebera/android/httpclient/io/HttpMessageParser;

    move-result-object p2

    iput-object p2, p1, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->responseParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    return-void
.end method

.method public constructor <init>(ILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;)V
    .registers 15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 110
    invoke-direct/range {v0 .. v9}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;-><init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/impl/BHttpConnectionBase;->bind(Ljava/net/Socket;)V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 185
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->doFlush()V

    return-void
.end method

.method public isResponseAvailable(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 132
    :try_start_3
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->awaitInput(I)Z

    move-result p1
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_7} :catch_8

    return p1

    :catch_8
    const/4 p1, 0x0

    return p1
.end method

.method protected onRequestSubmitted(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 2

    return-void
.end method

.method protected onResponseReceived(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 2

    return-void
.end method

.method public receiveResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 178
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->prepareInput(Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 179
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public receiveResponseHeader()Lcz/msebera/android/httpclient/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 165
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->responseParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpMessageParser;->parse()Lcz/msebera/android/httpclient/HttpMessage;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpResponse;

    .line 166
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->onResponseReceived(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 167
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1d

    .line 168
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->incrementResponseCount()V

    :cond_1d
    return-object v0
.end method

.method public sendRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 153
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 157
    :cond_f
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->prepareOutput(Lcz/msebera/android/httpclient/HttpMessage;)Ljava/io/OutputStream;

    move-result-object p1

    .line 158
    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public sendRequestHeader(Lcz/msebera/android/httpclient/HttpRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->ensureOpen()V

    .line 143
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->requestWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/HttpMessageWriter;->write(Lcz/msebera/android/httpclient/HttpMessage;)V

    .line 144
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->onRequestSubmitted(Lcz/msebera/android/httpclient/HttpRequest;)V

    .line 145
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/DefaultBHttpClientConnection;->incrementRequestCount()V

    return-void
.end method
