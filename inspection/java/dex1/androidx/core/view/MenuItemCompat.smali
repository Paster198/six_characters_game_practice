.class public final Landroidx/core/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MenuItemCompat$OnActionExpandListener;,
        Landroidx/core/view/MenuItemCompat$Api26Impl;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuItemCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseActionView(Landroid/view/MenuItem;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.collapseActionView()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result p0

    return p0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.expandActionView()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result p0

    return p0
.end method

.method public static getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;
    .registers 2

    .line 235
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 236
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object p0

    return-object p0

    .line 240
    :cond_b
    const-string p0, "MenuItemCompat"

    const-string v0, "getActionProvider: item does not implement SupportMenuItem; returning null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.getActionView()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getAlphabeticModifiers(Landroid/view/MenuItem;)I
    .registers 3

    .line 517
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 519
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getAlphabeticModifiers()I

    move-result p0

    return p0

    .line 521
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 522
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getAlphabeticModifiers(Landroid/view/MenuItem;)I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 3

    .line 353
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 355
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 357
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 358
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getContentDescription(Landroid/view/MenuItem;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .registers 3

    .line 557
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 559
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 561
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 562
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getIconTintList(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 596
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 598
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    .line 600
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 601
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getIconTintMode(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNumericModifiers(Landroid/view/MenuItem;)I
    .registers 3

    .line 466
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 468
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getNumericModifiers()I

    move-result p0

    return p0

    .line 470
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 471
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getNumericModifiers(Landroid/view/MenuItem;)I

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .registers 3

    .line 385
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 387
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0}, Landroidx/core/internal/view/SupportMenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 389
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_16

    .line 390
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat$Api26Impl;->getTooltipText(Landroid/view/MenuItem;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isActionViewExpanded(Landroid/view/MenuItem;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.isActionViewExpanded()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-interface {p0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result p0

    return p0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroidx/core/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3

    .line 217
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_b

    .line 218
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    move-result-object p0

    return-object p0

    .line 221
    :cond_b
    const-string p1, "MenuItemCompat"

    const-string v0, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.setActionView(resId)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.setActionView(view)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setAlphabeticShortcut(Landroid/view/MenuItem;CI)V
    .registers 5

    .line 497
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 499
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-void

    .line 500
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 501
    invoke-static {p0, p1, p2}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public static setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4

    .line 338
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 339
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    return-void

    .line 340
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 341
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public static setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 542
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 544
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-void

    .line 545
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 546
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public static setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 579
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 581
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-void

    .line 582
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 583
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public static setNumericShortcut(Landroid/view/MenuItem;CI)V
    .registers 5

    .line 446
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 448
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1, p2}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-void

    .line 449
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 450
    invoke-static {p0, p1, p2}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setNumericShortcut(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public static setOnActionExpandListener(Landroid/view/MenuItem;Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    new-instance v0, Landroidx/core/view/MenuItemCompat$1;

    invoke-direct {v0, p1}, Landroidx/core/view/MenuItemCompat$1;-><init>(Landroidx/core/view/MenuItemCompat$OnActionExpandListener;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setShortcut(Landroid/view/MenuItem;CCII)V
    .registers 7

    .line 421
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 423
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/internal/view/SupportMenuItem;->setShortcut(CCII)Landroid/view/MenuItem;

    return-void

    .line 425
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 426
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setShortcut(Landroid/view/MenuItem;CCII)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "item.setShowAsAction(actionEnum)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public static setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V
    .registers 4

    .line 370
    instance-of v0, p0, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_a

    .line 371
    check-cast p0, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {p0, p1}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    return-void

    .line 372
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_13

    .line 373
    invoke-static {p0, p1}, Landroidx/core/view/MenuItemCompat$Api26Impl;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_13
    return-void
.end method
