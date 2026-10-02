.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    }
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final CHUNK_SIZE:I = 0x4

.field static final GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

.field static final MURMUR3_32:Lcom/google/common/hash/HashFunction;

.field static final MURMUR3_32_FIXED:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I

.field private final supplementaryPlaneFix:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(IZ)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    .line 58
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(IZ)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32_FIXED:Lcom/google/common/hash/HashFunction;

    .line 63
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(IZ)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>(IZ)V
    .registers 3

    .line 74
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 75
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 76
    iput-boolean p2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->supplementaryPlaneFix:Z

    return-void
.end method

.method static synthetic access$000(I)I
    .registers 1

    .line 55
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(II)I
    .registers 2

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200([BI)I
    .registers 2

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(C)J
    .registers 3

    .line 55
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(C)J
    .registers 3

    .line 55
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(I)J
    .registers 3

    .line 55
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(II)Lcom/google/common/hash/HashCode;
    .registers 2

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static charToThreeUtf8Bytes(C)J
    .registers 5

    ushr-int/lit8 v0, p0, 0xc

    int-to-long v0, v0

    const-wide/16 v2, 0xe0

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x10

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static charToTwoUtf8Bytes(C)J
    .registers 5

    ushr-int/lit8 v0, p0, 0x6

    int-to-long v0, v0

    const-wide/16 v2, 0xc0

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x8

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static codePointToFourUtf8Bytes(I)J
    .registers 8

    ushr-int/lit8 v0, p0, 0x12

    int-to-long v0, v0

    const-wide/16 v2, 0xf0

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    int-to-long v2, p0

    or-long/2addr v2, v4

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static fmix(II)Lcom/google/common/hash/HashCode;
    .registers 2

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    .line 267
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static getIntLittleEndian([BI)I
    .registers 5

    add-int/lit8 v0, p1, 0x3

    .line 242
    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte p0, p0, p1

    invoke-static {v0, v1, v2, p0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result p0

    return p0
.end method

.method private static mixH1(II)I
    .registers 2

    xor-int/2addr p0, p1

    const/16 p1, 0xd

    .line 254
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method

.method private static mixK1(I)I
    .registers 2

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    .line 247
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public bits()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 96
    instance-of v0, p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 97
    check-cast p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 98
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    iget v2, p1, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    if-ne v0, v2, :cond_15

    iget-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->supplementaryPlaneFix:Z

    iget-boolean p1, p1, Lcom/google/common/hash/Murmur3_32HashFunction;->supplementaryPlaneFix:Z

    if-ne v0, p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    return v1
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .registers 9

    add-int v0, p2, p3

    .line 225
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 226
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    add-int/lit8 v3, v2, 0x4

    if-gt v3, p3, :cond_1d

    add-int/2addr v2, p2

    .line 229
    invoke-static {p1, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result v2

    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 230
    invoke-static {v0, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    move v2, v3

    goto :goto_a

    :cond_1d
    move v3, v2

    move v2, v1

    :goto_1f
    if-ge v3, p3, :cond_30

    add-int v4, p2, v3

    .line 235
    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    shl-int/2addr v4, v2

    xor-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_1f

    .line 237
    :cond_30
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p1

    xor-int/2addr p1, v0

    .line 238
    invoke-static {p1, p3}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .registers 3

    .line 110
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p1

    .line 111
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p1

    const/4 v0, 0x4

    .line 113
    invoke-static {p1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .registers 5

    long-to-int v0, p1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    .line 121
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p2

    .line 122
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v0, p2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p2

    .line 124
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p1

    .line 125
    invoke-static {p2, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p1

    const/16 p2, 0x8

    .line 127
    invoke-static {p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .registers 14

    .line 154
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 155
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_11
    add-int/lit8 v5, v3, 0x4

    const/16 v6, 0x80

    if-gt v5, v0, :cond_4a

    .line 162
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v3, 0x1

    .line 163
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v3, 0x2

    .line 164
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v3, 0x3

    .line 165
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v7, v6, :cond_4a

    if-ge v8, v6, :cond_4a

    if-ge v9, v6, :cond_4a

    if-ge v10, v6, :cond_4a

    shl-int/lit8 v3, v8, 0x8

    or-int/2addr v3, v7

    shl-int/lit8 v6, v9, 0x10

    or-int/2addr v3, v6

    shl-int/lit8 v6, v10, 0x18

    or-int/2addr v3, v6

    .line 168
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v3

    .line 169
    invoke-static {v1, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x4

    move v3, v5

    goto :goto_11

    :cond_4a
    const-wide/16 v7, 0x0

    :goto_4c
    if-ge v3, v0, :cond_b7

    .line 180
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_5c

    int-to-long v9, v5

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    :cond_5c
    const/16 v9, 0x800

    if-ge v5, v9, :cond_6b

    .line 186
    invoke-static {v5}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v4, v4, 0x2

    goto :goto_a4

    :cond_6b
    const v9, 0xd800

    if-lt v5, v9, :cond_9a

    const v9, 0xdfff

    if-le v5, v9, :cond_76

    goto :goto_9a

    .line 194
    :cond_76
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    if-ne v9, v5, :cond_89

    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1

    :cond_89
    add-int/lit8 v3, v3, 0x1

    .line 200
    invoke-static {v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    .line 201
    iget-boolean v5, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->supplementaryPlaneFix:Z

    if-eqz v5, :cond_97

    add-int/lit8 v2, v2, 0x20

    :cond_97
    add-int/lit8 v4, v4, 0x4

    goto :goto_a4

    .line 190
    :cond_9a
    :goto_9a
    invoke-static {v5}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v4, 0x3

    :goto_a4
    const/16 v5, 0x20

    if-lt v2, v5, :cond_b4

    long-to-int v9, v7

    .line 208
    invoke-static {v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v9

    .line 209
    invoke-static {v1, v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v1

    ushr-long/2addr v7, v5

    add-int/lit8 v2, v2, -0x20

    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_b7
    long-to-int p1, v7

    .line 215
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p1

    xor-int/2addr p1, v1

    .line 217
    invoke-static {p1, v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1

    .line 219
    :cond_c2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .registers 7

    .line 132
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    const/4 v1, 0x1

    move v2, v1

    .line 135
    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_22

    add-int/lit8 v3, v2, -0x1

    .line 136
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 137
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v3

    .line 138
    invoke-static {v0, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 142
    :cond_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_37

    .line 143
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 144
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 148
    :cond_37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 3

    .line 86
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 91
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_32("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
