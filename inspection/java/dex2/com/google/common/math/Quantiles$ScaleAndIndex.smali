.class public final Lcom/google/common/math/Quantiles$ScaleAndIndex;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndex"
.end annotation


# instance fields
.field private final index:I

.field private final scale:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    # invokes: Lcom/google/common/math/Quantiles;->checkIndex(II)V
    invoke-static {p2, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 223
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 224
    iput p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/common/math/Quantiles$1;)V
    .registers 4

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndex;-><init>(II)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)D
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 236
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([D)D
    .registers 4

    .line 247
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([I)D
    .registers 4

    .line 270
    # invokes: Lcom/google/common/math/Quantiles;->intsToDoubles([I)[D
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([J)D
    .registers 4

    .line 259
    # invokes: Lcom/google/common/math/Quantiles;->longsToDoubles([J)[D
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs computeInPlace([D)D
    .registers 15

    .line 281
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    const-string v3, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 282
    # invokes: Lcom/google/common/math/Quantiles;->containsNaN([D)Z
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 293
    :cond_16
    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    int-to-long v3, v0

    array-length v0, p1

    sub-int/2addr v0, v2

    int-to-long v5, v0

    mul-long/2addr v3, v5

    .line 297
    iget v0, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-long v5, v0

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v5

    long-to-int v0, v5

    int-to-long v5, v0

    .line 298
    iget v7, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-long v7, v7

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 299
    array-length v4, p1

    sub-int/2addr v4, v2

    # invokes: Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V
    invoke-static {v0, p1, v1, v4}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    if-nez v3, :cond_38

    .line 301
    aget-wide v0, p1, v0

    return-wide v0

    :cond_38
    add-int/lit8 v1, v0, 0x1

    .line 303
    array-length v4, p1

    sub-int/2addr v4, v2

    # invokes: Lcom/google/common/math/Quantiles;->selectInPlace(I[DII)V
    invoke-static {v1, p1, v1, v4}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 304
    aget-wide v5, p1, v0

    aget-wide v7, p1, v1

    int-to-double v9, v3

    iget p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-double v11, p1

    # invokes: Lcom/google/common/math/Quantiles;->interpolate(DDDD)D
    invoke-static/range {v5 .. v12}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v0

    return-wide v0
.end method
