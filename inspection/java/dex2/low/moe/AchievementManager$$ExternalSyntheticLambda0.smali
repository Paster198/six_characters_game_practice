.class public final synthetic Llow/moe/AchievementManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llow/moe/AchievementManager$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Llow/moe/AchievementManager$$ExternalSyntheticLambda0;->f$0:Z

    invoke-static {v0, p1}, Llow/moe/AchievementManager;->lambda$SignIn$0(ZLcom/google/android/gms/tasks/Task;)V

    return-void
.end method
