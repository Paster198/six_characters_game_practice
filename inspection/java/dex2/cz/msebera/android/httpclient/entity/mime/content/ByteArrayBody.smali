.class public Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;
.super Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V
    .registers 4

    .line 74
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;-><init>(Lcz/msebera/android/httpclient/entity/ContentType;)V

    .line 75
    const-string p2, "byte[]"

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;->data:[B

    .line 77
    iput-object p3, p0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 4

    .line 87
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-static {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;-><init>([BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 112
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
