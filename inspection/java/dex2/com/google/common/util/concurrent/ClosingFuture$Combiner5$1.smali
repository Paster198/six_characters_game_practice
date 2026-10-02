.class Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->call(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

.field final synthetic val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;)V
    .registers 3

    .line 2052
    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Lcom/google/common/util/concurrent/ClosingFuture$Peeker;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;",
            "Lcom/google/common/util/concurrent/ClosingFuture$Peeker;",
            ")TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2056
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    .line 2058
    # getter for: Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->future1:Lcom/google/common/util/concurrent/ClosingFuture;
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->access$2700(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    .line 2059
    # getter for: Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->future2:Lcom/google/common/util/concurrent/ClosingFuture;
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->access$2800(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    .line 2060
    # getter for: Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->future3:Lcom/google/common/util/concurrent/ClosingFuture;
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->access$2900(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    .line 2061
    # getter for: Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->future4:Lcom/google/common/util/concurrent/ClosingFuture;
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->access$3000(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v5

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;

    .line 2062
    # getter for: Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->future5:Lcom/google/common/util/concurrent/ClosingFuture;
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;->access$3100(Lcom/google/common/util/concurrent/ClosingFuture$Combiner5;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    .line 2056
    invoke-interface/range {v0 .. v6}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2067
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner5$ClosingFunction5;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
