.class Lcom/google/common/graph/DirectedGraphConnections$3;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/DirectedGraphConnections;->successors()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/DirectedGraphConnections;


# direct methods
.method constructor <init>(Lcom/google/common/graph/DirectedGraphConnections;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 368
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    # invokes: Lcom/google/common/graph/DirectedGraphConnections;->isSuccessor(Ljava/lang/Object;)Z
    invoke-static {p1}, Lcom/google/common/graph/DirectedGraphConnections;->access$400(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 329
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->adjacentNodeValues:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$100(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/DirectedGraphConnections$3$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections$3;Ljava/util/Iterator;)V

    return-object v1

    .line 344
    :cond_1c
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->orderedNodeConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$000(Lcom/google/common/graph/DirectedGraphConnections;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/DirectedGraphConnections$3$2;-><init>(Lcom/google/common/graph/DirectedGraphConnections$3;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$3;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$3;->this$0:Lcom/google/common/graph/DirectedGraphConnections;

    # getter for: Lcom/google/common/graph/DirectedGraphConnections;->successorCount:I
    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->access$500(Lcom/google/common/graph/DirectedGraphConnections;)I

    move-result v0

    return v0
.end method
