.class Lcz/msebera/android/httpclient/extras/Base64$Decoder;
.super Lcz/msebera/android/httpclient/extras/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/extras/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    .line 181
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE:[I

    const/16 v0, 0x100

    .line 204
    new-array v0, v0, [I

    fill-array-data v0, :array_218

    sput-object v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_218
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 3

    .line 241
    invoke-direct {p0}, Lcz/msebera/android/httpclient/extras/Base64$Coder;-><init>()V

    .line 242
    iput-object p2, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->output:[B

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_c

    .line 244
    sget-object p1, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE:[I

    goto :goto_e

    :cond_c
    sget-object p1, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->DECODE_WEBSAFE:[I

    :goto_e
    iput-object p1, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->alphabet:[I

    const/4 p1, 0x0

    .line 245
    iput p1, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 246
    iput p1, p0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->value:I

    return-void
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 2

    mul-int/lit8 p1, p1, 0x3

    .line 254
    div-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public process([BIIZ)Z
    .registers 21

    move-object/from16 v0, p0

    .line 264
    iget v1, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    return v2

    :cond_9
    add-int v4, p3, p2

    .line 275
    iget v5, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->value:I

    .line 277
    iget-object v6, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->output:[B

    .line 278
    iget-object v7, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->alphabet:[I

    move v9, v2

    move v8, v5

    move v5, v1

    move/from16 v1, p2

    :goto_16
    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v1, v4, :cond_eb

    if-nez v5, :cond_63

    :goto_1e
    add-int/lit8 v14, v1, 0x4

    if-gt v14, v4, :cond_5f

    .line 296
    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    aget v8, v7, v8

    shl-int/lit8 v8, v8, 0x12

    add-int/lit8 v15, v1, 0x1

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v7, v15

    shl-int/lit8 v15, v15, 0xc

    or-int/2addr v8, v15

    add-int/lit8 v15, v1, 0x2

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v7, v15

    shl-int/2addr v15, v3

    or-int/2addr v8, v15

    add-int/lit8 v15, v1, 0x3

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget v15, v7, v15

    or-int/2addr v8, v15

    if-ltz v8, :cond_5f

    add-int/lit8 v1, v9, 0x2

    int-to-byte v15, v8

    .line 301
    aput-byte v15, v6, v1

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v15, v8, 0x8

    int-to-byte v15, v15

    .line 302
    aput-byte v15, v6, v1

    shr-int/lit8 v1, v8, 0x10

    int-to-byte v1, v1

    .line 303
    aput-byte v1, v6, v9

    add-int/lit8 v9, v9, 0x3

    move v1, v14

    goto :goto_1e

    :cond_5f
    if-lt v1, v4, :cond_63

    goto/16 :goto_eb

    :cond_63
    add-int/lit8 v14, v1, 0x1

    .line 315
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget v1, v7, v1

    const/4 v15, -0x1

    if-eqz v5, :cond_dd

    if-eq v5, v13, :cond_d2

    const/4 v13, -0x2

    if-eq v5, v12, :cond_be

    const/4 v12, 0x5

    if-eq v5, v10, :cond_8c

    if-eq v5, v11, :cond_81

    if-eq v5, v12, :cond_7c

    goto/16 :goto_e8

    :cond_7c
    if-eq v1, v15, :cond_e8

    .line 386
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_81
    if-ne v1, v13, :cond_87

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e8

    :cond_87
    if-eq v1, v15, :cond_e8

    .line 379
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_8c
    if-ltz v1, :cond_a7

    shl-int/lit8 v5, v8, 0x6

    or-int/2addr v1, v5

    add-int/lit8 v5, v9, 0x2

    int-to-byte v8, v1

    .line 357
    aput-byte v8, v6, v5

    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    .line 358
    aput-byte v8, v6, v5

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    .line 359
    aput-byte v5, v6, v9

    add-int/lit8 v9, v9, 0x3

    move v8, v1

    move v5, v2

    goto :goto_e8

    :cond_a7
    if-ne v1, v13, :cond_b9

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v5, v8, 0x2

    int-to-byte v5, v5

    .line 365
    aput-byte v5, v6, v1

    shr-int/lit8 v1, v8, 0xa

    int-to-byte v1, v1

    .line 366
    aput-byte v1, v6, v9

    add-int/lit8 v9, v9, 0x2

    move v5, v12

    goto :goto_e8

    :cond_b9
    if-eq v1, v15, :cond_e8

    .line 370
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_be
    if-ltz v1, :cond_c1

    goto :goto_d4

    :cond_c1
    if-ne v1, v13, :cond_cd

    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v5, v8, 0x4

    int-to-byte v5, v5

    .line 345
    aput-byte v5, v6, v9

    move v9, v1

    move v5, v11

    goto :goto_e8

    :cond_cd
    if-eq v1, v15, :cond_e8

    .line 348
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_d2
    if-ltz v1, :cond_d8

    :goto_d4
    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v1, v8

    goto :goto_df

    :cond_d8
    if-eq v1, v15, :cond_e8

    .line 333
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_dd
    if-ltz v1, :cond_e3

    :goto_df
    add-int/lit8 v5, v5, 0x1

    move v8, v1

    goto :goto_e8

    :cond_e3
    if-eq v1, v15, :cond_e8

    .line 323
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_e8
    :goto_e8
    move v1, v14

    goto/16 :goto_16

    :cond_eb
    :goto_eb
    if-nez p4, :cond_f4

    .line 396
    iput v5, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 397
    iput v8, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->value:I

    .line 398
    iput v9, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->op:I

    return v13

    :cond_f4
    if-eq v5, v13, :cond_11c

    if-eq v5, v12, :cond_10f

    if-eq v5, v10, :cond_100

    if-eq v5, v11, :cond_fd

    goto :goto_117

    .line 427
    :cond_fd
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2

    :cond_100
    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v2, v8, 0xa

    int-to-byte v2, v2

    .line 422
    aput-byte v2, v6, v9

    add-int/lit8 v9, v9, 0x2

    shr-int/lit8 v2, v8, 0x2

    int-to-byte v2, v2

    .line 423
    aput-byte v2, v6, v1

    goto :goto_117

    :cond_10f
    add-int/lit8 v1, v9, 0x1

    shr-int/lit8 v2, v8, 0x4

    int-to-byte v2, v2

    .line 417
    aput-byte v2, v6, v9

    move v9, v1

    .line 435
    :goto_117
    iput v5, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    .line 436
    iput v9, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->op:I

    return v13

    .line 412
    :cond_11c
    iput v3, v0, Lcz/msebera/android/httpclient/extras/Base64$Decoder;->state:I

    return v2
.end method
