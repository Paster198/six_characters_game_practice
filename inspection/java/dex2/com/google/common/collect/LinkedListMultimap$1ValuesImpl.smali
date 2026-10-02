.class Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap;->createValues()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2

    .line 776
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 784
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    .line 785
    new-instance p1, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$NodeIterator;)V

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 779
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$1ValuesImpl;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    # getter for: Lcom/google/common/collect/LinkedListMultimap;->size:I
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$800(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method
