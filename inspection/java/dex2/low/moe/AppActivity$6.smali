.class Llow/moe/AppActivity$6;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/AppActivity;->setHighFrameRateEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 531
    iput-boolean p1, p0, Llow/moe/AppActivity$6;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 534
    iget-boolean v0, p0, Llow/moe/AppActivity$6;->val$enabled:Z

    if-eqz v0, :cond_7

    .line 535
    invoke-static {}, Llow/moe/AppActivity;->getDisplayRefreshRate()F

    .line 541
    :cond_7
    # invokes: Llow/moe/AppActivity;->getHighestRefreshRateMode()Landroid/view/Display$Mode;
    invoke-static {}, Llow/moe/AppActivity;->access$100()Landroid/view/Display$Mode;

    move-result-object v0

    .line 542
    sget-object v1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v1}, Llow/moe/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 544
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 545
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 546
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    .line 554
    iget-boolean v1, p0, Llow/moe/AppActivity$6;->val$enabled:Z

    if-eqz v1, :cond_2d

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 555
    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setAnimationInterval(F)V

    return-void

    :cond_2d
    const v0, 0x3c888889

    .line 557
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setAnimationInterval(F)V

    return-void
.end method
