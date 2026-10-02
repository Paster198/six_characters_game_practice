.class public Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;
.super Ljava/lang/Object;
.source "ManagedHttpClientConnectionFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/conn/HttpConnectionFactory<",
        "Lcz/msebera/android/httpclient/conn/routing/HttpRoute;",
        "Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;


# instance fields
.field public headerlog:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

.field private final requestWriterFactory:Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParserFactory:Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field public wirelog:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0, v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, v0, v0}, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory<",
            "Lcz/msebera/android/httpclient/HttpRequest;",
            ">;",
            "Lcz/msebera/android/httpclient/io/HttpMessageParserFactory<",
            "Lcz/msebera/android/httpclient/HttpResponse;",
            ">;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            "Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-class v1, Lcz/msebera/android/httpclient/impl/conn/DefaultManagedHttpClientConnection;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 65
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "cz.msebera.android.httpclient.headers"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->headerlog:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 66
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v1, "cz.msebera.android.httpclient.wire"

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->wirelog:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    if-eqz p1, :cond_21

    goto :goto_23

    .line 82
    :cond_21
    sget-object p1, Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/io/DefaultHttpRequestWriterFactory;

    :goto_23
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;

    if-eqz p2, :cond_28

    goto :goto_2a

    .line 84
    :cond_28
    sget-object p2, Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParserFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/conn/DefaultHttpResponseParserFactory;

    :goto_2a
    iput-object p2, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->responseParserFactory:Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;

    if-eqz p3, :cond_2f

    goto :goto_31

    .line 86
    :cond_2f
    sget-object p3, Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/LaxContentLengthStrategy;

    :goto_31
    iput-object p3, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    if-eqz p4, :cond_36

    goto :goto_38

    .line 88
    :cond_36
    sget-object p4, Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/entity/StrictContentLengthStrategy;

    :goto_38
    iput-object p4, p0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/HttpConnection;
    .registers 3

    .line 56
    check-cast p1, Lcz/msebera/android/httpclient/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->create(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/conn/ManagedHttpClientConnection;
    .registers 23

    move-object/from16 v0, p0

    if-eqz p2, :cond_7

    move-object/from16 v1, p2

    goto :goto_9

    .line 109
    :cond_7
    sget-object v1, Lcz/msebera/android/httpclient/config/ConnectionConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    .line 112
    :goto_9
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 113
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 114
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v3

    goto :goto_1a

    :cond_18
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 115
    :goto_1a
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 116
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v4

    goto :goto_27

    :cond_25
    sget-object v4, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_27
    if-eqz v2, :cond_40

    .line 118
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 119
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 120
    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 121
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 123
    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-object v14, v2

    move-object v13, v5

    goto :goto_43

    :cond_40
    const/4 v5, 0x0

    move-object v13, v5

    move-object v14, v13

    .line 125
    :goto_43
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http-outgoing-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 126
    new-instance v6, Lcz/msebera/android/httpclient/impl/conn/LoggingManagedHttpClientConnection;

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-object v9, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->headerlog:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->wirelog:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 131
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getBufferSize()I

    move-result v11

    .line 132
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getFragmentSizeHint()I

    move-result v12

    .line 135
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/config/ConnectionConfig;->getMessageConstraints()Lcz/msebera/android/httpclient/config/MessageConstraints;

    move-result-object v15

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->incomingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->outgoingContentStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;

    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/conn/ManagedHttpClientConnectionFactory;->responseParserFactory:Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v6 .. v19}, Lcz/msebera/android/httpclient/impl/conn/LoggingManagedHttpClientConnection;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lcz/msebera/android/httpclient/config/MessageConstraints;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;Lcz/msebera/android/httpclient/io/HttpMessageWriterFactory;Lcz/msebera/android/httpclient/io/HttpMessageParserFactory;)V

    return-object v6
.end method
