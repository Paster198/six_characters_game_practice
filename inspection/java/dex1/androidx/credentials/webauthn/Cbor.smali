.class public final Landroidx/credentials/webauthn/Cbor;
.super Ljava/lang/Object;
.source "Cbor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/webauthn/Cbor$Arg;,
        Landroidx/credentials/webauthn/Cbor$Item;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0002#$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u000e\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0016J\u000e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0001J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\u0018\u0010 \u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\u0018\u0010!\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u0004H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/credentials/webauthn/Cbor;",
        "",
        "()V",
        "TYPE_ARRAY",
        "",
        "getTYPE_ARRAY",
        "()I",
        "TYPE_BYTE_STRING",
        "getTYPE_BYTE_STRING",
        "TYPE_FLOAT",
        "getTYPE_FLOAT",
        "TYPE_MAP",
        "getTYPE_MAP",
        "TYPE_NEGATIVE_INT",
        "getTYPE_NEGATIVE_INT",
        "TYPE_TAG",
        "getTYPE_TAG",
        "TYPE_TEXT_STRING",
        "getTYPE_TEXT_STRING",
        "TYPE_UNSIGNED_INT",
        "getTYPE_UNSIGNED_INT",
        "createArg",
        "",
        "type",
        "arg",
        "",
        "decode",
        "data",
        "encode",
        "getArg",
        "Landroidx/credentials/webauthn/Cbor$Arg;",
        "offset",
        "getType",
        "parseItem",
        "Landroidx/credentials/webauthn/Cbor$Item;",
        "Arg",
        "Item",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TYPE_ARRAY:I

.field private final TYPE_BYTE_STRING:I

.field private final TYPE_FLOAT:I

.field private final TYPE_MAP:I

.field private final TYPE_NEGATIVE_INT:I

.field private final TYPE_TAG:I

.field private final TYPE_TEXT_STRING:I

.field private final TYPE_UNSIGNED_INT:I


# direct methods
.method public static synthetic $r8$lambda$U-5sWomJCMWgLesGf2T6PiR8-A4(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->encode$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    const/4 v0, 0x3

    .line 31
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    const/4 v0, 0x4

    .line 32
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    const/4 v0, 0x5

    .line 33
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    const/4 v0, 0x6

    .line 34
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TAG:I

    const/4 v0, 0x7

    .line 35
    iput v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_FLOAT:I

    return-void
.end method

.method private final createArg(IJ)[B
    .registers 13

    const/4 v0, 0x5

    shl-int/2addr p1, v0

    long-to-int v1, p2

    const-wide/16 v2, 0x18

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_14

    or-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 191
    new-array p2, v4, [B

    aput-byte p1, p2, v3

    return-object p2

    :cond_14
    const-wide/16 v5, 0xff

    cmp-long v2, p2, v5

    const/4 v5, 0x2

    if-gtz v2, :cond_2a

    or-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    and-int/lit16 p2, v1, 0xff

    int-to-byte p2, p2

    .line 194
    new-array p3, v5, [B

    aput-byte p1, p3, v3

    aput-byte p2, p3, v4

    return-object p3

    :cond_2a
    const-wide/32 v6, 0xffff

    cmp-long v2, p2, v6

    const/4 v6, 0x3

    if-gtz v2, :cond_48

    or-int/lit8 p1, p1, 0x19

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    shr-int/lit8 p2, v1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    and-int/lit16 p3, v1, 0xff

    int-to-byte p3, p3

    .line 200
    new-array v0, v6, [B

    aput-byte p1, v0, v3

    aput-byte p2, v0, v4

    aput-byte p3, v0, v5

    return-object v0

    :cond_48
    const-wide v7, 0xffffffffL

    cmp-long p2, p2, v7

    if-gtz p2, :cond_76

    or-int/lit8 p1, p1, 0x1a

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    shr-int/lit8 p2, v1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    shr-int/lit8 p3, v1, 0x10

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 209
    new-array v0, v0, [B

    aput-byte p1, v0, v3

    aput-byte p2, v0, v4

    aput-byte p3, v0, v5

    aput-byte v2, v0, v6

    const/4 p1, 0x4

    aput-byte v1, v0, p1

    return-object v0

    .line 212
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad Arg"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final encode$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;[B[B)I
    .registers 7

    .line 84
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, [B

    .line 85
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [B

    .line 87
    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x1

    if-le v1, v2, :cond_20

    return v3

    .line 88
    :cond_20
    array-length p1, p1

    array-length p2, p2

    const/4 v1, -0x1

    if-ge p1, p2, :cond_26

    return v1

    .line 89
    :cond_26
    array-length p1, v0

    array-length p2, p0

    if-le p1, p2, :cond_2b

    return v3

    .line 90
    :cond_2b
    array-length p1, v0

    array-length p0, p0

    if-ge p1, p0, :cond_30

    return v1

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private final getArg([BI)Landroidx/credentials/webauthn/Cbor$Arg;
    .registers 12

    .line 111
    aget-byte v0, p1, p2

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_13

    .line 113
    new-instance p1, Landroidx/credentials/webauthn/Cbor$Arg;

    invoke-direct {p1, v0, v1, v3}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object p1

    :cond_13
    const/4 v4, 0x2

    const-wide/16 v5, 0xff

    if-nez v2, :cond_23

    .line 116
    new-instance v0, Landroidx/credentials/webauthn/Cbor$Arg;

    add-int/2addr p2, v3

    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v5

    invoke-direct {v0, p1, p2, v4}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v0

    :cond_23
    const-wide/16 v2, 0x19

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    if-nez v2, :cond_3f

    add-int/lit8 v0, p2, 0x1

    .line 119
    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    shl-long/2addr v0, v3

    add-int/2addr p2, v4

    .line 120
    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v5

    or-long/2addr p1, v0

    .line 121
    new-instance v0, Landroidx/credentials/webauthn/Cbor$Arg;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p2, v1}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v0

    :cond_3f
    const-wide/16 v7, 0x1a

    cmp-long v0, v0, v7

    if-nez v0, :cond_6f

    add-int/lit8 v0, p2, 0x1

    .line 124
    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    .line 125
    aget-byte v2, p1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v0, v7

    add-int/lit8 v2, p2, 0x3

    .line 126
    aget-byte v2, p1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    shl-long v2, v7, v3

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, 0x4

    .line 127
    aget-byte p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v5

    or-long/2addr p1, v0

    .line 128
    new-instance v0, Landroidx/credentials/webauthn/Cbor$Arg;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, v1}, Landroidx/credentials/webauthn/Cbor$Arg;-><init>(JI)V

    return-object v0

    .line 130
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad arg"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getType([BI)I
    .registers 3

    .line 106
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p1, p1, 0x5

    return p1
.end method

.method private final parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;
    .registers 10

    .line 134
    invoke-direct {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->getType([BI)I

    move-result v0

    .line 135
    invoke-direct {p0, p1, p2}, Landroidx/credentials/webauthn/Cbor;->getArg([BI)Landroidx/credentials/webauthn/Cbor$Arg;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 139
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_UNSIGNED_INT:I

    if-ne v0, v2, :cond_4c

    .line 140
    new-instance p1, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 142
    :cond_4c
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    if-ne v0, v2, :cond_65

    .line 143
    new-instance p1, Landroidx/credentials/webauthn/Cbor$Item;

    const/4 p2, -0x1

    int-to-long v2, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 145
    :cond_65
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    if-ne v0, v2, :cond_91

    .line 148
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr p2, v2

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 147
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    .line 150
    new-instance p2, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v0

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    invoke-direct {p2, p1, v0}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object p2

    .line 152
    :cond_91
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    if-ne v0, v2, :cond_c4

    .line 155
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr p2, v2

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 154
    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p1

    .line 157
    new-instance p2, Landroidx/credentials/webauthn/Cbor$Item;

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result p1

    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr p1, v1

    invoke-direct {p2, v0, p1}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object p2

    .line 159
    :cond_c4
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_fc

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 161
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v2

    .line 162
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    long-to-int v1, v4

    :goto_d9
    if-ge v3, v1, :cond_f0

    add-int v4, p2, v2

    .line 163
    invoke-direct {p0, p1, v4}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v4}, Landroidx/credentials/webauthn/Cbor$Item;->getLen()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    .line 167
    :cond_f0
    new-instance p1, Landroidx/credentials/webauthn/Cbor$Item;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 169
    :cond_fc
    iget v2, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    if-ne v0, v2, :cond_140

    .line 170
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 171
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getLen()I

    move-result v2

    .line 172
    invoke-virtual {v1}, Landroidx/credentials/webauthn/Cbor$Arg;->getArg()J

    move-result-wide v4

    long-to-int v1, v4

    :goto_110
    if-ge v3, v1, :cond_136

    add-int v4, p2, v2

    .line 173
    invoke-direct {p0, p1, v4}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Landroidx/credentials/webauthn/Cbor$Item;->getLen()I

    move-result v5

    add-int/2addr v2, v5

    add-int v5, p2, v2

    .line 175
    invoke-direct {p0, p1, v5}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object v5

    .line 176
    invoke-virtual {v5}, Landroidx/credentials/webauthn/Cbor$Item;->getLen()I

    move-result v6

    add-int/2addr v2, v6

    .line 177
    invoke-virtual {v4}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_110

    .line 179
    :cond_136
    new-instance p1, Landroidx/credentials/webauthn/Cbor$Item;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Landroidx/credentials/webauthn/Cbor$Item;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 182
    :cond_140
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final decode([B)Ljava/lang/Object;
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Landroidx/credentials/webauthn/Cbor;->parseItem([BI)Landroidx/credentials/webauthn/Cbor$Item;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroidx/credentials/webauthn/Cbor$Item;->getItem()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Ljava/lang/Object;)[B
    .registers 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_32

    .line 44
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_2a

    .line 47
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_20

    .line 49
    iget p1, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_UNSIGNED_INT:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object p1

    return-object p1

    .line 51
    :cond_20
    iget p1, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    const/4 v2, -0x1

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-direct {p0, p1, v2, v3}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object p1

    return-object p1

    .line 45
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Don\'t support doubles yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_32
    instance-of v0, p1, [B

    if-eqz v0, :cond_45

    .line 56
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    check-cast p1, [B

    array-length v1, p1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 58
    :cond_45
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 59
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 61
    :cond_5f
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_8b

    .line 62
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_74
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    goto :goto_74

    :cond_8a
    return-object v0

    .line 68
    :cond_8b
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_122

    .line 71
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/credentials/webauthn/Cbor;->createArg(IJ)[B

    move-result-object v0

    .line 72
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 75
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroidx/credentials/webauthn/Cbor;->encode(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 78
    :cond_dc
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroidx/credentials/webauthn/Cbor$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_fa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 97
    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    .line 98
    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, [B

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v0

    goto :goto_fa

    :cond_121
    return-object v0

    .line 102
    :cond_122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTYPE_ARRAY()I
    .registers 2

    .line 32
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_ARRAY:I

    return v0
.end method

.method public final getTYPE_BYTE_STRING()I
    .registers 2

    .line 30
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_BYTE_STRING:I

    return v0
.end method

.method public final getTYPE_FLOAT()I
    .registers 2

    .line 35
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_FLOAT:I

    return v0
.end method

.method public final getTYPE_MAP()I
    .registers 2

    .line 33
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_MAP:I

    return v0
.end method

.method public final getTYPE_NEGATIVE_INT()I
    .registers 2

    .line 29
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_NEGATIVE_INT:I

    return v0
.end method

.method public final getTYPE_TAG()I
    .registers 2

    .line 34
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TAG:I

    return v0
.end method

.method public final getTYPE_TEXT_STRING()I
    .registers 2

    .line 31
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_TEXT_STRING:I

    return v0
.end method

.method public final getTYPE_UNSIGNED_INT()I
    .registers 2

    .line 28
    iget v0, p0, Landroidx/credentials/webauthn/Cbor;->TYPE_UNSIGNED_INT:I

    return v0
.end method
