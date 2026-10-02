.class Landroidx/core/view/WindowInsetsAnimationControllerCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsAnimationControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish(Z)V
    .registers 2

    return-void
.end method

.method public getCurrentAlpha()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFraction()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 245
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 235
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 240
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method public getTypes()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isCancelled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method isFinished()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .registers 4

    return-void
.end method
