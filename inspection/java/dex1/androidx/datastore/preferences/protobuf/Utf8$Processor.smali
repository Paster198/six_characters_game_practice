.class abstract Landroidx/datastore/preferences/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    .line 519
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    :cond_5
    :goto_5
    if-lt p1, p2, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    add-int/lit8 v0, p1, 0x1

    .line 530
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gez v1, :cond_83

    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    if-ge v1, v2, :cond_2a

    if-lt v0, p2, :cond_1b

    return v1

    :cond_1b
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_29

    .line 542
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_29
    :goto_29
    return v3

    :cond_2a
    const/16 v5, -0x10

    if-ge v1, v5, :cond_57

    add-int/lit8 v5, p2, -0x1

    if-lt v0, v5, :cond_38

    sub-int/2addr p2, v0

    .line 550
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_38
    add-int/lit8 v5, p1, 0x2

    .line 553
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_56

    const/16 v6, -0x60

    if-ne v1, v2, :cond_46

    if-lt v0, v6, :cond_56

    :cond_46
    const/16 v2, -0x13

    if-ne v1, v2, :cond_4c

    if-ge v0, v6, :cond_56

    .line 560
    :cond_4c
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_53

    goto :goto_56

    :cond_53
    add-int/lit8 p1, p1, 0x3

    goto :goto_5

    :cond_56
    :goto_56
    return v3

    :cond_57
    add-int/lit8 v2, p2, -0x2

    if-lt v0, v2, :cond_61

    sub-int/2addr p2, v0

    .line 568
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    :cond_61
    add-int/lit8 v2, p1, 0x2

    .line 572
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v4, :cond_82

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_82

    add-int/lit8 v0, p1, 0x3

    .line 580
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-gt v1, v4, :cond_82

    add-int/lit8 p1, p1, 0x4

    .line 582
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-le v0, v4, :cond_5

    :cond_82
    return v3

    :cond_83
    move p1, v0

    goto :goto_5
.end method


# virtual methods
.method final decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 604
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 605
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 606
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 607
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 610
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract decodeUtf8([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method final decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    or-int v0, p2, p3

    .line 624
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_ba

    add-int v0, p2, p3

    .line 634
    new-array v5, p3, [C

    const/4 p3, 0x0

    move v1, p3

    :goto_11
    if-ge p2, v0, :cond_27

    .line 640
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 641
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_27

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 645
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v5, v1}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v3

    goto :goto_11

    :cond_27
    :goto_27
    move v6, v1

    :goto_28
    if-ge p2, v0, :cond_b4

    add-int/lit8 v1, p2, 0x1

    move v2, v1

    .line 649
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 650
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-eqz v3, :cond_56

    add-int/lit8 p2, v6, 0x1

    .line 651
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move v1, v2

    :goto_3d
    if-ge v1, v0, :cond_53

    .line 655
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 656
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_53

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, p2, 0x1

    .line 660
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v5, p2}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    move p2, v3

    goto :goto_3d

    :cond_53
    :goto_53
    move v6, p2

    move p2, v1

    goto :goto_28

    .line 662
    :cond_56
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v3

    if-eqz v3, :cond_70

    if-ge v2, v0, :cond_6b

    add-int/lit8 p2, p2, 0x2

    .line 667
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v3, v6, 0x1

    .line 666
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v1, v2, v5, v6}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v6, v3

    goto :goto_28

    .line 664
    :cond_6b
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 668
    :cond_70
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v3

    if-eqz v3, :cond_92

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_8d

    add-int/lit8 v3, p2, 0x2

    .line 674
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 p2, p2, 0x3

    .line 675
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 v4, v6, 0x1

    .line 672
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v1, v2, v3, v5, v6}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move v6, v4

    goto :goto_28

    .line 670
    :cond_8d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :cond_92
    add-int/lit8 v3, v0, -0x2

    if-ge v2, v3, :cond_af

    add-int/lit8 v3, p2, 0x2

    .line 684
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v4, p2, 0x3

    .line 685
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/lit8 p2, p2, 0x4

    .line 686
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 682
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_28

    .line 680
    :cond_af
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 694
    :cond_b4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 625
    :cond_ba
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method abstract encodeUtf8(Ljava/lang/String;[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "offset",
            "length"
        }
    .end annotation
.end method

.method final encodeUtf8(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .line 747
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 748
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 749
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/Utf8;->encode(Ljava/lang/String;[BII)I

    move-result p1

    sub-int/2addr p1, v0

    .line 750
    invoke-static {p2, p1}, Landroidx/datastore/preferences/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    return-void

    .line 751
    :cond_20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 752
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void

    .line 754
    :cond_2a
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method final encodeUtf8Default(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation

    .line 766
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 767
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1c

    .line 776
    :try_start_d
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_1c

    add-int v3, v1, v2

    int-to-byte v4, v4

    .line 777
    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    if-ne v2, v0, :cond_24

    add-int v0, v1, v2

    .line 781
    invoke-static {p2, v0}, Landroidx/datastore/preferences/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    return-void

    :cond_24
    add-int/2addr v1, v2

    :goto_25
    if-ge v2, v0, :cond_c5

    .line 787
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_33

    int-to-byte v4, v4

    .line 790
    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_31} :catch_c9

    goto/16 :goto_bf

    :cond_33
    const/16 v5, 0x800

    if-ge v4, v5, :cond_4e

    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 795
    :try_start_3e
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 796
    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_48} :catch_4b

    move v1, v5

    goto/16 :goto_bf

    :catch_4b
    move v1, v5

    goto/16 :goto_c9

    :cond_4e
    const v5, 0xd800

    if-lt v4, v5, :cond_a3

    const v5, 0xdfff

    if-ge v5, v4, :cond_59

    goto :goto_a3

    :cond_59
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_9d

    .line 811
    :try_start_5d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 815
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_6b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5d .. :try_end_6b} :catch_9b

    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    .line 816
    :try_start_72
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_75
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_72 .. :try_end_75} :catch_97

    add-int/lit8 v6, v1, 0x2

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    .line 817
    :try_start_7d
    invoke-virtual {p2, v4, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_80
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7d .. :try_end_80} :catch_94

    add-int/lit8 v1, v1, 0x3

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 818
    :try_start_88
    invoke-virtual {p2, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 819
    invoke-virtual {p2, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_92
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_88 .. :try_end_92} :catch_9b

    move v2, v5

    goto :goto_bf

    :catch_94
    move v2, v5

    move v1, v6

    goto :goto_c9

    :catch_97
    move v1, v4

    goto :goto_9b

    :cond_99
    move v2, v5

    goto :goto_9d

    :catch_9b
    :goto_9b
    move v2, v5

    goto :goto_c9

    .line 812
    :cond_9d
    :goto_9d
    :try_start_9d
    new-instance v3, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v3
    :try_end_a3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9d .. :try_end_a3} :catch_c9

    :cond_a3
    :goto_a3
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 802
    :try_start_aa
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_ad
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_aa .. :try_end_ad} :catch_4b

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    .line 803
    :try_start_b5
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 804
    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_bf
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_25

    .line 824
    :cond_c5
    invoke-static {p2, v1}, Landroidx/datastore/preferences/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V
    :try_end_c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b5 .. :try_end_c8} :catch_c9

    return-void

    .line 830
    :catch_c9
    :goto_c9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v0, p2

    .line 831
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed writing "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method abstract encodeUtf8Direct(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "out"
        }
    .end annotation
.end method

.method final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method final isValidUtf8([BII)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "index",
            "limit"
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "state",
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    .line 406
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 407
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 408
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1

    .line 409
    :cond_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 410
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 412
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract partialIsValidUtf8(I[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "bytes",
            "index",
            "limit"
        }
    .end annotation
.end method

.method final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "state",
            "buffer",
            "index",
            "limit"
        }
    .end annotation

    if-eqz p1, :cond_92

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1e

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1d

    add-int/lit8 p1, p3, 0x1

    .line 447
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    goto :goto_1d

    :cond_1a
    move p3, p1

    goto/16 :goto_92

    :cond_1d
    :goto_1d
    return v2

    :cond_1e
    const/16 v4, -0x10

    if-ge v0, v4, :cond_4f

    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    if-nez p1, :cond_38

    add-int/lit8 p1, p3, 0x1

    .line 456
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-lt p1, p4, :cond_35

    .line 458
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, p3}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_35
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_38
    if-gt p1, v3, :cond_4e

    const/16 v4, -0x60

    if-ne v0, v1, :cond_40

    if-lt p1, v4, :cond_4e

    :cond_40
    const/16 v1, -0x13

    if-ne v0, v1, :cond_46

    if-ge p1, v4, :cond_4e

    :cond_46
    add-int/lit8 p1, p3, 0x1

    .line 467
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    :cond_4e
    return v2

    :cond_4f
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    if-nez v1, :cond_64

    add-int/lit8 p1, p3, 0x1

    .line 477
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-lt p1, p4, :cond_62

    .line 479
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    :cond_62
    const/4 p3, 0x0

    goto :goto_6a

    :cond_64
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_6a
    if-nez p3, :cond_7c

    add-int/lit8 p3, p1, 0x1

    .line 485
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-lt p3, p4, :cond_79

    .line 487
    # invokes: Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    :cond_79
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_7c
    if-gt v1, v3, :cond_91

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_91

    if-gt p3, v3, :cond_91

    add-int/lit8 p3, p1, 0x1

    .line 504
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_92

    :cond_91
    return v2

    .line 511
    :cond_92
    :goto_92
    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "state",
            "buffer",
            "index",
            "limit"
        }
    .end annotation
.end method
