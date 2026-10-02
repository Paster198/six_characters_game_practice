.class Lcom/google/common/base/Splitter$4$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$4;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Splitter$4;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$4;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    .line 288
    iput-object p1, p0, Lcom/google/common/base/Splitter$4$1;->this$0:Lcom/google/common/base/Splitter$4;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 2

    return p1
.end method

.method public separatorStart(I)I
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/google/common/base/Splitter$4$1;->this$0:Lcom/google/common/base/Splitter$4;

    iget v0, v0, Lcom/google/common/base/Splitter$4;->val$length:I

    add-int/2addr p1, v0

    .line 292
    iget-object v0, p0, Lcom/google/common/base/Splitter$4$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method
