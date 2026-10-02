.class final Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;
.super Landroidx/datastore/preferences/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private pos:I

.field private refillCallback:Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "input",
            "bufferSize"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2016
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;-><init>(Landroidx/datastore/preferences/protobuf/CodedInputStream$1;)V

    const v1, 0x7fffffff

    .line 2014
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2717
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2017
    const-string v0, "input"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2018
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2019
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    const/4 p1, 0x0

    .line 2020
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2021
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2022
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILandroidx/datastore/preferences/protobuf/CodedInputStream$1;)V
    .registers 4

    .line 1994
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic access$500(Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;)I
    .registers 1

    .line 1994
    iget p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return p0
.end method

.method static synthetic access$600(Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;)[B
    .registers 1

    .line 1994
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object p0
.end method

.method private static available(Ljava/io/InputStream;)I
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2056
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 2058
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2059
    throw p0
.end method

.method private static read(Ljava/io/InputStream;[BII)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2038
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 2040
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2041
    throw p0
.end method

.method private readBytesSlowPath(I)Landroidx/datastore/preferences/protobuf/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2972
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2976
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 2979
    :cond_b
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2980
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v2, v1, v0

    .line 2983
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v1

    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    const/4 v1, 0x0

    .line 2984
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2985
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v3, p1, v2

    .line 2992
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v3

    .line 2995
    new-array p1, p1, [B

    .line 2998
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3002
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 3003
    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3004
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_2c

    .line 3007
    :cond_3f
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->wrap([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method private readRawBytesSlowPath(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "size",
            "ensureNoLeakedReferences"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2837
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_f

    .line 2839
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_f
    return-object v0

    .line 2842
    :cond_10
    iget p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2843
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v1, v0, p2

    .line 2846
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    const/4 v0, 0x0

    .line 2847
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2848
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v2, p1, v1

    .line 2855
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v2

    .line 2858
    new-array p1, p1, [B

    .line 2861
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2865
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 2866
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2867
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_31

    :cond_44
    return-object p1
.end method

.method private readRawBytesSlowPathOneChunk(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 2882
    sget-object p1, Landroidx/datastore/preferences/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_6f

    .line 2889
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2890
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6a

    .line 2895
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5c

    .line 2901
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2d

    .line 2905
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->available(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    return-object p1

    .line 2908
    :cond_2d
    :goto_2d
    new-array v1, p1, [B

    .line 2911
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2912
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2913
    iput v4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2914
    iput v4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    :goto_42
    if-ge v0, p1, :cond_5b

    .line 2919
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_56

    .line 2923
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v2

    goto :goto_42

    .line 2921
    :cond_56
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_5b
    return-object v1

    .line 2897
    :cond_5c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v1, p1

    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2898
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2891
    :cond_6a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2885
    :cond_6f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeLeft"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    .line 2950
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    .line 2953
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 2957
    iget v5, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v5, v4

    iput v5, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v4

    goto :goto_10

    .line 2955
    :cond_24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    .line 2961
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    .line 2676
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2677
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    .line 2678
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    .line 2680
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    .line 2681
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    return-void

    :cond_15
    const/4 v0, 0x0

    .line 2683
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    return-void
.end method

.method private refillBuffer(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2728
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2731
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    .line 2732
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2734
    :cond_15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_1a
    return-void
.end method

.method private static skip(Ljava/io/InputStream;J)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2047
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    :catch_5
    move-exception p0

    .line 2049
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2050
    throw p0
.end method

.method private skipRawBytesSlowPath(I)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_9b

    .line 3029
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v2, v3, :cond_91

    .line 3037
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_73

    add-int/2addr v0, v1

    .line 3039
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3040
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v0, v1

    .line 3041
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3042
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v3, v0

    :goto_1d
    if-ge v3, p1, :cond_6b

    sub-int v0, p1, v3

    .line 3047
    :try_start_21
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_38

    cmp-long v4, v0, v4

    if-gtz v4, :cond_38

    if-nez v2, :cond_35

    goto :goto_6b

    :cond_35
    long-to-int v0, v0

    add-int/2addr v3, v0

    goto :goto_1d

    .line 3049
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3050
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_61
    .catchall {:try_start_21 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    .line 3064
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3065
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3066
    throw p1

    .line 3064
    :cond_6b
    :goto_6b
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3065
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    :cond_73
    if-ge v3, p1, :cond_90

    .line 3070
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int v1, v0, v1

    .line 3071
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v0, 0x1

    .line 3075
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    :goto_81
    sub-int v2, p1, v1

    .line 3076
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v2, v3, :cond_8e

    add-int/2addr v1, v3

    .line 3078
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3079
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_81

    .line 3082
    :cond_8e
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    :cond_90
    return-void

    :cond_91
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 3031
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3033
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3026
    :cond_9b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2494
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2495
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    return-void

    .line 2497
    :cond_d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

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

    .line 2503
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2507
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

    .line 2512
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2516
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->malformedVarint()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private tryRefillBuffer(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2748
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_9c

    .line 2756
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-le p1, v0, :cond_13

    return v3

    :cond_13
    add-int/2addr v1, v2

    add-int/2addr v1, p1

    .line 2761
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v1, v0, :cond_1a

    return v3

    .line 2766
    :cond_1a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_21

    .line 2767
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2770
    :cond_21
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    if-lez v0, :cond_3b

    .line 2772
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v1, v0, :cond_2f

    .line 2773
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2775
    :cond_2f
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2776
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2777
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2781
    :cond_3b
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v6, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v6

    .line 2786
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2782
    invoke-static {v0, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    if-eqz v0, :cond_73

    const/4 v1, -0x1

    if-lt v0, v1, :cond_73

    .line 2791
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_73

    if-lez v0, :cond_72

    .line 2799
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2800
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2801
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v0, p1, :cond_6d

    const/4 p1, 0x1

    return p1

    :cond_6d
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result p1

    return p1

    :cond_72
    return v3

    .line 2792
    :cond_73
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2793
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2749
    :cond_9c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes were already available in buffer"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    .line 2081
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2082
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

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 4

    .line 2695
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 2699
    :cond_9
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    .line 2088
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    .line 2710
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2705
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_e

    return v0

    :cond_e
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

    .line 2689
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2690
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 4
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

    if-ltz p1, :cond_1e

    .line 2660
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    if-ltz p1, :cond_19

    .line 2664
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt p1, v0, :cond_14

    .line 2668
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2670
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 2666
    :cond_14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2662
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2658
    :cond_1e
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

    .line 2233
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2380
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2381
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    .line 2384
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2385
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_1b
    if-ltz v0, :cond_23

    const/4 v1, 0x0

    .line 2392
    invoke-direct {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    return-object v0

    .line 2388
    :cond_23
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2398
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2399
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1f

    if-lez v0, :cond_1f

    .line 2401
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2402
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_1f
    if-nez v0, :cond_24

    .line 2406
    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_24
    if-ltz v0, :cond_30

    const/4 v1, 0x1

    .line 2415
    invoke-direct {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2409
    :cond_30
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

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

    .line 2361
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2362
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    .line 2365
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v1

    .line 2366
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    .line 2370
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    return-object v0

    :cond_1e
    if-ltz v0, :cond_25

    .line 2375
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 2373
    :cond_25
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2198
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2425
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2228
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2223
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2203
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2310
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2311
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2312
    invoke-interface {p2, p0, p3}, Landroidx/datastore/preferences/protobuf/Parser;->parsePartialFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 2313
    invoke-static {p1, p3}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2314
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

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

    .line 2297
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2298
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2299
    invoke-interface {p2, p0, p3}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 2300
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2301
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2218
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2213
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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

    .line 2345
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2346
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2347
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v0

    .line 2348
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2349
    invoke-interface {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/Parser;->parsePartialFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 2350
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2351
    iget p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2352
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 2355
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    return-object p1

    .line 2353
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

    .line 2329
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2330
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2331
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v0

    .line 2332
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2333
    invoke-interface {p1, p0, p2}, Landroidx/datastore/preferences/protobuf/MessageLite$Builder;->mergeFrom(Landroidx/datastore/preferences/protobuf/CodedInputStream;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Landroidx/datastore/preferences/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 2334
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2335
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2336
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 2339
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    return-void

    .line 2337
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

    .line 2809
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 2810
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2812
    :cond_a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2817
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2818
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_13

    if-lez p1, :cond_13

    add-int/2addr p1, v0

    .line 2819
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2820
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    const/4 v0, 0x0

    .line 2823
    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method public readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2607
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2609
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 2610
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2611
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2614
    :cond_d
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 2615
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2616
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
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2624
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2626
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 2627
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2628
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2631
    :cond_e
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x8

    .line 2632
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2633
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
.end method

.method public readRawVarint32()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2455
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2457
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_7

    goto :goto_6b

    .line 2461
    :cond_7
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 2463
    aget-byte v4, v2, v0

    if-ltz v4, :cond_12

    .line 2464
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v4

    :cond_12
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_18

    goto :goto_6b

    :cond_18
    add-int/lit8 v1, v0, 0x2

    .line 2468
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_24

    xor-int/lit8 v0, v3, -0x80

    goto :goto_79

    :cond_24
    add-int/lit8 v4, v0, 0x3

    .line 2470
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

    .line 2472
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

    .line 2475
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    const v5, 0xfe03f80

    xor-int/2addr v1, v5

    if-gez v3, :cond_77

    add-int/lit8 v3, v0, 0x6

    .line 2478
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

    .line 2490
    :goto_6b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

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

    .line 2487
    :goto_79
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return v0
.end method

.method public readRawVarint64()J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2534
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2536
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_ba

    .line 2540
    :cond_8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 2543
    aget-byte v4, v2, v0

    if-ltz v4, :cond_14

    .line 2544
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    int-to-long v0, v4

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_1b

    goto/16 :goto_ba

    :cond_1b
    add-int/lit8 v1, v0, 0x2

    .line 2548
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    if-gez v3, :cond_29

    xor-int/lit8 v0, v3, -0x80

    int-to-long v2, v0

    goto/16 :goto_c1

    :cond_29
    add-int/lit8 v4, v0, 0x3

    .line 2550
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

    .line 2552
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

    .line 2554
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

    .line 2556
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

    .line 2558
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

    .line 2560
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

    .line 2570
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

    .line 2581
    aget-byte v1, v2, v1

    int-to-long v1, v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_bf

    .line 2589
    :goto_ba
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_bf
    move v1, v0

    :cond_c0
    move-wide v2, v3

    .line 2586
    :goto_c1
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

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

    .line 2596
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

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

    .line 2602
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

    .line 2430
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

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

    .line 2435
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

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

    .line 2440
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

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

    .line 2445
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

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

    .line 2238
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1e

    .line 2239
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 2242
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2243
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    :cond_1e
    if-nez v0, :cond_23

    .line 2247
    const-string v0, ""

    return-object v0

    :cond_23
    if-ltz v0, :cond_4a

    .line 2252
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_3d

    .line 2253
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2254
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2255
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-object v1

    .line 2259
    :cond_3d
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2250
    :cond_4a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2264
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2266
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2268
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int v3, v2, v1

    if-gt v0, v3, :cond_15

    if-lez v0, :cond_15

    .line 2271
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    add-int v3, v1, v0

    .line 2272
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_2b

    :cond_15
    if-nez v0, :cond_1a

    .line 2275
    const-string v0, ""

    return-object v0

    :cond_1a
    if-ltz v0, :cond_30

    const/4 v1, 0x0

    if-gt v0, v2, :cond_27

    .line 2279
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2280
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2282
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_2b

    .line 2285
    :cond_27
    invoke-direct {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v2

    .line 2288
    :goto_2b
    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2277
    :cond_30
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->negativeSize()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

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

    .line 2065
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2066
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2070
    :cond_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2071
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 2076
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2074
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

    .line 2420
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

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

    .line 2208
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

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

    .line 2322
    invoke-static {}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILandroidx/datastore/preferences/protobuf/MessageLite$Builder;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 2

    .line 2652
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

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

    .line 2093
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

    .line 2111
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    return v1

    .line 2114
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 2104
    :cond_20
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2106
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 2105
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    return v1

    .line 2101
    :cond_2f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    .line 2098
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    return v1

    .line 2095
    :cond_3d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

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

    .line 2120
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

    .line 2159
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2160
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2161
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 2165
    :cond_20
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    .line 2144
    :cond_27
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2145
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    .line 2148
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 2147
    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 2149
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2150
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    .line 2137
    :cond_3c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    .line 2138
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2139
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeBytesNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)V

    return v1

    .line 2130
    :cond_47
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2131
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2132
    invoke-virtual {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 2123
    :cond_52
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2124
    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2125
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
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3012
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    if-ltz p1, :cond_d

    add-int/2addr v1, p1

    .line 3014
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return-void

    .line 3016
    :cond_d
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    return-void
.end method
