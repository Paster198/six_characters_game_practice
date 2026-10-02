.class public final Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
    .registers 1

    .line 25
    # getter for: Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->access$000()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static executor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 29
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .registers 2

    .line 21
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
