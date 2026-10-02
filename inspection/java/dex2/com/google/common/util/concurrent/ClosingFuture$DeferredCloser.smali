.class public final Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
.super Ljava/lang/Object;
.source "ClosingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeferredCloser"
.end annotation


# instance fields
.field private final list:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;->list:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    return-void
.end method


# virtual methods
.method public eventuallyClose(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/io/Closeable;",
            ">(TC;",
            "Ljava/util/concurrent/Executor;",
            ")TC;"
        }
    .end annotation

    .line 239
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_d

    .line 241
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;->list:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    invoke-virtual {v0, v1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    :cond_d
    return-object p1
.end method
