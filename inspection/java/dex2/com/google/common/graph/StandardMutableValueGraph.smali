.class final Lcom/google/common/graph/StandardMutableValueGraph;
.super Lcom/google/common/graph/StandardValueGraph;
.source "StandardMutableValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/MutableValueGraph;


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/StandardValueGraph<",
        "TN;TV;>;",
        "Lcom/google/common/graph/MutableValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractGraphBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/AbstractGraphBuilder<",
            "-TN;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardValueGraph;-><init>(Lcom/google/common/graph/AbstractGraphBuilder;)V

    .line 52
    iget-object p1, p1, Lcom/google/common/graph/AbstractGraphBuilder;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->cast()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/StandardMutableValueGraph;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/google/common/graph/StandardMutableValueGraph;->newConnections()Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method private newConnections()Lcom/google/common/graph/GraphConnections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/google/common/graph/StandardMutableValueGraph;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-static {v0}, Lcom/google/common/graph/DirectedGraphConnections;->of(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/DirectedGraphConnections;

    move-result-object v0

    return-object v0

    .line 190
    :cond_d
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    invoke-static {v0}, Lcom/google/common/graph/UndirectedGraphConnections;->of(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/UndirectedGraphConnections;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 63
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    const/4 p1, 0x1

    return p1
.end method

.method public incidentEdgeOrder()Lcom/google/common/graph/ElementOrder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->incidentEdgeOrder:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public putEdgeValue(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 118
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/graph/StandardMutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 89
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "value"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/google/common/graph/StandardMutableValueGraph;->allowsSelfLoops()Z

    move-result v0

    if-nez v0, :cond_20

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_20
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    if-nez v0, :cond_2e

    .line 99
    invoke-direct {p0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v0

    .line 101
    :cond_2e
    invoke-interface {v0, p2, p3}, Lcom/google/common/graph/GraphConnections;->addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/GraphConnections;

    if-nez v1, :cond_40

    .line 104
    invoke-direct {p0, p2}, Lcom/google/common/graph/StandardMutableValueGraph;->addNodeInternal(Ljava/lang/Object;)Lcom/google/common/graph/GraphConnections;

    move-result-object v1

    .line 106
    :cond_40
    invoke-interface {v1, p1, p3}, Lcom/google/common/graph/GraphConnections;->addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_4f

    .line 108
    iget-wide p1, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    invoke-static {p1, p2}, Lcom/google/common/graph/Graphs;->checkPositive(J)J

    :cond_4f
    return-object v0
.end method

.method public removeEdge(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/StandardMutableValueGraph;->removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 162
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    .line 166
    iget-object v1, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/GraphConnections;

    if-eqz v0, :cond_33

    if-nez v1, :cond_1f

    goto :goto_33

    .line 171
    :cond_1f
    invoke-interface {v0, p2}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_32

    .line 173
    invoke-interface {v1, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 174
    iget-wide v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    invoke-static {v0, v1}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    :cond_32
    return-object p2

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 124
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/GraphConnections;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 131
    :cond_11
    invoke-virtual {p0}, Lcom/google/common/graph/StandardMutableValueGraph;->allowsSelfLoops()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_27

    .line 133
    invoke-interface {v0, p1}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 134
    invoke-interface {v0, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 135
    iget-wide v5, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    .line 139
    :cond_27
    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->successors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 141
    iget-object v6, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v6, v5}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/GraphConnections;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/GraphConnections;

    invoke-interface {v5, p1}, Lcom/google/common/graph/GraphConnections;->removePredecessor(Ljava/lang/Object;)V

    .line 142
    iget-wide v5, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    goto :goto_2f

    .line 144
    :cond_50
    invoke-virtual {p0}, Lcom/google/common/graph/StandardMutableValueGraph;->isDirected()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_89

    .line 145
    invoke-interface {v0}, Lcom/google/common/graph/GraphConnections;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 147
    iget-object v6, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    .line 148
    invoke-virtual {v6, v2}, Lcom/google/common/graph/MapIteratorCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/GraphConnections;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/GraphConnections;

    invoke-interface {v2, p1}, Lcom/google/common/graph/GraphConnections;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7f

    move v2, v5

    goto :goto_80

    :cond_7f
    move v2, v1

    .line 147
    :goto_80
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 150
    iget-wide v6, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    goto :goto_5f

    .line 153
    :cond_89
    iget-object v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->nodeConnections:Lcom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-wide v0, p0, Lcom/google/common/graph/StandardMutableValueGraph;->edgeCount:J

    invoke-static {v0, v1}, Lcom/google/common/graph/Graphs;->checkNonNegative(J)J

    return v5
.end method
