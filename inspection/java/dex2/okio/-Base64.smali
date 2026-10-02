.class public final Lokio/-Base64;
.super Ljava/lang/Object;
.source "Base64.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\nH\u0000\u001a\u0016\u0010\u000b\u001a\u00020\n*\u00020\u00012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0001H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\"\u001c\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\u001a\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "BASE64",
        "",
        "getBASE64$annotations",
        "()V",
        "getBASE64",
        "()[B",
        "BASE64_URL_SAFE",
        "getBASE64_URL_SAFE$annotations",
        "getBASE64_URL_SAFE",
        "decodeBase64ToArray",
        "",
        "encodeBase64",
        "map",
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
.field private static final BASE64:[B

.field private static final BASE64_URL_SAFE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64:[B

    .line 33
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final decodeBase64ToArray(Ljava/lang/String;)[B
    .registers 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_9
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_29

    add-int/lit8 v5, v0, -0x1

    .line 39
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_26

    if-eq v5, v4, :cond_26

    if-eq v5, v3, :cond_26

    if-eq v5, v2, :cond_26

    if-eq v5, v1, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_29
    :goto_29
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x8

    .line 47
    div-long/2addr v5, v7

    long-to-int v5, v5

    new-array v6, v5, [B

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_37
    const/4 v11, 0x0

    if-ge v7, v0, :cond_9f

    .line 53
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x41

    if-gt v13, v12, :cond_49

    const/16 v13, 0x5b

    if-ge v12, v13, :cond_49

    add-int/lit8 v12, v12, -0x41

    goto :goto_80

    :cond_49
    const/16 v13, 0x61

    if-gt v13, v12, :cond_54

    const/16 v13, 0x7b

    if-ge v12, v13, :cond_54

    add-int/lit8 v12, v12, -0x47

    goto :goto_80

    :cond_54
    const/16 v13, 0x30

    if-gt v13, v12, :cond_5f

    const/16 v13, 0x3a

    if-ge v12, v13, :cond_5f

    add-int/lit8 v12, v12, 0x4

    goto :goto_80

    :cond_5f
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_7e

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_68

    goto :goto_7e

    :cond_68
    const/16 v13, 0x2f

    if-eq v12, v13, :cond_7b

    const/16 v13, 0x5f

    if-ne v12, v13, :cond_71

    goto :goto_7b

    :cond_71
    if-eq v12, v4, :cond_9c

    if-eq v12, v3, :cond_9c

    if-eq v12, v2, :cond_9c

    if-ne v12, v1, :cond_7a

    goto :goto_9c

    :cond_7a
    return-object v11

    :cond_7b
    :goto_7b
    const/16 v12, 0x3f

    goto :goto_80

    :cond_7e
    :goto_7e
    const/16 v12, 0x3e

    :goto_80
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    .line 86
    rem-int/lit8 v11, v8, 0x4

    if-nez v11, :cond_9c

    add-int/lit8 v11, v10, 0x1

    shr-int/lit8 v12, v9, 0x10

    int-to-byte v12, v12

    .line 87
    aput-byte v12, v6, v10

    add-int/lit8 v12, v10, 0x2

    shr-int/lit8 v13, v9, 0x8

    int-to-byte v13, v13

    .line 88
    aput-byte v13, v6, v11

    add-int/lit8 v10, v10, 0x3

    int-to-byte v11, v9

    .line 89
    aput-byte v11, v6, v12

    :cond_9c
    :goto_9c
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 93
    :cond_9f
    rem-int/lit8 v8, v8, 0x4

    const/4 p0, 0x1

    if-eq v8, p0, :cond_d3

    const/4 p0, 0x2

    if-eq v8, p0, :cond_bc

    const/4 p0, 0x3

    if-eq v8, p0, :cond_ab

    goto :goto_c6

    :cond_ab
    shl-int/lit8 p0, v9, 0x6

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 107
    aput-byte v1, v6, v10

    add-int/lit8 v10, v10, 0x2

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 108
    aput-byte p0, v6, v0

    goto :goto_c6

    :cond_bc
    shl-int/lit8 p0, v9, 0xc

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 102
    aput-byte p0, v6, v10

    move v10, v0

    :goto_c6
    if-ne v10, v5, :cond_c9

    return-object v6

    .line 116
    :cond_c9
    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_d3
    return-object v11
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 121
    new-array v0, v0, [B

    .line 123
    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v3, v2, :cond_57

    add-int/lit8 v5, v3, 0x1

    .line 126
    aget-byte v6, p0, v3

    add-int/lit8 v7, v3, 0x2

    .line 127
    aget-byte v5, p0, v5

    add-int/lit8 v3, v3, 0x3

    .line 128
    aget-byte v7, p0, v7

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v6, 0xff

    shr-int/2addr v9, v1

    .line 129
    aget-byte v9, p1, v9

    aput-byte v9, v0, v4

    add-int/lit8 v9, v4, 0x2

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v10, v5, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v6, v10

    .line 130
    aget-byte v6, p1, v6

    aput-byte v6, v0, v8

    add-int/lit8 v6, v4, 0x3

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    .line 131
    aget-byte v5, p1, v5

    aput-byte v5, v0, v9

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v7, 0x3f

    .line 132
    aget-byte v5, p1, v5

    aput-byte v5, v0, v6

    goto :goto_1a

    .line 134
    :cond_57
    array-length v5, p0

    sub-int/2addr v5, v2

    const/16 v2, 0x3d

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8b

    if-eq v5, v1, :cond_61

    goto :goto_a7

    :cond_61
    add-int/lit8 v5, v3, 0x1

    .line 143
    aget-byte v3, p0, v3

    .line 144
    aget-byte p0, p0, v5

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v6, v3, 0xff

    shr-int/2addr v6, v1

    .line 145
    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v6, v4, 0x2

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v7, p0, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v3, v7

    .line 146
    aget-byte v3, p1, v3

    aput-byte v3, v0, v5

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    .line 147
    aget-byte p0, p1, p0

    aput-byte p0, v0, v6

    .line 148
    aput-byte v2, v0, v4

    goto :goto_a7

    .line 136
    :cond_8b
    aget-byte p0, p0, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v1, v5, 0x2

    .line 137
    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v4, 0x2

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    .line 138
    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    add-int/lit8 v4, v4, 0x3

    .line 139
    aput-byte v2, v0, v1

    .line 140
    aput-byte v2, v0, v4

    .line 151
    :goto_a7
    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 119
    sget-object p1, Lokio/-Base64;->BASE64:[B

    :cond_6
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getBASE64()[B
    .registers 1

    .line 28
    sget-object v0, Lokio/-Base64;->BASE64:[B

    return-object v0
.end method

.method public static synthetic getBASE64$annotations()V
    .registers 0

    return-void
.end method

.method public static final getBASE64_URL_SAFE()[B
    .registers 1

    .line 32
    sget-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-object v0
.end method

.method public static synthetic getBASE64_URL_SAFE$annotations()V
    .registers 0

    return-void
.end method
