.class public Lcz/msebera/android/httpclient/entity/ByteArrayEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "ByteArrayEntity.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final b:[B

.field protected final content:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final len:I

.field private final off:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([BLcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;-><init>([BIILcz/msebera/android/httpclient/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BIILcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 7

    .line 75
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 76
    const-string v0, "Source byte array"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_28

    .line 77
    array-length v0, p1

    if-gt p2, v0, :cond_28

    if-ltz p3, :cond_28

    add-int v0, p2, p3

    if-ltz v0, :cond_28

    array-length v1, p1

    if-gt v0, v1, :cond_28

    .line 81
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->content:[B

    .line 82
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    .line 83
    iput p2, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    .line 84
    iput p3, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    if-eqz p4, :cond_27

    .line 86
    invoke-virtual {p4}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    :cond_27
    return-void

    .line 79
    :cond_28
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "off: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " len: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " b.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public constructor <init>([BLcz/msebera/android/httpclient/entity/ContentType;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 60
    const-string v0, "Source byte array"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->content:[B

    .line 62
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    .line 64
    array-length p1, p1

    iput p1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    if-eqz p2, :cond_1b

    .line 66
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 133
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 5

    .line 110
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    iget v2, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    iget v3, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 105
    iget v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->b:[B

    iget v1, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->off:I

    iget v2, p0, Lcz/msebera/android/httpclient/entity/ByteArrayEntity;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
