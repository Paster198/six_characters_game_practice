.class public final Lcz/msebera/android/httpclient/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    goto :goto_12

    .line 85
    :cond_3
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 86
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 88
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_12
    :goto_12
    return-void
.end method

.method public static consumeQuietly(Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 1

    .line 67
    :try_start_0
    invoke-static {p0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public static getContentCharSet(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    const-string v0, "Entity"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 160
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p0

    .line 161
    array-length v0, p0

    if-lez v0, :cond_26

    const/4 v0, 0x0

    .line 162
    aget-object p0, p0, v0

    const-string v0, "charset"

    invoke-interface {p0, v0}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 164
    invoke-interface {p0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContentMimeType(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    const-string v0, "Entity"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 188
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p0

    .line 189
    array-length v0, p0

    if-lez v0, :cond_1e

    const/4 v0, 0x0

    .line 190
    aget-object p0, p0, v0

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toByteArray(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const-string v0, "Entity"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_d
    :try_start_d
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    const-string v3, "HTTP entity too large to be buffered in memory"

    invoke-static {v1, v3}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 129
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int p0, v3

    const/16 v1, 0x1000

    if-gez p0, :cond_2b

    move p0, v1

    .line 133
    :cond_2b
    new-instance v3, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-direct {v3, p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    .line 134
    new-array p0, v1, [B

    .line 136
    :goto_32
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3d

    .line 137
    invoke-virtual {v3, p0, v2, v1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    goto :goto_32

    .line 139
    :cond_3d
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p0
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_45

    .line 141
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_45
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 291
    move-object v1, v0

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 273
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Lcz/msebera/android/httpclient/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 214
    const-string v0, "Entity"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 220
    :cond_d
    :try_start_d
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    move v2, v3

    :goto_1c
    const-string v4, "HTTP entity too large to be buffered in memory"

    invoke-static {v2, v4}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 222
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v4
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_6c

    long-to-int v2, v4

    if-gez v2, :cond_2a

    const/16 v2, 0x1000

    .line 228
    :cond_2a
    :try_start_2a
    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->get(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 230
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_34
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2a .. :try_end_34} :catch_36
    .catchall {:try_start_2a .. :try_end_34} :catchall_6c

    move-object v1, p0

    goto :goto_39

    :catch_36
    move-exception p0

    if-eqz p1, :cond_62

    :cond_39
    :goto_39
    if-nez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object p1, v1

    :goto_3d
    if-nez p1, :cond_41

    .line 241
    :try_start_3f
    sget-object p1, Lcz/msebera/android/httpclient/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    .line 243
    :cond_41
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    new-instance p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    const/16 v1, 0x400

    .line 245
    new-array v1, v1, [C

    .line 247
    :goto_4f
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5a

    .line 248
    invoke-virtual {p1, v1, v3, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V

    goto :goto_4f

    .line 250
    :cond_5a
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_3f .. :try_end_5e} :catchall_6c

    .line 252
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    .line 234
    :cond_62
    :try_start_62
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {p0}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p0

    .line 252
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static updateEntity(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/HttpEntity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const-string v0, "Response"

    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 108
    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method
