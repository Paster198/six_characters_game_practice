.class public final Landroidx/core/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewParentCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"

.field private static sTempNestedScrollConsumed:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTempNestedScrollConsumed()[I
    .registers 3

    .line 517
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    if-nez v0, :cond_a

    const/4 v0, 0x2

    .line 518
    new-array v0, v0, [I

    sput-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    goto :goto_10

    :cond_a
    const/4 v1, 0x0

    .line 520
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 521
    aput v1, v0, v2

    .line 523
    :goto_10
    sget-object v0, Landroidx/core/view/ViewParentCompat;->sTempNestedScrollConsumed:[I

    return-object v0
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "parent.notifySubtreeAccessibilityStateChanged(child, source, changeType)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 5

    .line 441
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p1

    .line 443
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not implement interface method onNestedFling"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 4

    .line 479
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p1

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not implement interface method onNestedPreFling"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 186
    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    return-void
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .registers 7

    .line 398
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_a

    .line 400
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface/range {p0 .. p5}, Landroidx/core/view/NestedScrollingParent2;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void

    :cond_a
    if-nez p5, :cond_2c

    .line 405
    :try_start_c
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    move-object p1, v0

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not implement interface method onNestedPreScroll"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 14

    const/4 v6, 0x0

    .line 139
    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 138
    invoke-static/range {v0 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .registers 15

    .line 168
    invoke-static {}, Landroidx/core/view/ViewParentCompat;->getTempNestedScrollConsumed()[I

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 167
    invoke-static/range {v0 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V
    .registers 11

    .line 342
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent3;

    if-eqz v0, :cond_a

    .line 343
    check-cast p0, Landroidx/core/view/NestedScrollingParent3;

    invoke-interface/range {p0 .. p7}, Landroidx/core/view/NestedScrollingParent3;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void

    :cond_a
    move v2, p2

    move-object p2, p1

    move-object p1, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, v2

    const/4 v0, 0x0

    .line 349
    aget v1, p1, v0

    add-int/2addr v1, p5

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 350
    aget v1, p1, v0

    add-int/2addr v1, p6

    aput v1, p1, v0

    .line 352
    instance-of p1, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz p1, :cond_29

    .line 353
    move-object p1, p0

    check-cast p1, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface/range {p1 .. p7}, Landroidx/core/view/NestedScrollingParent2;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void

    :cond_29
    if-nez p7, :cond_4c

    move-object p1, p0

    .line 359
    :try_start_2c
    invoke-static/range {p1 .. p6}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    :try_end_2f
    .catch Ljava/lang/AbstractMethodError; {:try_start_2c .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    move-object p0, v0

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " does not implement interface method onNestedScroll"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    const/4 v0, 0x0

    .line 106
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    .line 258
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_a

    .line 260
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void

    :cond_a
    if-nez p4, :cond_2b

    .line 266
    :try_start_c
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .registers 6

    .line 216
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_b

    .line 218
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParent2;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p4, :cond_2d

    .line 224
    :try_start_d
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0
    :try_end_11
    .catch Ljava/lang/AbstractMethodError; {:try_start_d .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p1

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ViewParent "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not implement interface method onStartNestedScroll"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 119
    invoke-static {p0, p1, v0}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    return-void
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V
    .registers 4

    .line 294
    instance-of v0, p0, Landroidx/core/view/NestedScrollingParent2;

    if-eqz v0, :cond_a

    .line 296
    check-cast p0, Landroidx/core/view/NestedScrollingParent2;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/NestedScrollingParent2;->onStopNestedScroll(Landroid/view/View;I)V

    return-void

    :cond_a
    if-nez p2, :cond_2b

    .line 301
    :try_start_c
    invoke-static {p0, p1}, Landroidx/core/view/ViewParentCompat$Api21Impl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_f
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 303
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ViewParent "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not implement interface method onStopNestedScroll"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ViewParentCompat"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "parent.requestSendAccessibilityEvent(child, event)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
