.class public Lcz/msebera/android/httpclient/message/BasicLineFormatter;
.super Ljava/lang/Object;
.source "BasicLineFormatter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/LineFormatter;


# static fields
.field public static final DEFAULT:Lcz/msebera/android/httpclient/message/BasicLineFormatter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->DEFAULT:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    .line 65
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHeader(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/message/LineFormatter;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_5

    .line 272
    :cond_3
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 273
    invoke-interface {p1, v0, p0}, Lcz/msebera/android/httpclient/message/LineFormatter;->formatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatProtocolVersion(Lcz/msebera/android/httpclient/ProtocolVersion;Lcz/msebera/android/httpclient/message/LineFormatter;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_5

    .line 103
    :cond_3
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 104
    invoke-interface {p1, v0, p0}, Lcz/msebera/android/httpclient/message/LineFormatter;->appendProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatRequestLine(Lcz/msebera/android/httpclient/RequestLine;Lcz/msebera/android/httpclient/message/LineFormatter;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_5

    .line 158
    :cond_3
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 159
    invoke-interface {p1, v0, p0}, Lcz/msebera/android/httpclient/message/LineFormatter;->formatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatStatusLine(Lcz/msebera/android/httpclient/StatusLine;Lcz/msebera/android/httpclient/message/LineFormatter;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_5

    .line 214
    :cond_3
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    :goto_5
    const/4 v0, 0x0

    .line 215
    invoke-interface {p1, v0, p0}, Lcz/msebera/android/httpclient/message/LineFormatter;->formatStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .line 112
    const-string v0, "Protocol version"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->estimateProtocolVersionLen(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-nez p1, :cond_11

    .line 117
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    goto :goto_14

    .line 119
    :cond_11
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 122
    :goto_14
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2f

    .line 123
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 124
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 125
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 126
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-object p1
.end method

.method protected doFormatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)V
    .registers 6

    .line 306
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-eqz p2, :cond_15

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 313
    :cond_15
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 315
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 316
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_25

    .line 318
    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method protected doFormatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)V
    .registers 7

    .line 185
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 190
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->estimateProtocolVersionLen(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v3

    add-int/2addr v2, v3

    .line 191
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 193
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 194
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 195
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 197
    invoke-interface {p2}, Lcz/msebera/android/httpclient/RequestLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->appendProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-void
.end method

.method protected doFormatStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)V
    .registers 6

    .line 242
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->estimateProtocolVersionLen(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    .line 244
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 248
    :cond_15
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->ensureCapacity(I)V

    .line 250
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->appendProtocolVersion(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/ProtocolVersion;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v0, 0x20

    .line 251
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    .line 252
    invoke-interface {p2}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    if-eqz v1, :cond_37

    .line 255
    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method protected estimateProtocolVersionLen(Lcz/msebera/android/httpclient/ProtocolVersion;)I
    .registers 2

    .line 142
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public formatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .line 281
    const-string v0, "Header"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    instance-of v0, p2, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_10

    .line 286
    check-cast p2, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p2}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p1

    return-object p1

    .line 288
    :cond_10
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->initBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p1

    .line 289
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->doFormatHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/Header;)V

    return-object p1
.end method

.method public formatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .line 167
    const-string v0, "Request line"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->initBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->doFormatRequestLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/RequestLine;)V

    return-object p1
.end method

.method public formatStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 4

    .line 223
    const-string v0, "Status line"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->initBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicLineFormatter;->doFormatStatusLine(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/StatusLine;)V

    return-object p1
.end method

.method protected initBuffer(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)Lcz/msebera/android/httpclient/util/CharArrayBuffer;
    .registers 3

    if-eqz p1, :cond_6

    .line 82
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->clear()V

    return-object p1

    .line 84
    :cond_6
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    return-object p1
.end method
