.class public final Lokio/internal/-ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0080\u0008\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\r\u0010\u0013\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\u0015\u0010\u0014\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0080\u0008\u001a-\u0010\u0016\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000c*\u00020\u0012H\u0080\u0008\u001a\r\u0010\u001d\u001a\u00020\u000c*\u00020\u0012H\u0080\u0008\u001a\r\u0010\u001e\u001a\u00020\u000c*\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u000c2\u0006\u0010!\u001a\u00020\tH\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u000c2\u0006\u0010!\u001a\u00020\u000cH\u0080\u0008\u001a\u0017\u0010\"\u001a\u00020 *\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010#H\u0080\u0008\u001a\u0015\u0010$\u001a\u00020%*\u00020\u000c2\u0006\u0010&\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010\'\u001a\u00020\u0007*\u00020\u000cH\u0080\u0008\u001a\r\u0010(\u001a\u00020\u0007*\u00020\u000cH\u0080\u0008\u001a\r\u0010)\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\u001d\u0010*\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010,\u001a\u00020\t*\u00020\u000cH\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a-\u0010.\u001a\u00020 *\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a-\u0010.\u001a\u00020 *\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u00100\u001a\u00020 *\u00020\u000c2\u0006\u00101\u001a\u00020\tH\u0080\u0008\u001a\u0015\u00100\u001a\u00020 *\u00020\u000c2\u0006\u00101\u001a\u00020\u000cH\u0080\u0008\u001a\u001d\u00102\u001a\u00020\u000c*\u00020\u000c2\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00105\u001a\u00020\u000c*\u00020\u000cH\u0080\u0008\u001a\r\u00106\u001a\u00020\u000c*\u00020\u000cH\u0080\u0008\u001a\r\u00107\u001a\u00020\t*\u00020\u000cH\u0080\u0008\u001a\u001d\u00108\u001a\u00020\u000c*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\r\u0010:\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a$\u0010;\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006>"
    }
    d2 = {
        "HEX_DIGIT_CHARS",
        "",
        "getHEX_DIGIT_CHARS$annotations",
        "()V",
        "getHEX_DIGIT_CHARS",
        "()[C",
        "codePointIndexToCharIndex",
        "",
        "s",
        "",
        "codePointCount",
        "commonOf",
        "Lokio/ByteString;",
        "data",
        "decodeHexDigit",
        "c",
        "",
        "commonBase64",
        "",
        "commonBase64Url",
        "commonCompareTo",
        "other",
        "commonCopyInto",
        "",
        "offset",
        "target",
        "targetOffset",
        "byteCount",
        "commonDecodeBase64",
        "commonDecodeHex",
        "commonEncodeUtf8",
        "commonEndsWith",
        "",
        "suffix",
        "commonEquals",
        "",
        "commonGetByte",
        "",
        "pos",
        "commonGetSize",
        "commonHashCode",
        "commonHex",
        "commonIndexOf",
        "fromIndex",
        "commonInternalArray",
        "commonLastIndexOf",
        "commonRangeEquals",
        "otherOffset",
        "commonStartsWith",
        "prefix",
        "commonSubstring",
        "beginIndex",
        "endIndex",
        "commonToAsciiLowercase",
        "commonToAsciiUppercase",
        "commonToByteArray",
        "commonToByteString",
        "commonToString",
        "commonUtf8",
        "commonWrite",
        "buffer",
        "Lokio/Buffer;",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 60
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/internal/-ByteString;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 348
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_8
    :goto_8
    if-ge v3, v2, :cond_1ac

    .line 383
    aget-byte v6, v0, v3

    const/16 v7, 0xa0

    const/16 v8, 0x7f

    const/16 v9, 0x20

    const/16 v10, 0xd

    const v11, 0xfffd

    const/16 v12, 0xa

    const/high16 v13, 0x10000

    const/16 v16, -0x1

    if-ltz v6, :cond_65

    add-int/lit8 v17, v5, 0x1

    if-ne v5, v1, :cond_25

    goto/16 :goto_1ac

    :cond_25
    if-eq v6, v12, :cond_33

    if-eq v6, v10, :cond_33

    if-ltz v6, :cond_2e

    if-ge v6, v9, :cond_2e

    goto :goto_35

    :cond_2e
    if-gt v8, v6, :cond_33

    if-ge v6, v7, :cond_33

    goto :goto_35

    :cond_33
    if-ne v6, v11, :cond_36

    :goto_35
    return v16

    :cond_36
    if-ge v6, v13, :cond_3a

    const/4 v5, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v5, 0x2

    :goto_3b
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :goto_3e
    move/from16 v5, v17

    if-ge v3, v2, :cond_8

    .line 392
    aget-byte v6, v0, v3

    if-ltz v6, :cond_8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v17, v5, 0x1

    if-ne v5, v1, :cond_4d

    return v4

    :cond_4d
    if-eq v6, v12, :cond_5b

    if-eq v6, v10, :cond_5b

    if-ltz v6, :cond_56

    if-ge v6, v9, :cond_56

    goto :goto_5d

    :cond_56
    if-gt v8, v6, :cond_5b

    if-ge v6, v7, :cond_5b

    goto :goto_5d

    :cond_5b
    if-ne v6, v11, :cond_5e

    :goto_5d
    return v16

    :cond_5e
    if-ge v6, v13, :cond_62

    const/4 v5, 0x1

    goto :goto_63

    :cond_62
    const/4 v5, 0x2

    :goto_63
    add-int/2addr v4, v5

    goto :goto_3e

    :cond_65
    shr-int/lit8 v14, v6, 0x5

    const/4 v15, -0x2

    const/16 v13, 0x80

    if-ne v14, v15, :cond_b2

    add-int/lit8 v14, v3, 0x1

    if-gt v2, v14, :cond_75

    if-ne v5, v1, :cond_74

    goto/16 :goto_1ac

    :cond_74
    return v16

    .line 405
    :cond_75
    aget-byte v14, v0, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_ad

    xor-int/lit16 v14, v14, 0xf80

    shl-int/lit8 v6, v6, 0x6

    xor-int/2addr v6, v14

    if-ge v6, v13, :cond_87

    if-ne v5, v1, :cond_86

    goto/16 :goto_1ac

    :cond_86
    return v16

    :cond_87
    add-int/lit8 v13, v5, 0x1

    if-ne v5, v1, :cond_8d

    goto/16 :goto_1ac

    :cond_8d
    if-eq v6, v12, :cond_9b

    if-eq v6, v10, :cond_9b

    if-ltz v6, :cond_96

    if-ge v6, v9, :cond_96

    goto :goto_9d

    :cond_96
    if-gt v8, v6, :cond_9b

    if-ge v6, v7, :cond_9b

    goto :goto_9d

    :cond_9b
    if-ne v6, v11, :cond_9e

    :goto_9d
    return v16

    :cond_9e
    const/high16 v5, 0x10000

    if-ge v6, v5, :cond_a4

    const/4 v14, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v14, 0x2

    :goto_a5
    add-int/2addr v4, v14

    .line 397
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v3, v3, 0x2

    move v5, v13

    goto/16 :goto_8

    :cond_ad
    if-ne v5, v1, :cond_b1

    goto/16 :goto_1ac

    :cond_b1
    return v16

    :cond_b2
    shr-int/lit8 v14, v6, 0x4

    const v11, 0xe000

    const v7, 0xd800

    if-ne v14, v15, :cond_126

    add-int/lit8 v14, v3, 0x2

    if-gt v2, v14, :cond_c5

    if-ne v5, v1, :cond_c4

    goto/16 :goto_1ac

    :cond_c4
    return v16

    :cond_c5
    add-int/lit8 v15, v3, 0x1

    .line 445
    aget-byte v15, v0, v15

    and-int/lit16 v8, v15, 0xc0

    if-ne v8, v13, :cond_121

    .line 452
    aget-byte v8, v0, v14

    and-int/lit16 v14, v8, 0xc0

    if-ne v14, v13, :cond_11c

    const v13, -0x1e080

    xor-int/2addr v8, v13

    shl-int/lit8 v13, v15, 0x6

    xor-int/2addr v8, v13

    shl-int/lit8 v6, v6, 0xc

    xor-int/2addr v6, v8

    const/16 v8, 0x800

    if-ge v6, v8, :cond_e6

    if-ne v5, v1, :cond_e5

    goto/16 :goto_1ac

    :cond_e5
    return v16

    :cond_e6
    if-gt v7, v6, :cond_ef

    if-ge v6, v11, :cond_ef

    if-ne v5, v1, :cond_ee

    goto/16 :goto_1ac

    :cond_ee
    return v16

    :cond_ef
    add-int/lit8 v7, v5, 0x1

    if-ne v5, v1, :cond_f5

    goto/16 :goto_1ac

    :cond_f5
    if-eq v6, v12, :cond_107

    if-eq v6, v10, :cond_107

    if-ltz v6, :cond_fe

    if-ge v6, v9, :cond_fe

    goto :goto_10c

    :cond_fe
    const/16 v5, 0x7f

    if-gt v5, v6, :cond_107

    const/16 v5, 0xa0

    if-ge v6, v5, :cond_107

    goto :goto_10c

    :cond_107
    const v5, 0xfffd

    if-ne v6, v5, :cond_10d

    :goto_10c
    return v16

    :cond_10d
    const/high16 v5, 0x10000

    if-ge v6, v5, :cond_113

    const/4 v14, 0x1

    goto :goto_114

    :cond_113
    const/4 v14, 0x2

    :goto_114
    add-int/2addr v4, v14

    .line 430
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v3, v3, 0x3

    :goto_119
    move v5, v7

    goto/16 :goto_8

    :cond_11c
    if-ne v5, v1, :cond_120

    goto/16 :goto_1ac

    :cond_120
    return v16

    :cond_121
    if-ne v5, v1, :cond_125

    goto/16 :goto_1ac

    :cond_125
    return v16

    :cond_126
    shr-int/lit8 v8, v6, 0x3

    if-ne v8, v15, :cond_1a8

    add-int/lit8 v8, v3, 0x3

    if-gt v2, v8, :cond_133

    if-ne v5, v1, :cond_132

    goto/16 :goto_1ac

    :cond_132
    return v16

    :cond_133
    add-int/lit8 v14, v3, 0x1

    .line 498
    aget-byte v14, v0, v14

    and-int/lit16 v15, v14, 0xc0

    if-ne v15, v13, :cond_1a4

    add-int/lit8 v15, v3, 0x2

    .line 505
    aget-byte v15, v0, v15

    and-int/lit16 v9, v15, 0xc0

    if-ne v9, v13, :cond_1a0

    .line 512
    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v13, :cond_19c

    const v9, 0x381f80

    xor-int/2addr v8, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v8, v9

    shl-int/lit8 v9, v14, 0xc

    xor-int/2addr v8, v9

    shl-int/lit8 v6, v6, 0x12

    xor-int/2addr v6, v8

    const v8, 0x10ffff

    if-le v6, v8, :cond_15f

    if-ne v5, v1, :cond_15e

    goto :goto_1ac

    :cond_15e
    return v16

    :cond_15f
    if-gt v7, v6, :cond_167

    if-ge v6, v11, :cond_167

    if-ne v5, v1, :cond_166

    goto :goto_1ac

    :cond_166
    return v16

    :cond_167
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_16f

    if-ne v5, v1, :cond_16e

    goto :goto_1ac

    :cond_16e
    return v16

    :cond_16f
    add-int/lit8 v7, v5, 0x1

    if-ne v5, v1, :cond_174

    goto :goto_1ac

    :cond_174
    if-eq v6, v12, :cond_188

    if-eq v6, v10, :cond_188

    if-ltz v6, :cond_17f

    const/16 v5, 0x20

    if-ge v6, v5, :cond_17f

    goto :goto_18d

    :cond_17f
    const/16 v5, 0x7f

    if-gt v5, v6, :cond_188

    const/16 v5, 0xa0

    if-ge v6, v5, :cond_188

    goto :goto_18d

    :cond_188
    const v5, 0xfffd

    if-ne v6, v5, :cond_18e

    :goto_18d
    return v16

    :cond_18e
    const/high16 v5, 0x10000

    if-ge v6, v5, :cond_194

    const/4 v14, 0x1

    goto :goto_195

    :cond_194
    const/4 v14, 0x2

    :goto_195
    add-int/2addr v4, v14

    .line 480
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_119

    :cond_19c
    if-ne v5, v1, :cond_19f

    goto :goto_1ac

    :cond_19f
    return v16

    :cond_1a0
    if-ne v5, v1, :cond_1a3

    goto :goto_1ac

    :cond_1a3
    return v16

    :cond_1a4
    if-ne v5, v1, :cond_1a7

    goto :goto_1ac

    :cond_1a7
    return v16

    :cond_1a8
    if-ne v5, v1, :cond_1ab

    goto :goto_1ac

    :cond_1ab
    return v16

    :cond_1ac
    :goto_1ac
    return v4
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v0

    invoke-static {p0, v0}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    .line 254
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_31

    .line 258
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 259
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_2d

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2d
    if-ge v7, v8, :cond_30

    return v5

    :cond_30
    return v6

    :cond_31
    if-ne v0, v1, :cond_34

    return v3

    :cond_34
    if-ge v0, v1, :cond_37

    return v5

    :cond_37
    return v6
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    add-int/2addr p4, p1

    invoke-static {p0, p2, p3, p1, p4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {p0}, Lokio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_11

    .line 290
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3b

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_35

    mul-int/lit8 v3, v2, 0x2

    .line 299
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    # invokes: Lokio/internal/-ByteString;->decodeHexDigit(C)I
    invoke-static {v4}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 300
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    # invokes: Lokio/internal/-ByteString;->decodeHexDigit(C)I
    invoke-static {v3}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    .line 301
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 303
    :cond_35
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v1}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 295
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected hex string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lokio/ByteString;

    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 283
    invoke-virtual {v0, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, p0, :cond_9

    return v0

    .line 237
    :cond_9
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v1, v3, :cond_2b

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, v2, v1, v2, p0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    if-eqz p0, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    aget-byte p0, p0, p1

    return p0
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 246
    :cond_c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 247
    invoke-virtual {p0, v0}, Lokio/ByteString;->setHashCode$okio(I)V

    return v0
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 66
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v2, v1, :cond_36

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    .line 67
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    shr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    .line 68
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v6

    and-int/lit8 v4, v4, 0xf

    .line 365
    aget-char v4, v6, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 70
    :cond_36
    invoke-static {v0}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .registers 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 207
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gt p2, v0, :cond_29

    .line 208
    :goto_18
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v3, p1

    invoke-static {v2, p2, p1, v1, v3}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_24

    return p2

    :cond_24
    if-eq p2, v0, :cond_29

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    return-object p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    .line 224
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 225
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_19
    const/4 v0, -0x1

    if-ge v0, p2, :cond_2c

    .line 226
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_29

    return p2

    :cond_29
    add-int/lit8 p2, p2, -0x1

    goto :goto_19

    :cond_2c
    return v0
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lokio/ByteString;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v1, "copyOf(this, size)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p2, p3, p0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_26

    .line 172
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_26

    if-ltz p3, :cond_26

    .line 173
    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_26

    .line 174
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p0, v0, p1, v0, v1}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 194
    array-length v1, p1

    invoke-virtual {p0, v0, p1, v0, v1}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p0

    return p0
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result p2

    if-ltz p1, :cond_5e

    .line 133
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    if-gt p2, v0, :cond_3a

    sub-int v0, p2, p1

    if-ltz v0, :cond_2e

    if-nez p1, :cond_20

    .line 138
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    if-ne p2, v0, :cond_20

    return-object p0

    .line 141
    :cond_20
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    .line 136
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endIndex < beginIndex"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "endIndex > length("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginIndex < 0"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 77
    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 78
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_49

    const/16 v3, 0x5a

    if-le v1, v3, :cond_1c

    goto :goto_49

    .line 85
    :cond_1c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    .line 86
    aput-byte v1, p0, v0

    .line 87
    :goto_31
    array-length v0, p0

    if-ge v4, v0, :cond_43

    .line 88
    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_40

    if-le v0, v3, :cond_3b

    goto :goto_40

    :cond_3b
    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 93
    aput-byte v0, p0, v4

    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 96
    :cond_43
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4c
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 105
    :goto_6
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 106
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_49

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1c

    goto :goto_49

    .line 113
    :cond_1c
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v4, "copyOf(this, size)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v1, v1, -0x20

    int-to-byte v1, v1

    .line 114
    aput-byte v1, p0, v0

    .line 115
    :goto_31
    array-length v0, p0

    if-ge v4, v0, :cond_43

    .line 116
    aget-byte v0, p0, v4

    if-lt v0, v2, :cond_40

    if-le v0, v3, :cond_3b

    goto :goto_40

    :cond_3b
    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    .line 121
    aput-byte v0, p0, v4

    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 124
    :cond_43
    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_49
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4c
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(this, size)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter([BI)I

    move-result p2

    .line 276
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 277
    new-instance v0, Lokio/ByteString;

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_11

    const-string v0, "[size=0]"

    return-object v0

    .line 324
    :cond_11
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    const/16 v2, 0x40

    # invokes: Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I
    invoke-static {v1, v2}, Lokio/internal/-ByteString;->access$codePointIndexToCharIndex([BI)I

    move-result v1

    const/4 v3, -0x1

    .line 325
    const-string v4, "\u2026]"

    const-string v5, "[size="

    const/16 v6, 0x5d

    const/4 v7, 0x0

    if-ne v1, v3, :cond_bc

    .line 326
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_44

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[hex="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " hex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    invoke-static {v0, v2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v2

    .line 372
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-gt v2, v3, :cond_98

    if-ltz v2, :cond_8c

    .line 377
    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_6d

    goto :goto_7b

    .line 380
    :cond_6d
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-static {v0, v7, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lokio/ByteString;-><init>([B)V

    move-object v0, v3

    .line 329
    :goto_7b
    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > length("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_bc
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 335
    const-string v9, "\\"

    const-string v10, "\\\\"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x4

    const/16 v19, 0x0

    .line 336
    const-string v15, "\n"

    const-string v16, "\\n"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 337
    const-string v8, "\r"

    const-string v9, "\\r"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_114

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 46
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v0

    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    :cond_16
    return-object v0
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method private static final decodeHexDigit(C)I
    .registers 4

    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-gt v0, p0, :cond_15

    const/16 v0, 0x67

    if-ge p0, v0, :cond_15

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_15
    const/16 v0, 0x41

    if-gt v0, p0, :cond_20

    const/16 v0, 0x47

    if-ge p0, v0, :cond_20

    add-int/lit8 p0, p0, -0x37

    return p0

    .line 316
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    .line 59
    sget-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .registers 0

    return-void
.end method
