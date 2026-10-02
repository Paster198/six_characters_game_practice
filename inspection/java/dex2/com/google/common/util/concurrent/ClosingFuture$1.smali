.class Lcom/google/common/util/concurrent/ClosingFuture$1;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;->eventuallyClosing(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$closingExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$closingFuture:Lcom/google/common/util/concurrent/ClosingFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 442
    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$1;->val$closingFuture:Lcom/google/common/util/concurrent/ClosingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$1;->val$closingExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Ljava/io/Closeable;)V
    .registers 4
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 445
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$1;->val$closingFuture:Lcom/google/common/util/concurrent/ClosingFuture;

    # getter for: Lcom/google/common/util/concurrent/ClosingFuture;->closeables:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object v0

    # getter for: Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->access$300(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$1;->val$closingExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;->eventuallyClose(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 442
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$1;->onSuccess(Ljava/io/Closeable;)V

    return-void
.end method
