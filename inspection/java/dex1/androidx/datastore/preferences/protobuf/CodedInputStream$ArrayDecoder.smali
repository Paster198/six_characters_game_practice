.class final Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;
.super Landroidx/datastore/preferences/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field private startPos:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "len",
            "immutable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 617
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;-><init>(Landroidx/datastore/preferences/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    .line 615
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 618
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/2addr p3, p2

    .line 619
    iput p3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 620
    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 621
    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    .line 622
    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLandroidx/datastore/preferences/protobuf/CodedInputStream$1;)V
    .registers 6

    .line 604
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    .line 1186
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 1187
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int v1, v0, v1

    .line 1188
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    .line 1190
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    .line 1191
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    return-void

    :cond_16
    const/4 v0, 0x0

    .line 1193
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    return-void
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 1009
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintFastPath()V

    return-void

    .line 1011
    :cond_d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarintSlowPath()V

    return-void
.end method

.method private skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 1017
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1021
    :cond_15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1026
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1030
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 643
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    .line 644
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidEndTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public enableAliasing(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1157
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 3

    .line 1205
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 1209
    :cond_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    .line 650
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    .line 1219
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1214
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public popLimit(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oldLimit"
        }
    .end annotation

    .line 1199
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1200
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_1d

    .line 1170
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    if-ltz p1, :cond_18

    .line 1174
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-gt p1, v0, :cond_13

    .line 1178
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 1180
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 1176
    :cond_13
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1172
    :cond_18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1168
    :cond_1d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 902
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_32

    .line 908
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_32

    .line 915
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-nez v1, :cond_20

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_20

    .line 916
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_2c

    .line 917
    :cond_20
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 918
    :goto_2c
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_32
    if-nez v0, :cond_37

    .line 924
    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_37
    if-gez v0, :cond_3e

    .line 927
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 929
    :cond_3e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBytes()Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_28

    .line 882
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_28

    .line 886
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    if-eqz v1, :cond_1c

    .line 887
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    goto :goto_22

    .line 888
    :cond_1c
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    .line 889
    :goto_22
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_28
    if-nez v0, :cond_2d

    .line 893
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object v0

    .line 896
    :cond_2d
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILandroidx/datastore/preferences/protobuf/Parser;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 831
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 832
    invoke-interface {p2, p0, p3}, Landroidx/datastore/preferences/protobuf/Parser;->parsePartialFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 833
    invoke-static {p1, p3}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 834
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILandroidx/datastore/preferences/protobuf/MessageLite$Builder;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 818
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 819
    invoke-interface {p2, p0, p3}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 820
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 821
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Landroidx/datastore/preferences/protobuf/Parser;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/datastore/preferences/protobuf/MessageLite;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/Parser<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 866
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 867
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v0

    .line 868
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 869
    invoke-interface {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/Parser;->parsePartialFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 870
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 871
    iget p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 872
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 875
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    return-object p1

    .line 873
    :cond_2b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Landroidx/datastore/preferences/protobuf/MessageLite$Builder;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    .line 850
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkRecursionLimit()V

    .line 851
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pushLimit(I)I

    move-result v0

    .line 852
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 853
    invoke-interface {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 854
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 855
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->recursionDepth:I

    .line 856
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 859
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->popLimit(I)V

    return-void

    .line 857
    :cond_28
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1224
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-eq v0, v1, :cond_f

    .line 1227
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 1225
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_13

    .line 1232
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_13

    add-int/2addr p1, v1

    .line 1234
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1235
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    if-gtz p1, :cond_1f

    if-nez p1, :cond_1a

    .line 1240
    sget-object p1, Landroidx/datastore/preferences/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 1242
    :cond_1a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1245
    :cond_1f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1123
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 1127
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 1128
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1129
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1124
    :cond_2e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1137
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1139
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5b

    .line 1143
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    .line 1144
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1145
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1140
    :cond_5b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawVarint32()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 971
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v1, v0, :cond_7

    goto :goto_6b

    .line 975
    :cond_7
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 977
    aget-byte v4, v2, v0

    if-ltz v4, :cond_12

    .line 978
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return v4

    :cond_12
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_18

    goto :goto_6b

    :cond_18
    add-int/lit8 v1, v0, 0x2

    .line 982
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_24

    xor-int/lit8 v0, v3, -0x80

    goto :goto_79

    :cond_24
    add-int/lit8 v4, v0, 0x3

    .line 984
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_31

    xor-int/lit16 v0, v1, 0x3f80

    :goto_2f
    move v1, v4

    goto :goto_79

    :cond_31
    add-int/lit8 v3, v0, 0x4

    .line 986
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_40

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    :goto_3e
    move v1, v3

    goto :goto_79

    :cond_40
    add-int/lit8 v4, v0, 0x5

    .line 989
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_77

    add-int/lit8 v3, v0, 0x6

    .line 992
    aget-byte v4, v2, v4

    if-gez v4, :cond_75

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_77

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_75

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_77

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_71

    .line 1004
    :goto_6b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_71
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_79

    :cond_75
    move v0, v1

    goto :goto_3e

    :cond_77
    move v0, v1

    goto :goto_2f

    .line 1001
    :goto_79
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return v0
.end method

.method public readRawVarint64()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1048
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 1050
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_ba

    .line 1054
    :cond_8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 1057
    aget-byte v4, v2, v0

    if-ltz v4, :cond_14

    .line 1058
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1b

    goto/16 :goto_ba

    :cond_1b
    add-int/lit8 v1, v0, 0x2

    .line 1062
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_29

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c1

    :cond_29
    add-int/lit8 v4, v0, 0x3

    .line 1064
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    if-ltz v1, :cond_38

    xor-int/lit16 v0, v1, 0x3f80

    int-to-long v2, v0

    move v1, v4

    goto/16 :goto_c1

    :cond_38
    add-int/lit8 v3, v0, 0x4

    .line 1066
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    if-gez v1, :cond_4b

    const v0, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v10, v0

    move v1, v3

    move-wide v2, v10

    goto/16 :goto_c1

    :cond_4b
    int-to-long v4, v1

    add-int/lit8 v1, v0, 0x5

    .line 1068
    aget-byte v3, v2, v3

    int-to-long v6, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    xor-long v3, v4, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_62

    const-wide/32 v5, 0xfe03f80

    :goto_5f
    xor-long v2, v3, v5

    goto :goto_c1

    :cond_62
    add-int/lit8 v7, v0, 0x6

    .line 1070
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x23

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_78

    const-wide v0, -0x7f01fc080L

    :goto_74
    xor-long v2, v3, v0

    move v1, v7

    goto :goto_c1

    :cond_78
    add-int/lit8 v1, v0, 0x7

    .line 1072
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x2a

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-ltz v7, :cond_8b

    const-wide v5, 0x3f80fe03f80L

    goto :goto_5f

    :cond_8b
    add-int/lit8 v7, v0, 0x8

    .line 1074
    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x31

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_9e

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_74

    :cond_9e
    add-int/lit8 v1, v0, 0x9

    .line 1084
    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x38

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_c0

    add-int/lit8 v0, v0, 0xa

    .line 1095
    aget-byte v1, v2, v1

    int-to-long v1, v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_bf

    .line 1103
    :goto_ba
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_bf
    move v1, v0

    :cond_c0
    move-wide v2, v3

    .line 1100
    :goto_c1
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-wide v2
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1110
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 1116
    :cond_18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 954
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1e

    .line 776
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 779
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sget-object v4, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 780
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_1e
    if-nez v0, :cond_23

    .line 785
    const-string v0, ""

    return-object v0

    :cond_23
    if-gez v0, :cond_2a

    .line 788
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 790
    :cond_2a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_19

    .line 796
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    .line 797
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    .line 798
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    .line 803
    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    .line 806
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 808
    :cond_25
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 628
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0

    .line 632
    :cond_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 633
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 638
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    return v0

    .line 636
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidTag()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILandroidx/datastore/preferences/protobuf/MessageLite$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 842
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readGroup(ILandroidx/datastore/preferences/protobuf/MessageLite$Builder;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 2

    .line 1162
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    return-void
.end method

.method public skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 673
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    return v1

    .line 676
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 666
    :cond_20
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipMessage()V

    .line 668
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 667
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    return v1

    .line 663
    :cond_2f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    .line 660
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipRawBytes(I)V

    return v1

    .line 657
    :cond_3d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipRawVarint()V

    return v1
.end method

.method public skipField(ILandroidx/datastore/preferences/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tag",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_27

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    .line 721
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 722
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 723
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 727
    :cond_20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    .line 706
    :cond_27
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 707
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->skipMessage(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    .line 710
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 709
    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 711
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->checkLastTagWas(I)V

    .line 712
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    .line 699
    :cond_3c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    .line 700
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 701
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeBytesNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return v1

    .line 692
    :cond_47
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 693
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 694
    invoke-virtual {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 685
    :cond_52
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->readInt64()J

    move-result-wide v2

    .line 686
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 687
    invoke-virtual {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipRawBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d

    .line 1250
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    .line 1252
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    .line 1257
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1259
    :cond_14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
