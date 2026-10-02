.class public abstract Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;
.super Ljava/lang/Object;
.source "AbstractHttpServerConnection.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpServerConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final entitydeserializer:Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

.field private final entityserializer:Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

.field private eofSensor:Lcz/msebera/android/httpclient/io/EofSensor;

.field private inbuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

.field private metrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

.field private requestParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageParser<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private responseWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->inbuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 82
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->outbuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 83
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->eofSensor:Lcz/msebera/android/httpclient/io/EofSensor;

    .line 84
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->requestParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    .line 85
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->responseWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    .line 86
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->metrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    .line 98
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->createEntitySerializer()Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->entityserializer:Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    .line 99
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->createEntityDeserializer()Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->entitydeserializer:Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected createConnectionMetrics(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;
    .registers 4

    .line 202
    new-instance v0, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;-><init>(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)V

    return-object v0
.end method

.method protected createEntityDeserializer()Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;
    .registers 5

    .line 121
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    new-instance v1, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;

    new-instance v2, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;-><init>(I)V

    invoke-direct {v1, v2}, Lcz/msebera/android/httpclient/impl/entity/DisallowIdentityContentLengthStrategy;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;
    .registers 3

    .line 137
    new-instance v0, Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    new-instance v1, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;-><init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpRequestFactory()Lcz/msebera/android/httpclient/HttpRequestFactory;
    .registers 2

    .line 151
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    return-object v0
.end method

.method protected createRequestParser(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageParser;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionInputBuffer;",
            "Lcz/msebera/android/httpclient/HttpRequestFactory;",
            "Lcz/msebera/android/httpclient/params/HttpParams;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageParser<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestParser;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/message/LineParser;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseWriter(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/SessionOutputBuffer;",
            "Lcz/msebera/android/httpclient/params/HttpParams;",
            ")",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriter<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Lcz/msebera/android/httpclient/impl/io/HttpResponseWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcz/msebera/android/httpclient/impl/io/HttpResponseWriter;-><init>(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/message/LineFormatter;Lcz/msebera/android/httpclient/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->outbuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 263
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->doFlush()V

    return-void
.end method

.method public getMetrics()Lcz/msebera/android/httpclient/HttpConnectionMetrics;
    .registers 2

    .line 307
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->metrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method protected init(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)V
    .registers 5

    .line 225
    const-string v0, "Input session buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->inbuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    .line 226
    const-string v0, "Output session buffer"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->outbuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 227
    instance-of v0, p1, Lcz/msebera/android/httpclient/io/EofSensor;

    if-eqz v0, :cond_1d

    .line 228
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/io/EofSensor;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->eofSensor:Lcz/msebera/android/httpclient/io/EofSensor;

    .line 232
    :cond_1d
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->createHttpRequestFactory()Lcz/msebera/android/httpclient/HttpRequestFactory;

    move-result-object v0

    .line 230
    invoke-virtual {p0, p1, v0, p3}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->createRequestParser(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpRequestFactory;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->requestParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    .line 234
    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->createResponseWriter(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    move-result-object p3

    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->responseWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    .line 237
    invoke-interface {p1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    move-result-object p1

    .line 238
    invoke-interface {p2}, Lcz/msebera/android/httpclient/io/SessionOutputBuffer;->getMetrics()Lcz/msebera/android/httpclient/io/HttpTransportMetrics;

    move-result-object p2

    .line 236
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->createConnectionMetrics(Lcz/msebera/android/httpclient/io/HttpTransportMetrics;Lcz/msebera/android/httpclient/io/HttpTransportMetrics;)Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->metrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    return-void
.end method

.method protected isEof()Z
    .registers 2

    .line 288
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->eofSensor:Lcz/msebera/android/httpclient/io/EofSensor;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/EofSensor;->isEof()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isStale()Z
    .registers 3

    .line 292
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 295
    :cond_8
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->isEof()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 299
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->inbuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/io/SessionInputBuffer;->isDataAvailable(I)Z

    .line 300
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->isEof()Z

    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_19

    return v0

    :catch_19
    return v1
.end method

.method public receiveRequestEntity(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 253
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->entitydeserializer:Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->inbuffer:Lcz/msebera/android/httpclient/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->deserialize(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 254
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public receiveRequestHeader()Lcz/msebera/android/httpclient/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 244
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->requestParser:Lcz/msebera/android/httpclient/io/HttpMessageParser;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/io/HttpMessageParser;->parse()Lcz/msebera/android/httpclient/HttpMessage;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/HttpRequest;

    .line 245
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->metrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    return-object v0
.end method

.method public sendResponseEntity(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 281
    :cond_7
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->entityserializer:Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->outbuffer:Lcz/msebera/android/httpclient/io/SessionOutputBuffer;

    .line 284
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, p1, v2}, Lcz/msebera/android/httpclient/impl/entity/EntitySerializer;->serialize(Lcz/msebera/android/httpclient/io/SessionOutputBuffer;Lcz/msebera/android/httpclient/HttpMessage;Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public sendResponseHeader(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->assertOpen()V

    .line 270
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->responseWriter:Lcz/msebera/android/httpclient/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/io/HttpMessageWriter;->write(Lcz/msebera/android/httpclient/HttpMessage;)V

    .line 271
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1e

    .line 272
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/AbstractHttpServerConnection;->metrics:Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    :cond_1e
    return-void
.end method
