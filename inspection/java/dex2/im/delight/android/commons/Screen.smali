.class public final Lim/delight/android/commons/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/delight/android/commons/Screen$Orientation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lockOrientation(Landroid/app/Activity;)V
    .registers 9

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 54
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 56
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 57
    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eq v1, v5, :cond_44

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-eq v1, v6, :cond_3a

    const/4 v4, 0x3

    if-eq v1, v4, :cond_30

    if-le v2, v0, :cond_2c

    .line 91
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 94
    :cond_2c
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_30
    if-le v0, v2, :cond_36

    .line 83
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 86
    :cond_36
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_3a
    if-le v2, v0, :cond_40

    .line 75
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 78
    :cond_40
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_44
    if-le v0, v2, :cond_4a

    .line 67
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 70
    :cond_4a
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static unlockOrientation(Landroid/app/Activity;)V
    .registers 2

    const/4 v0, -0x1

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
