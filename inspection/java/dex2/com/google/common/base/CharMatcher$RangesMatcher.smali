.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .registers 8

    .line 1300
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1301
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    .line 1302
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 1303
    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 1304
    array-length p1, p2

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_11

    move p1, v1

    goto :goto_12

    :cond_11
    move p1, v2

    :goto_12
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    move p1, v2

    .line 1305
    :goto_16
    array-length v0, p2

    if-ge p1, v0, :cond_38

    .line 1306
    aget-char v0, p2, p1

    aget-char v3, p3, p1

    if-gt v0, v3, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v0, p1, 0x1

    .line 1307
    array-length v3, p2

    if-ge v0, v3, :cond_36

    .line 1308
    aget-char p1, p3, p1

    aget-char v3, p2, v0

    if-ge p1, v3, :cond_32

    move p1, v1

    goto :goto_33

    :cond_32
    move p1, v2

    :goto_33
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_36
    move p1, v0

    goto :goto_16

    :cond_38
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1294
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .registers 5

    .line 1315
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_a

    return v1

    :cond_a
    not-int v0, v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_15

    .line 1320
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v0, v2, v0

    if-gt p1, v0, :cond_15

    return v1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1326
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    return-object v0
.end method
