.class final Lcom/google/common/collect/TreeRangeSet$SubRangeSet;
.super Lcom/google/common/collect/TreeRangeSet;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubRangeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeRangeSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final restriction:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 876
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    .line 877
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .line 879
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object p1, p1, Lcom/google/common/collect/TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V

    .line 877
    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V

    .line 880
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    .line 905
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    const-string v1, "Cannot add range %s to subRangeSet(%s)"

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    .line 904
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->add(Lcom/google/common/collect/Range;)V

    return-void
.end method

.method public clear()V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeSet;->remove(Lcom/google/common/collect/Range;)V

    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 886
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    # invokes: Lcom/google/common/collect/TreeRangeSet;->rangeEnclosing(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    invoke-static {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->access$600(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 887
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    const/4 p1, 0x1

    return p1

    :cond_27
    return v1
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 898
    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p1

    if-nez p1, :cond_13

    return-object v1

    .line 899
    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 915
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->this$0:Lcom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->remove(Lcom/google/common/collect/Range;)V

    :cond_13
    return-void
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 931
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 933
    :cond_9
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 934
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSet;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    return-object v0

    .line 936
    :cond_1d
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method
