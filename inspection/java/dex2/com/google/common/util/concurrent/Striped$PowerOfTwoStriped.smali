.class abstract Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.super Lcom/google/common/util/concurrent/Striped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PowerOfTwoStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final mask:I


# direct methods
.method constructor <init>(I)V
    .registers 5

    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Striped;-><init>(Lcom/google/common/util/concurrent/Striped$1;)V

    const/4 v0, 0x1

    if-lez p1, :cond_9

    move v1, v0

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 343
    :goto_a
    const-string v2, "Stripes must be positive"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_15

    const/4 p1, -0x1

    goto :goto_1a

    .line 344
    :cond_15
    # invokes: Lcom/google/common/util/concurrent/Striped;->ceilToPowerOfTwo(I)I
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->access$200(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1a
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->indexFor(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->getAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final indexFor(Ljava/lang/Object;)I
    .registers 3

    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    # invokes: Lcom/google/common/util/concurrent/Striped;->smear(I)I
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->access$300(I)I

    move-result p1

    .line 350
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    and-int/2addr p1, v0

    return p1
.end method
