.class Landroidx/core/text/util/FindAddress$ZipRange;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/util/FindAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipRange"
.end annotation


# instance fields
.field mException1:I

.field mException2:I

.field mHigh:I

.field mLow:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    .line 44
    iput p2, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    .line 45
    iput p3, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    .line 46
    iput p4, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    return-void
.end method


# virtual methods
.method matches(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 51
    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mLow:I

    if-gt v0, p1, :cond_12

    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mHigh:I

    if-le p1, v0, :cond_1c

    :cond_12
    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException1:I

    if-eq p1, v0, :cond_1c

    iget v0, p0, Landroidx/core/text/util/FindAddress$ZipRange;->mException2:I

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    return p1
.end method
