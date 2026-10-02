.class final Lcom/google/common/primitives/Longs$AsciiDigits;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsciiDigits"
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x80

    .line 330
    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 331
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    const/16 v3, 0xa

    if-ge v2, v3, :cond_16

    add-int/lit8 v3, v2, 0x30

    int-to-byte v4, v2

    .line 333
    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    :goto_16
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_28

    add-int/lit8 v2, v1, 0x41

    add-int/lit8 v3, v1, 0xa

    int-to-byte v3, v3

    .line 336
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x61

    .line 337
    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 339
    :cond_28
    sput-object v0, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static digit(C)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    .line 343
    sget-object v0, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    aget-byte p0, v0, p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method
