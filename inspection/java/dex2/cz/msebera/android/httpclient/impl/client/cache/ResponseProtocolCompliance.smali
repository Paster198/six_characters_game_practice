.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;
.super Ljava/lang/Object;
.source "ResponseProtocolCompliance.java"


# static fields
.field private static final UNEXPECTED_100_CONTINUE:Ljava/lang/String; = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

.field private static final UNEXPECTED_PARTIAL_CONTENT:Ljava/lang/String; = "partial content was returned for a request that did not ask for it"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backendResponseMustNotHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .registers 4

    .line 214
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 215
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_37

    .line 216
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_37

    .line 217
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x130

    if-ne p1, p2, :cond_35

    goto :goto_37

    :cond_35
    const/4 p1, 0x0

    return p1

    :cond_37
    :goto_37
    const/4 p1, 0x1

    return p1
.end method

.method private consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 96
    invoke-static {p1}, Lcz/msebera/android/httpclient/impl/client/cache/IOUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_9
    return-void
.end method

.method private ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4

    .line 188
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2b

    .line 192
    :cond_11
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1e

    goto :goto_2b

    .line 196
    :cond_1e
    const-string p1, "Content-Length"

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 197
    const-string v0, "0"

    invoke-interface {p2, p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private ensure206ContainsDateHeader(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4

    .line 169
    const-string v0, "Date"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v1

    if-nez v1, :cond_14

    .line 170
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private ensure304DoesNotContainExtraEntityHeaders(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 7

    const/16 v0, 0x8

    .line 202
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Allow"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "Content-Encoding"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "Content-Language"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "Content-Length"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "Content-MD5"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "Content-Range"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "Content-Type"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "Last-Modified"

    aput-object v4, v1, v2

    .line 206
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0x130

    if-ne v2, v4, :cond_42

    :goto_38
    if-ge v3, v0, :cond_42

    .line 207
    aget-object v2, v1, v3

    .line 208
    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_42
    return-void
.end method

.method private ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const-string v0, "Range"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-nez p1, :cond_20

    .line 178
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xce

    if-eq p1, v0, :cond_15

    goto :goto_20

    .line 182
    :cond_15
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 183
    new-instance p1, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    const-string p2, "partial content was returned for a request that did not ask for it"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    return-void
.end method

.method private identityIsNotUsedInContentEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 18

    move-object/from16 v0, p1

    .line 134
    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 135
    array-length v3, v2

    if-nez v3, :cond_f

    goto/16 :goto_7d

    .line 138
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    array-length v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_17
    if-ge v6, v4, :cond_63

    aget-object v8, v2, v6

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-interface {v8}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x1

    move v13, v11

    const/4 v12, 0x0

    :goto_28
    if-ge v12, v10, :cond_4c

    aget-object v14, v8, v12

    .line 144
    const-string v15, "identity"

    invoke-interface {v14}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move v7, v11

    goto :goto_49

    :cond_3a
    if-nez v13, :cond_41

    .line 148
    const-string v5, ","

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_41
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    :goto_49
    add-int/lit8 v12, v12, 0x1

    goto :goto_28

    .line 154
    :cond_4c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_60

    .line 156
    new-instance v8, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-direct {v8, v1, v5}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_63
    if-nez v7, :cond_66

    goto :goto_7d

    .line 162
    :cond_66
    invoke-interface {v0, v1}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/Header;

    .line 164
    invoke-interface {v0, v2}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_6d

    :cond_7d
    :goto_7d
    return-void
.end method

.method private removeResponseTransferEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 3

    .line 247
    const-string v0, "TE"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 248
    const-string v0, "Transfer-Encoding"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method private requestDidNotExpect100ContinueButResponseIsOne(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_d

    goto :goto_1d

    .line 226
    :cond_d
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object p1

    .line 227
    instance-of v0, p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1e

    .line 228
    check-cast p1, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result p1

    if-eqz p1, :cond_1e

    :goto_1d
    return-void

    .line 232
    :cond_1e
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 233
    new-instance p1, Lcz/msebera/android/httpclient/client/ClientProtocolException;

    const-string p2, "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private transferEncodingIsNotReturnedTo1_0Client(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4

    .line 238
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;->getOriginal()Lcz/msebera/android/httpclient/HttpRequest;

    move-result-object p1

    .line 239
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p1

    sget-object v0, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_11

    return-void

    .line 243
    :cond_11
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->removeResponseTransferEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method

.method private warningsWithNonMatchingWarnDatesAreRemoved(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 15

    .line 102
    const-string v0, "Date"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_6e

    .line 107
    :cond_11
    const-string v1, "Warning"

    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 109
    array-length v3, v2

    if-nez v3, :cond_1d

    goto :goto_6e

    .line 113
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_26
    if-ge v6, v4, :cond_55

    aget-object v8, v2, v6

    .line 116
    invoke-static {v8}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->getWarningValues(Lcz/msebera/android/httpclient/Header;)[Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;

    move-result-object v8

    array-length v9, v8

    move v10, v5

    :goto_30
    if-ge v10, v9, :cond_52

    aget-object v11, v8, v10

    .line 117
    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->getWarnDate()Ljava/util/Date;

    move-result-object v12

    if-eqz v12, :cond_43

    .line 118
    invoke-virtual {v12, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41

    goto :goto_43

    :cond_41
    const/4 v7, 0x1

    goto :goto_4f

    .line 119
    :cond_43
    :goto_43
    new-instance v12, Lcz/msebera/android/httpclient/message/BasicHeader;

    invoke-virtual {v11}, Lcz/msebera/android/httpclient/impl/client/cache/WarningValue;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v1, v11}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_55
    if-eqz v7, :cond_6e

    .line 126
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 127
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcz/msebera/android/httpclient/Header;

    .line 128
    invoke-interface {p1, v1}, Lcz/msebera/android/httpclient/HttpResponse;->addHeader(Lcz/msebera/android/httpclient/Header;)V

    goto :goto_5e

    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method public ensureProtocolCompliance(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->backendResponseMustNotHaveBody(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 72
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lcz/msebera/android/httpclient/HttpResponse;)V

    const/4 v0, 0x0

    .line 73
    invoke-interface {p2, v0}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 76
    :cond_d
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->requestDidNotExpect100ContinueButResponseIsOne(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->transferEncodingIsNotReturnedTo1_0Client(Lcz/msebera/android/httpclient/client/methods/HttpRequestWrapper;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 80
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 84
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensure206ContainsDateHeader(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 86
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->ensure304DoesNotContainExtraEntityHeaders(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 88
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->identityIsNotUsedInContentEncoding(Lcz/msebera/android/httpclient/HttpResponse;)V

    .line 90
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseProtocolCompliance;->warningsWithNonMatchingWarnDatesAreRemoved(Lcz/msebera/android/httpclient/HttpResponse;)V

    return-void
.end method
