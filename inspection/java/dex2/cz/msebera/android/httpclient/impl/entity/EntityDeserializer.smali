.class public Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;
.super Ljava/lang/Object;
.source "EntityDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lenStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "Content length strategy"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->lenStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    return-void
.end method


# virtual methods
.method public deserialize(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/HttpEntity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v0, "HTTP message"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->doDeserialize(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/entity/BasicHttpEntity;

    move-result-object p1

    return-object p1
.end method

.method protected doDeserialize(Lcz/msebera/android/httpclient/io/SessionInputBuffer;Lcz/msebera/android/httpclient/HttpMessage;)Lcz/msebera/android/httpclient/entity/BasicHttpEntity;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;-><init>()V

    .line 95
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/entity/EntityDeserializer;->lenStrategy:Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;

    invoke-interface {v1, p2}, Lcz/msebera/android/httpclient/entity/ContentLengthStrategy;->determineLength(Lcz/msebera/android/httpclient/HttpMessage;)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_23

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setChunked(Z)V

    .line 98
    invoke-virtual {v0, v4, v5}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentLength(J)V

    .line 99
    new-instance v1, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/io/ChunkedInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_45

    :cond_23
    cmp-long v3, v1, v4

    const/4 v6, 0x0

    if-nez v3, :cond_37

    .line 101
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setChunked(Z)V

    .line 102
    invoke-virtual {v0, v4, v5}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentLength(J)V

    .line 103
    new-instance v1, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;

    invoke-direct {v1, p1}, Lcz/msebera/android/httpclient/impl/io/IdentityInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_45

    .line 105
    :cond_37
    invoke-virtual {v0, v6}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setChunked(Z)V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentLength(J)V

    .line 107
    new-instance v3, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;

    invoke-direct {v3, p1, v1, v2}, Lcz/msebera/android/httpclient/impl/io/ContentLengthInputStream;-><init>(Lcz/msebera/android/httpclient/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 110
    :goto_45
    const-string p1, "Content-Type"

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 112
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentType(Lcz/msebera/android/httpclient/Header;)V

    .line 114
    :cond_50
    const-string p1, "Content-Encoding"

    invoke-interface {p2, p1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 116
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/entity/BasicHttpEntity;->setContentEncoding(Lcz/msebera/android/httpclient/Header;)V

    :cond_5b
    return-object v0
.end method
