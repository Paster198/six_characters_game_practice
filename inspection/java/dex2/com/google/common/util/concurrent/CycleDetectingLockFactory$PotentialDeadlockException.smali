.class public final Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
.super Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PotentialDeadlockException"
.end annotation


# instance fields
.field private final conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;)V
    .registers 4

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    .line 545
    iput-object p3, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    .line 546
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .registers 5

    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;)V

    return-void
.end method


# virtual methods
.method public getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->conflictingStackTrace:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    :goto_11
    if-eqz v1, :cond_25

    .line 562
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_11

    .line 564
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
