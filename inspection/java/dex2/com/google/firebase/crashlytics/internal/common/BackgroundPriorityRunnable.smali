.class public abstract Lcom/google/firebase/crashlytics/internal/common/BackgroundPriorityRunnable;
.super Ljava/lang/Object;
.source "BackgroundPriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onRun()V
.end method

.method public final run()V
    .registers 2

    const/16 v0, 0xa

    .line 26
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 27
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/BackgroundPriorityRunnable;->onRun()V

    return-void
.end method
