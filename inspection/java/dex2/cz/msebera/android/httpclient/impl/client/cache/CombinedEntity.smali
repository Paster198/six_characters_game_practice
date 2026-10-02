.class Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "CombinedEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;
    }
.end annotation


# instance fields
.field private final combinedStream:Ljava/io/InputStream;

.field private final resource:Lcz/msebera/android/httpclient/client/cache/Resource;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/client/cache/Resource;Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 48
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    .line 49
    new-instance v0, Ljava/io/SequenceInputStream;

    new-instance v1, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;

    .line 50
    invoke-interface {p1}, Lcz/msebera/android/httpclient/client/cache/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity$ResourceStream;-><init>(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p2}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->dispose()V

    return-void
.end method

.method private dispose()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->resource:Lcz/msebera/android/httpclient/client/cache/Resource;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/client/cache/Resource;->dispose()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->combinedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/cache/CombinedEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x800

    .line 79
    :try_start_b
    new-array v1, v1, [B

    .line 80
    :goto_d
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1d

    goto :goto_d

    .line 84
    :cond_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1d
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
