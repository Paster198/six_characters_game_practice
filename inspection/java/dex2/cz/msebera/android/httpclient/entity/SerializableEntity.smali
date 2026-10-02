.class public Lcz/msebera/android/httpclient/entity/SerializableEntity;
.super Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# instance fields
.field private objRef:Ljava/io/Serializable;

.field private objSer:[B


# direct methods
.method public constructor <init>(Ljava/io/Serializable;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 79
    const-string v0, "Source object"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;-><init>()V

    .line 66
    const-string v0, "Source object"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_e

    .line 68
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    return-void

    .line 70
    :cond_e
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    return-void
.end method

.method private createBytes(Ljava/io/Serializable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objSer:[B

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_9

    .line 94
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    .line 96
    :cond_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objSer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .line 101
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    return-wide v0

    .line 104
    :cond_7
    array-length v0, v0

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

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_17

    .line 122
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    iget-object p1, p0, Lcz/msebera/android/httpclient/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    return-void

    .line 126
    :cond_17
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
