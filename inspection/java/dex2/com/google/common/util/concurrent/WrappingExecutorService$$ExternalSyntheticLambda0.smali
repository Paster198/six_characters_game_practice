.class public final synthetic Lcom/google/common/util/concurrent/WrappingExecutorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lcom/google/common/util/concurrent/WrappingExecutorService;->lambda$wrapTask$0(Ljava/util/concurrent/Callable;)V

    return-void
.end method
