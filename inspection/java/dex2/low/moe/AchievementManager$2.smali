.class Llow/moe/AchievementManager$2;
.super Ljava/lang/Object;
.source "AchievementManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/AchievementManager;->PromptGooglePlayServicesErrorDialogIfNotAvailable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailability;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Llow/moe/AchievementManager$2;->val$apiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput p2, p0, Llow/moe/AchievementManager$2;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 200
    iget-object v0, p0, Llow/moe/AchievementManager$2;->val$apiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    # getter for: Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;
    invoke-static {}, Llow/moe/AchievementManager;->access$100()Llow/moe/AchievementManager;

    move-result-object v1

    # getter for: Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;
    invoke-static {v1}, Llow/moe/AchievementManager;->access$200(Llow/moe/AchievementManager;)Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Llow/moe/AchievementManager$2;->val$resultCode:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
