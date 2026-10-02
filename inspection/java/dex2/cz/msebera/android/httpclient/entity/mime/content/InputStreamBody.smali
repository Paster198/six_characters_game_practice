.class public Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;
.super Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;
.source "InputStreamBody.java"


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 4

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V
    .registers 4

    .line 69
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;-><init>(Lcz/msebera/android/httpclient/entity/ContentType;)V

    .line 70
    const-string p2, "Input stream"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    .line 72
    iput-object p3, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    .line 62
    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-direct {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-static {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x1000

    .line 90
    :try_start_7
    new-array v0, v0, [B

    .line 92
    :goto_9
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_17

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    .line 95
    :cond_17
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_20

    .line 97
    iget-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_20
    move-exception p1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
