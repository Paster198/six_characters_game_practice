.class Llow/moe/AchievementManager$1;
.super Ljava/lang/Object;
.source "AchievementManager.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/AchievementManager;->ShowAchievements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 109
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_31

    .line 111
    # getter for: Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;
    invoke-static {}, Llow/moe/AchievementManager;->access$100()Llow/moe/AchievementManager;

    move-result-object v0

    # getter for: Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;
    invoke-static {v0}, Llow/moe/AchievementManager;->access$200(Llow/moe/AchievementManager;)Landroid/app/Activity;

    move-result-object v0

    # getter for: Llow/moe/AchievementManager;->RC_REQUEST_ACHIEVEMENTS_INTENT:I
    invoke-static {}, Llow/moe/AchievementManager;->access$000()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to get Achievements Intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llow/moe/AppActivity;->logCrashlytics(Ljava/lang/String;)V

    :cond_31
    return-void
.end method
