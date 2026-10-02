.class public final Lcom/google/android/datatransport/runtime/EncodedPayload;
.super Ljava/lang/Object;
.source "EncodedPayload.java"


# instance fields
.field private final bytes:[B

.field private final encoding:Lcom/google/android/datatransport/Encoding;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/Encoding;[B)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 40
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 41
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    return-void

    .line 38
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encoding is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 55
    :cond_4
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 57
    :cond_a
    check-cast p1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 59
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    iget-object v2, p1, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v0, v2}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 60
    :cond_17
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    iget-object p1, p1, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    return-object v0
.end method

.method public getEncoding()Lcom/google/android/datatransport/Encoding;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v0}, Lcom/google/android/datatransport/Encoding;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EncodedPayload{encoding="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytes=[...]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
