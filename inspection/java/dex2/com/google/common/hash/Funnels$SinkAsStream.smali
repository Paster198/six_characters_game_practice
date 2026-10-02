.class Lcom/google/common/hash/Funnels$SinkAsStream;
.super Ljava/io/OutputStream;
.source "Funnels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SinkAsStream"
.end annotation


# instance fields
.field final sink:Lcom/google/common/hash/PrimitiveSink;


# direct methods
.method constructor <init>(Lcom/google/common/hash/PrimitiveSink;)V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 250
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/PrimitiveSink;

    iput-object p1, p0, Lcom/google/common/hash/Funnels$SinkAsStream;->sink:Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/google/common/hash/Funnels$SinkAsStream;->sink:Lcom/google/common/hash/PrimitiveSink;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Funnels.asOutputStream("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/google/common/hash/Funnels$SinkAsStream;->sink:Lcom/google/common/hash/PrimitiveSink;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lcom/google/common/hash/PrimitiveSink;->putByte(B)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method

.method public write([B)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/google/common/hash/Funnels$SinkAsStream;->sink:Lcom/google/common/hash/PrimitiveSink;

    invoke-interface {v0, p1}, Lcom/google/common/hash/PrimitiveSink;->putBytes([B)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method

.method public write([BII)V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/google/common/hash/Funnels$SinkAsStream;->sink:Lcom/google/common/hash/PrimitiveSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/PrimitiveSink;->putBytes([BII)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method
