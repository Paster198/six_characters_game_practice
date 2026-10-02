.class Lcom/loopj/android/http/Base64$Encoder;
.super Lcom/loopj/android/http/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    .line 532
    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/loopj/android/http/Base64$Encoder;->ENCODE:[B

    const/16 v0, 0x40

    .line 542
    new-array v0, v0, [B

    fill-array-data v0, :array_38

    sput-object v0, Lcom/loopj/android/http/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_38
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    .line 556
    invoke-direct {p0}, Lcom/loopj/android/http/Base64$Coder;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_d

    move p2, v1

    goto :goto_e

    :cond_d
    move p2, v0

    .line 559
    :goto_e
    iput-boolean p2, p0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_16

    move p2, v1

    goto :goto_17

    :cond_16
    move p2, v0

    .line 560
    :goto_17
    iput-boolean p2, p0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v0

    .line 561
    :goto_1f
    iput-boolean v1, p0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_28

    .line 562
    sget-object p1, Lcom/loopj/android/http/Base64$Encoder;->ENCODE:[B

    goto :goto_2a

    :cond_28
    sget-object p1, Lcom/loopj/android/http/Base64$Encoder;->ENCODE_WEBSAFE:[B

    :goto_2a
    iput-object p1, p0, Lcom/loopj/android/http/Base64$Encoder;->alphabet:[B

    const/4 p1, 0x2

    .line 564
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    .line 565
    iput v0, p0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    if-eqz p2, :cond_38

    const/16 p1, 0x13

    goto :goto_39

    :cond_38
    const/4 p1, -0x1

    .line 567
    :goto_39
    iput p1, p0, Lcom/loopj/android/http/Base64$Encoder;->count:I

    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x8

    .line 574
    div-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public process([BIIZ)Z
    .registers 22

    move-object/from16 v0, p0

    .line 579
    iget-object v1, v0, Lcom/loopj/android/http/Base64$Encoder;->alphabet:[B

    .line 580
    iget-object v2, v0, Lcom/loopj/android/http/Base64$Encoder;->output:[B

    .line 582
    iget v3, v0, Lcom/loopj/android/http/Base64$Encoder;->count:I

    add-int v4, p3, p2

    .line 592
    iget v5, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v5, v7, :cond_31

    if-eq v5, v6, :cond_15

    goto :goto_50

    :cond_15
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_50

    .line 611
    iget-object v10, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    aget-byte v11, v10, v8

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v10, v10, v7

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v11

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    .line 614
    iput v8, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    move v11, v5

    goto :goto_53

    :cond_31
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_50

    .line 601
    iget-object v5, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, p2, 0x1

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v5, v11

    add-int/lit8 v11, p2, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v5

    .line 604
    iput v8, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    goto :goto_53

    :cond_50
    :goto_50
    move/from16 v11, p2

    move v10, v9

    :goto_53
    const/16 v5, 0x13

    const/16 v12, 0xd

    const/4 v13, 0x4

    const/16 v14, 0xa

    if-eq v10, v9, :cond_90

    shr-int/lit8 v9, v10, 0x12

    and-int/lit8 v9, v9, 0x3f

    .line 620
    aget-byte v9, v1, v9

    aput-byte v9, v2, v8

    shr-int/lit8 v9, v10, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 621
    aget-byte v9, v1, v9

    aput-byte v9, v2, v7

    shr-int/lit8 v9, v10, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 622
    aget-byte v9, v1, v9

    aput-byte v9, v2, v6

    and-int/lit8 v9, v10, 0x3f

    .line 623
    aget-byte v9, v1, v9

    const/4 v10, 0x3

    aput-byte v9, v2, v10

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_8e

    .line 625
    iget-boolean v3, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_87

    aput-byte v12, v2, v13

    const/4 v3, 0x5

    goto :goto_88

    :cond_87
    move v3, v13

    :goto_88
    add-int/lit8 v9, v3, 0x1

    .line 626
    aput-byte v14, v2, v3

    move v3, v5

    goto :goto_91

    :cond_8e
    move v9, v13

    goto :goto_91

    :cond_90
    move v9, v8

    :goto_91
    add-int/lit8 v10, v11, 0x3

    if-gt v10, v4, :cond_ee

    .line 637
    aget-byte v15, p1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v11, 0x1

    move/from16 p3, v6

    aget-byte v6, p1, v16

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v15

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v6, v11

    shr-int/lit8 v11, v6, 0x12

    and-int/lit8 v11, v11, 0x3f

    .line 640
    aget-byte v11, v1, v11

    aput-byte v11, v2, v9

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v15, v6, 0xc

    and-int/lit8 v15, v15, 0x3f

    .line 641
    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v9, 0x2

    shr-int/lit8 v15, v6, 0x6

    and-int/lit8 v15, v15, 0x3f

    .line 642
    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    add-int/lit8 v11, v9, 0x3

    and-int/lit8 v6, v6, 0x3f

    .line 643
    aget-byte v6, v1, v6

    aput-byte v6, v2, v11

    add-int/lit8 v6, v9, 0x4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_e9

    .line 647
    iget-boolean v3, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_e0

    add-int/lit8 v9, v9, 0x5

    aput-byte v12, v2, v6

    move v6, v9

    :cond_e0
    add-int/lit8 v9, v6, 0x1

    .line 648
    aput-byte v14, v2, v6

    move/from16 v6, p3

    move v3, v5

    move v11, v10

    goto :goto_91

    :cond_e9
    move v9, v6

    move v11, v10

    move/from16 v6, p3

    goto :goto_91

    :cond_ee
    move/from16 p3, v6

    if-eqz p4, :cond_1bb

    .line 659
    iget v6, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    sub-int v10, v11, v6

    add-int/lit8 v15, v4, -0x1

    const/16 v16, 0x3d

    if-ne v10, v15, :cond_140

    if-lez v6, :cond_104

    .line 661
    iget-object v4, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    aget-byte v4, v4, v8

    move v8, v7

    goto :goto_106

    :cond_104
    aget-byte v4, p1, v11

    :goto_106
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v13

    sub-int/2addr v6, v8

    .line 662
    iput v6, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 663
    aget-byte v6, v1, v6

    aput-byte v6, v2, v9

    add-int/lit8 v6, v9, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 664
    aget-byte v1, v1, v4

    aput-byte v1, v2, v5

    .line 665
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_12a

    add-int/lit8 v1, v9, 0x3

    .line 666
    aput-byte v16, v2, v6

    add-int/lit8 v6, v9, 0x4

    .line 667
    aput-byte v16, v2, v1

    .line 669
    :cond_12a
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_13d

    .line 670
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_137

    add-int/lit8 v1, v6, 0x1

    aput-byte v12, v2, v6

    move v6, v1

    :cond_137
    add-int/lit8 v1, v6, 0x1

    .line 671
    aput-byte v14, v2, v6

    goto/16 :goto_1b9

    :cond_13d
    move v9, v6

    goto/16 :goto_1e5

    :cond_140
    sub-int v10, v11, v6

    add-int/lit8 v4, v4, -0x2

    if-ne v10, v4, :cond_1a4

    if-le v6, v7, :cond_14e

    .line 675
    iget-object v4, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    aget-byte v4, v4, v8

    move v8, v7

    goto :goto_154

    :cond_14e
    add-int/lit8 v4, v11, 0x1

    aget-byte v5, p1, v11

    move v11, v4

    move v4, v5

    :goto_154
    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    if-lez v6, :cond_161

    iget-object v5, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    add-int/lit8 v10, v8, 0x1

    aget-byte v5, v5, v8

    move v8, v10

    goto :goto_163

    :cond_161
    aget-byte v5, p1, v11

    :goto_163
    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    sub-int/2addr v6, v8

    .line 677
    iput v6, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 678
    aget-byte v6, v1, v6

    aput-byte v6, v2, v9

    add-int/lit8 v6, v9, 0x2

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 679
    aget-byte v8, v1, v8

    aput-byte v8, v2, v5

    add-int/lit8 v5, v9, 0x3

    and-int/lit8 v4, v4, 0x3f

    .line 680
    aget-byte v1, v1, v4

    aput-byte v1, v2, v6

    .line 681
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_190

    add-int/lit8 v9, v9, 0x4

    .line 682
    aput-byte v16, v2, v5

    move v5, v9

    .line 684
    :cond_190
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_1a2

    .line 685
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_19d

    add-int/lit8 v1, v5, 0x1

    aput-byte v12, v2, v5

    move v5, v1

    :cond_19d
    add-int/lit8 v1, v5, 0x1

    .line 686
    aput-byte v14, v2, v5

    goto :goto_1b9

    :cond_1a2
    move v9, v5

    goto :goto_1e5

    .line 688
    :cond_1a4
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_newline:Z

    if-eqz v1, :cond_1e5

    if-lez v9, :cond_1e5

    if-eq v3, v5, :cond_1e5

    .line 689
    iget-boolean v1, v0, Lcom/loopj/android/http/Base64$Encoder;->do_cr:Z

    if-eqz v1, :cond_1b5

    add-int/lit8 v1, v9, 0x1

    aput-byte v12, v2, v9

    move v9, v1

    :cond_1b5
    add-int/lit8 v1, v9, 0x1

    .line 690
    aput-byte v14, v2, v9

    :goto_1b9
    move v9, v1

    goto :goto_1e5

    :cond_1bb
    add-int/lit8 v1, v4, -0x1

    if-ne v11, v1, :cond_1cc

    .line 701
    iget-object v1, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    iget v2, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    aget-byte v4, p1, v11

    aput-byte v4, v1, v2

    goto :goto_1e5

    :cond_1cc
    add-int/lit8 v4, v4, -0x2

    if-ne v11, v4, :cond_1e5

    .line 703
    iget-object v1, v0, Lcom/loopj/android/http/Base64$Encoder;->tail:[B

    iget v2, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    aget-byte v5, p1, v11

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x2

    .line 704
    iput v2, v0, Lcom/loopj/android/http/Base64$Encoder;->tailLen:I

    add-int/2addr v11, v7

    aget-byte v2, p1, v11

    aput-byte v2, v1, v4

    .line 708
    :cond_1e5
    :goto_1e5
    iput v9, v0, Lcom/loopj/android/http/Base64$Encoder;->op:I

    .line 709
    iput v3, v0, Lcom/loopj/android/http/Base64$Encoder;->count:I

    return v7
.end method
