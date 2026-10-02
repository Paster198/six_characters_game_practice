.class Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;
.super Ljava/lang/Object;
.source "DelegatingScheduledFuture.java"

# interfaces
.implements Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/concurrent/DelegatingScheduledFuture;-><init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/concurrent/DelegatingScheduledFuture$Completer<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;


# direct methods
.method constructor <init>(Lcom/google/firebase/concurrent/DelegatingScheduledFuture;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    # invokes: Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->set(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->access$000(Lcom/google/firebase/concurrent/DelegatingScheduledFuture;Ljava/lang/Object;)Z

    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/google/firebase/concurrent/DelegatingScheduledFuture$1;->this$0:Lcom/google/firebase/concurrent/DelegatingScheduledFuture;

    # invokes: Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->setException(Ljava/lang/Throwable;)Z
    invoke-static {v0, p1}, Lcom/google/firebase/concurrent/DelegatingScheduledFuture;->access$100(Lcom/google/firebase/concurrent/DelegatingScheduledFuture;Ljava/lang/Throwable;)Z

    return-void
.end method
