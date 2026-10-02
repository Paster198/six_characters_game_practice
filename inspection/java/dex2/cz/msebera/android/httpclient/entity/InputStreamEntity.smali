.class public Lcz/msebera/android/httpclient/entity/InputStreamEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 58
    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 5

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 6

    .line 93
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 94
    const-string v0, "Source input stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 95
    iput-wide p2, p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->length:J

    if-eqz p4, :cond_18

    .line 97
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 5

    const-wide/16 v0, -0x1

    .line 82
    invoke-direct {p0, p1, v0, v1, p2}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 111
    iget-wide v0, p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    const/16 v1, 0x1000

    .line 131
    :try_start_9
    new-array v1, v1, [B

    .line 133
    iget-wide v2, p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->length:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-gez v6, :cond_1f

    .line 135
    :goto_15
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v7, :cond_37

    .line 136
    invoke-virtual {p1, v1, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_15

    :cond_1f
    :goto_1f
    cmp-long v6, v2, v4

    if-lez v6, :cond_37

    const-wide/16 v9, 0x1000

    .line 142
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v6, v9

    invoke-virtual {v0, v1, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v7, :cond_31

    goto :goto_37

    .line 146
    :cond_31
    invoke-virtual {p1, v1, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3b

    int-to-long v9, v6

    sub-long/2addr v2, v9

    goto :goto_1f

    .line 151
    :cond_37
    :goto_37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_3b
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
