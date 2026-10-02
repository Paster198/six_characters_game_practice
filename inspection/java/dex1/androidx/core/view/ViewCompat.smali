.class public Landroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewCompat$Api29Impl;,
        Landroidx/core/view/ViewCompat$Api26Impl;,
        Landroidx/core/view/ViewCompat$Api28Impl;,
        Landroidx/core/view/ViewCompat$Api30Impl;,
        Landroidx/core/view/ViewCompat$Api21Impl;,
        Landroidx/core/view/ViewCompat$AccessibilityViewProperty;,
        Landroidx/core/view/ViewCompat$Api24Impl;,
        Landroidx/core/view/ViewCompat$Api20Impl;,
        Landroidx/core/view/ViewCompat$Api23Impl;,
        Landroidx/core/view/ViewCompat$Api31Impl;,
        Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;,
        Landroidx/core/view/ViewCompat$OnReceiveContentListenerAdapter;,
        Landroidx/core/view/ViewCompat$ScrollIndicators;,
        Landroidx/core/view/ViewCompat$NestedScrollType;,
        Landroidx/core/view/ViewCompat$ScrollAxis;,
        Landroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Landroidx/core/view/ViewCompat$FocusRealDirection;,
        Landroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_NO:I = 0x2

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_NO_EXCLUDE_DESCENDANTS:I = 0x8

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_YES:I = 0x1

.field public static final IMPORTANT_FOR_CONTENT_CAPTURE_YES_EXCLUDE_DESCENDANTS:I = 0x4

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I = 0x0

.field private static sAccessibilityDelegateCheckFailed:Z = false

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static final sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 33

    .line 1597
    sget v1, Landroidx/core/R$id;->accessibility_custom_action_0:I

    sget v2, Landroidx/core/R$id;->accessibility_custom_action_1:I

    sget v3, Landroidx/core/R$id;->accessibility_custom_action_2:I

    sget v4, Landroidx/core/R$id;->accessibility_custom_action_3:I

    sget v5, Landroidx/core/R$id;->accessibility_custom_action_4:I

    sget v6, Landroidx/core/R$id;->accessibility_custom_action_5:I

    sget v7, Landroidx/core/R$id;->accessibility_custom_action_6:I

    sget v8, Landroidx/core/R$id;->accessibility_custom_action_7:I

    sget v9, Landroidx/core/R$id;->accessibility_custom_action_8:I

    sget v10, Landroidx/core/R$id;->accessibility_custom_action_9:I

    sget v11, Landroidx/core/R$id;->accessibility_custom_action_10:I

    sget v12, Landroidx/core/R$id;->accessibility_custom_action_11:I

    sget v13, Landroidx/core/R$id;->accessibility_custom_action_12:I

    sget v14, Landroidx/core/R$id;->accessibility_custom_action_13:I

    sget v15, Landroidx/core/R$id;->accessibility_custom_action_14:I

    sget v16, Landroidx/core/R$id;->accessibility_custom_action_15:I

    sget v17, Landroidx/core/R$id;->accessibility_custom_action_16:I

    sget v18, Landroidx/core/R$id;->accessibility_custom_action_17:I

    sget v19, Landroidx/core/R$id;->accessibility_custom_action_18:I

    sget v20, Landroidx/core/R$id;->accessibility_custom_action_19:I

    sget v21, Landroidx/core/R$id;->accessibility_custom_action_20:I

    sget v22, Landroidx/core/R$id;->accessibility_custom_action_21:I

    sget v23, Landroidx/core/R$id;->accessibility_custom_action_22:I

    sget v24, Landroidx/core/R$id;->accessibility_custom_action_23:I

    sget v25, Landroidx/core/R$id;->accessibility_custom_action_24:I

    sget v26, Landroidx/core/R$id;->accessibility_custom_action_25:I

    sget v27, Landroidx/core/R$id;->accessibility_custom_action_26:I

    sget v28, Landroidx/core/R$id;->accessibility_custom_action_27:I

    sget v29, Landroidx/core/R$id;->accessibility_custom_action_28:I

    sget v30, Landroidx/core/R$id;->accessibility_custom_action_29:I

    sget v31, Landroidx/core/R$id;->accessibility_custom_action_30:I

    sget v32, Landroidx/core/R$id;->accessibility_custom_action_31:I

    filled-new-array/range {v1 .. v32}, [I

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 3288
    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    .line 4993
    new-instance v0, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4856
    new-instance v0, Landroidx/core/view/ViewCompat$4;

    sget v1, Landroidx/core/R$id;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$4;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static addAccessibilityAction(Landroid/view/View;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)I
    .registers 5

    .line 1588
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 1590
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1592
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_f
    return v0
.end method

.method private static addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .registers 3

    .line 1683
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 1684
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 1685
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1686
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 4499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4500
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V

    :cond_9
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4

    .line 4565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 4566
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->addOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    return-void

    .line 4570
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4572
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    .line 4574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4575
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4577
    :cond_1e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4578
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    .line 4579
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Landroid/view/View;)V

    :cond_2b
    return-void
.end method

.method public static animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2444
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 2445
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2447
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-nez v0, :cond_1f

    .line 2449
    new-instance v0, Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 2450
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method private static bindTempDetach()V
    .registers 4

    .line 2293
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 2295
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    .line 2298
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    const/4 v0, 0x1

    .line 2300
    sput-boolean v0, Landroidx/core/view/ViewCompat;->sTempDetachBound:Z

    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.canScrollHorizontally(direction)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.canScrollVertically(direction)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .registers 1

    .line 4362
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->cancelDragAndDrop(Landroid/view/View;)V

    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2171
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p0

    return p0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .registers 2

    .line 4150
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4151
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    .line 4152
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 4154
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 4155
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 4156
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .registers 2

    .line 4101
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4102
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    .line 4103
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 4105
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 4106
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 4107
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public static computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 3094
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->computeSystemWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    .line 3011
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3013
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 3014
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 3016
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 1

    .line 2331
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 4

    .line 3929
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 3

    .line 3973
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 5

    .line 3698
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .registers 7

    .line 3897
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3898
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface/range {p0 .. p5}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p5, :cond_12

    .line 3901
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II[I)V
    .registers 9

    .line 3827
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild3;

    if-eqz v0, :cond_a

    .line 3828
    check-cast p0, Landroidx/core/view/NestedScrollingChild3;

    invoke-interface/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChild3;->dispatchNestedScroll(IIII[II[I)V

    return-void

    :cond_a
    move p7, p6

    move-object p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 3831
    invoke-static/range {p1 .. p7}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[II)Z

    return-void
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 6

    .line 3666
    invoke-static/range {p0 .. p5}, Landroidx/core/view/ViewCompat$Api21Impl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .registers 8

    .line 3864
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3865
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface/range {p0 .. p6}, Landroidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p6, :cond_18

    move-object p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 3868
    invoke-static/range {p1 .. p6}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 1

    .line 2308
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api24Impl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 4643
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4646
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 4635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4638
    :cond_8
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static enableAccessibleClickableSpanSupport(Landroid/view/View;)V
    .registers 1

    .line 1802
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    return-void
.end method

.method static ensureAccessibilityDelegateCompat(Landroid/view/View;)V
    .registers 2

    .line 1245
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1247
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 1249
    :cond_b
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static generateViewId()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4552
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;
    .registers 2

    .line 1234
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1238
    :cond_8
    instance-of v0, p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v0, :cond_11

    .line 1239
    check-cast p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    iget-object p0, p0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object p0

    .line 1241
    :cond_11
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v0
.end method

.method private static getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    .line 1254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 1255
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0

    .line 1257
    :cond_b
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method private static getAccessibilityDelegateThroughReflection(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .registers 5

    .line 1265
    sget-boolean v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 1268
    :cond_6
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 1270
    :try_start_b
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 1271
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 1272
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1c

    .line 1274
    :catchall_19
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return-object v1

    .line 1279
    :cond_1c
    :goto_1c
    :try_start_1c
    sget-object v0, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1280
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_29

    .line 1281
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_2a

    return-object p0

    :cond_29
    return-object v1

    .line 1285
    :catchall_2a
    sput-boolean v2, Landroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    return-object v1
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getAccessibilityLiveRegion()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2187
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result p0

    return p0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    .line 1830
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1832
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    .line 4772
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static getActionList(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 1718
    sget v0, Landroidx/core/R$id;->tag_accessibility_actions:I

    .line 1719
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 1721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1722
    sget v1, Landroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getAlpha()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1849
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method public static getAutofillId(Landroid/view/View;)Landroidx/core/view/autofill/AutofillIdCompat;
    .registers 3

    .line 997
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_f

    .line 998
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/autofill/AutofillIdCompat;->toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/core/view/autofill/AutofillIdCompat;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAvailableActionIdFromResources(Landroid/view/View;Ljava/lang/CharSequence;)I
    .registers 10

    .line 1634
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 1635
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1636
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1637
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    return p0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    const/4 p1, -0x1

    move v2, p1

    move v1, v0

    .line 1641
    :goto_2d
    sget-object v3, Landroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    array-length v4, v3

    if-ge v1, v4, :cond_58

    if-ne v2, p1, :cond_58

    .line 1643
    aget v3, v3, v1

    const/4 v4, 0x1

    move v5, v0

    move v6, v4

    .line 1645
    :goto_39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_52

    .line 1646
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v7

    if-eq v7, v3, :cond_4d

    move v7, v4

    goto :goto_4e

    :cond_4d
    move v7, v0

    :goto_4e
    and-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_52
    if-eqz v6, :cond_55

    move v2, v3

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_58
    return v2
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 3447
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 3494
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getClipBounds()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4198
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getContentCaptureSession(Landroid/view/View;)Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;
    .registers 4

    .line 1162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_13

    .line 1163
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getContentCaptureSession(Landroid/view/View;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v2

    .line 1167
    :cond_e
    invoke-static {v0, p0}, Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;->toContentCaptureSessionCompat(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/View;)Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v2
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getDisplay()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4325
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 1

    .line 2774
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 550
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 551
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 553
    :cond_b
    sget-object v0, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1f

    .line 555
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 556
    sget-object v1, Landroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 558
    :cond_1f
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0
.end method

.method private static getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;
    .registers 2

    .line 3282
    instance-of v0, p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    if-eqz v0, :cond_7

    .line 3283
    check-cast p0, Landroidx/core/view/OnReceiveContentViewBehavior;

    return-object p0

    .line 3285
    :cond_7
    sget-object p0, Landroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Landroidx/core/view/OnReceiveContentViewBehavior;

    return-object p0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getFitsSystemWindows()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2915
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p0

    return p0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getImportantForAccessibility()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1413
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p0

    return p0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .registers 3

    .line 858
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 859
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getImportantForAutofill(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getImportantForContentCapture(Landroid/view/View;)I
    .registers 3

    .line 1110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 1111
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->getImportantForContentCapture(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getLabelFor()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1929
    invoke-virtual {p0}, Landroid/view/View;->getLabelFor()I

    move-result p0

    return p0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getLayerType()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1915
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result p0

    return p0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getLayoutDirection()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1999
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getMatrix()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2399
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getMeasuredHeightAndState()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2141
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p0

    return p0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getMeasuredState()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2156
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result p0

    return p0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getMeasuredWidthAndState()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2123
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p0

    return p0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getMinimumHeight()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2431
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getMinimumWidth()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2415
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .registers 3

    .line 4383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4384
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->getNextClusterForwardId(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public static getOnReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;
    .registers 3

    .line 3239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    .line 3240
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api31Impl;->getReceiveContentMimeTypes(Landroid/view/View;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3242
    :cond_b
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getOverScrollMode()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    return p0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getPaddingEnd()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2267
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getPaddingStart()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2251
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    return p0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getParentForAccessibility()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2040
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getPivotX()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2631
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result p0

    return p0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getPivotY()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2664
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result p0

    return p0
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 1

    .line 3071
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getRotation()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2692
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getRotationX()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2702
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result p0

    return p0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getRotationY()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2712
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result p0

    return p0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getScaleX()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2722
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getScaleY()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2732
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    return p0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 1

    .line 4293
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api23Impl;->getScrollIndicators(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 2

    .line 1773
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 3054
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 3055
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api29Impl;->getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3057
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 1

    .line 2834
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getTranslationX()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2361
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getTranslationY()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2376
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 1

    .line 2798
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getTranslationZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 3112
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    return-object p0

    .line 3114
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3115
    :goto_f
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 3116
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_26

    .line 3117
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 3118
    invoke-static {v0, p0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    return-object p0

    :cond_25
    return-object v2

    .line 3120
    :cond_26
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_f

    :cond_2d
    return-object v2
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getWindowSystemUiVisibility()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2853
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getX()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2742
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.getY()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2752
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    return p0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 1

    .line 4039
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 1

    .line 1220
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .registers 3

    .line 4537
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4538
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->hasExplicitFocusable(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 4540
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 1

    .line 3636
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .registers 3

    .line 3785
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_a

    .line 3786
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    goto :goto_11

    :cond_a
    if-nez p1, :cond_11

    .line 3788
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.hasOnClickListeners()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4220
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    return p0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.hasOverlappingRendering()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3406
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p0

    return p0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.hasTransientState()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1302
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    return p0
.end method

.method public static isAccessibilityHeading(Landroid/view/View;)Z
    .registers 2

    .line 4835
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    .line 4836
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.isAttachedToWindow()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4208
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .registers 3

    .line 4442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4443
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isFocusedByDefault(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 1

    .line 1483
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .registers 3

    .line 972
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 973
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isImportantForAutofill(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public static isImportantForContentCapture(Landroid/view/View;)Z
    .registers 3

    .line 1140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 1141
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api30Impl;->isImportantForContentCapture(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.isInLayout()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3997
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result p0

    return p0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 3

    .line 4411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4412
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->isKeyboardNavigationCluster(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.isLaidOut()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4008
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.isLayoutDirectionResolved()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4025
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result p0

    return p0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 1

    .line 3574
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.isOpaque()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2084
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.isPaddingRelative()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3420
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result p0

    return p0
.end method

.method public static isScreenReaderFocusable(Landroid/view/View;)Z
    .registers 2

    .line 4690
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    .line 4691
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.jumpDrawablesToCurrentState()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2949
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 5

    .line 4482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4483
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api26Impl;->keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 1

    return-object p0
.end method

.method static notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .registers 6

    .line 4947
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4948
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_8b

    .line 4951
    :cond_14
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 4952
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 4955
    :goto_29
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_8c

    if-eqz v1, :cond_34

    goto :goto_8c

    :cond_34
    if-ne p1, v3, :cond_58

    .line 4968
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 4969
    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4970
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4971
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4972
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4973
    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4974
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4975
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    .line 4976
    :cond_58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 4977
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4979
    :try_start_62
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_65
    .catch Ljava/lang/AbstractMethodError; {:try_start_62 .. :try_end_65} :catch_66

    return-void

    :catch_66
    move-exception p1

    .line 4981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " does not fully implement ViewParent"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8b
    :goto_8b
    return-void

    .line 4957
    :cond_8c
    :goto_8c
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_93

    goto :goto_95

    :cond_93
    const/16 v3, 0x800

    .line 4958
    :goto_95
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4961
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz v1, :cond_ab

    .line 4963
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4964
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibilityIfNeeded(Landroid/view/View;)V

    .line 4966
    :cond_ab
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 2

    .line 4120
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 2

    .line 4071
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    .line 2982
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2984
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api20Impl;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 2985
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2987
    invoke-static {v1, p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p1
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "v.onInitializeAccessibilityEvent(event)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "v.onInitializeAccessibilityNodeInfo(info.unwrap())"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "v.onPopulateAccessibilityEvent(event)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private static paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4776
    new-instance v0, Landroidx/core/view/ViewCompat$2;

    sget v1, Landroidx/core/R$id;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 3
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.performAccessibilityAction(action, arguments)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1513
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static performHapticFeedback(Landroid/view/View;I)Z
    .registers 3

    .line 1535
    invoke-static {p1}, Landroidx/core/view/HapticFeedbackConstantsCompat;->getFeedbackConstantOrFallback(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1540
    :cond_9
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0
.end method

.method public static performHapticFeedback(Landroid/view/View;II)Z
    .registers 4

    .line 1560
    invoke-static {p1}, Landroidx/core/view/HapticFeedbackConstantsCompat;->getFeedbackConstantOrFallback(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 1565
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result p0

    return p0
.end method

.method public static performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 5

    const/4 v0, 0x3

    .line 3265
    const-string v1, "ViewCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 3266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "performReceiveContent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", view="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3266
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    :cond_41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4c

    .line 3270
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api31Impl;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    return-object p0

    .line 3272
    :cond_4c
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    .line 3273
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/OnReceiveContentListener;

    if-eqz v0, :cond_67

    .line 3275
    invoke-interface {v0, p0, p1}, Landroidx/core/view/OnReceiveContentListener;->onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p1

    if-nez p1, :cond_5e

    const/4 p0, 0x0

    return-object p0

    .line 3276
    :cond_5e
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    return-object p0

    .line 3278
    :cond_67
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFallback(Landroid/view/View;)Landroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.postInvalidateOnAnimation()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1332
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 5
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.postInvalidateOnAnimation(left, top, right, bottom)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1353
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.postOnAnimation(action)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1370
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.postOnAnimationDelayed(action, delayMillis)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1392
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static removeAccessibilityAction(Landroid/view/View;I)V
    .registers 2

    .line 1700
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    const/4 p1, 0x0

    .line 1701
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    return-void
.end method

.method private static removeActionWithId(ILandroid/view/View;)V
    .registers 4

    .line 1707
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1708
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1709
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v1

    if-ne v1, p0, :cond_1b

    .line 1710
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    return-void
.end method

.method public static removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4

    .line 4593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 4594
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->removeOnUnhandledKeyEventListener(Landroid/view/View;Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    return-void

    .line 4598
    :cond_a
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4600
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 4602
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4603
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_20

    .line 4604
    invoke-static {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public static replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .registers 4

    if-nez p3, :cond_c

    if-nez p2, :cond_c

    .line 1674
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    return-void

    .line 1676
    :cond_c
    invoke-virtual {p1, p2, p3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->createReplacementAction(Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->addAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 1

    .line 2864
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 2061
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_d

    .line 2062
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->requireViewById(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 2065
    :cond_d
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    .line 2067
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ID does not reference a View inside this View"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveSizeAndState(III)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2105
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .registers 3

    .line 4514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 4515
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api26Impl;->restoreDefaultFocus(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 4517
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public static saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9

    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 583
    invoke-static/range {p0 .. p6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_9
    return-void
.end method

.method private static screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4695
    new-instance v0, Landroidx/core/view/ViewCompat$1;

    sget v1, Landroidx/core/R$id;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/view/ViewCompat$1;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .registers 3

    if-nez p1, :cond_f

    .line 798
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v0, :cond_f

    .line 799
    new-instance p1, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 801
    :cond_f
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibilityIfNeeded(Landroid/view/View;)V

    if-nez p1, :cond_16

    const/4 p1, 0x0

    goto :goto_1a

    .line 802
    :cond_16
    invoke-virtual {p1}, Landroidx/core/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static setAccessibilityHeading(Landroid/view/View;Z)V
    .registers 3

    .line 4852
    invoke-static {}, Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setAccessibilityLiveRegion(mode)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2235
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public static setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    .line 4747
    invoke-static {}, Landroidx/core/view/ViewCompat;->paneTitleProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    if-eqz p1, :cond_f

    .line 4749
    sget-object p1, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {p1, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->addAccessibilityPane(Landroid/view/View;)V

    return-void

    .line 4751
    :cond_f
    sget-object p1, Landroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {p1, p0}, Landroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->removeAccessibilityPane(Landroid/view/View;)V

    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setActivated(activated)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3384
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setAlpha(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2507
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 4

    .line 836
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 837
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static setAutofillId(Landroid/view/View;Landroidx/core/view/autofill/AutofillIdCompat;)V
    .registers 4

    .line 1058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_9

    .line 1059
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api28Impl;->setAutofillId(Landroid/view/View;Landroidx/core/view/autofill/AutofillIdCompat;)V

    :cond_9
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setBackground(background)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3435
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 3464
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 3512
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2885
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const-string v2, "ViewCompat"

    if-nez v1, :cond_26

    const/4 v1, 0x1

    .line 2887
    :try_start_9
    const-class v3, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 2888
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v3

    .line 2890
    const-string v4, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2892
    :goto_21
    sget-object v3, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2895
    :cond_26
    :try_start_26
    sget-object v1, Landroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_33} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_42

    :catch_34
    move-exception p0

    .line 2901
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_39
    move-exception p0

    .line 2899
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catch_3e
    move-exception p0

    .line 2897
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_42
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setClipBounds(clipBounds)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4182
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setContentCaptureSession(Landroid/view/View;Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;)V
    .registers 4

    .line 1208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 1209
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api29Impl;->setContentCaptureSession(Landroid/view/View;Landroidx/core/view/contentcapture/ContentCaptureSessionCompat;)V

    :cond_9
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 2

    .line 2762
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setFitsSystemWindows(fitSystemWindows)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2933
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .registers 4

    .line 4462
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4463
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setFocusedByDefault(Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setHasTransientState(hasTransientState)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1316
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setImportantForAccessibility(mode)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1441
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private static setImportantForAccessibilityIfNeeded(Landroid/view/View;)V
    .registers 2

    .line 4988
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 4989
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_a
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .registers 4

    .line 902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 903
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setImportantForAutofill(Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public static setImportantForContentCapture(Landroid/view/View;I)V
    .registers 4

    .line 1086
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 1087
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api30Impl;->setImportantForContentCapture(Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 4

    .line 4426
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4427
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setKeyboardNavigationCluster(Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setLabelFor(labeledId)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1943
    invoke-virtual {p0, p1}, Landroid/view/View;->setLabelFor(I)V

    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setLayerPaint(paint)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1980
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setLayerType(layerType, paint)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1889
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setLayoutDirection(layoutDirection)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2024
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 2

    .line 3551
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .registers 4

    .line 4398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4399
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setNextClusterForwardId(Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 2

    .line 2962
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V
    .registers 9

    .line 3190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_a

    .line 3191
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api31Impl;->setOnReceiveContentListener(Landroid/view/View;[Ljava/lang/String;Landroidx/core/view/OnReceiveContentListener;)V

    return-void

    :cond_a
    if-eqz p1, :cond_f

    .line 3194
    array-length v0, p1

    if-nez v0, :cond_10

    :cond_f
    const/4 p1, 0x0

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1e

    if-eqz p1, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    move v2, v0

    .line 3196
    :goto_19
    const-string v3, "When the listener is set, MIME types must also be set"

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_1e
    if-eqz p1, :cond_4a

    .line 3201
    array-length v2, p1

    move v3, v0

    :goto_22
    if-ge v3, v2, :cond_33

    aget-object v4, p1, v3

    .line 3202
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    move v0, v1

    goto :goto_33

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_33
    :goto_33
    xor-int/2addr v0, v1

    .line 3207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A MIME type set here must not start with *: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3208
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3207
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3210
    :cond_4a
    sget v0, Landroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3211
    sget p1, Landroidx/core/R$id;->tag_on_receive_content_listener:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setOverScrollMode(overScrollMode)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 5
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setPaddingRelative(start, top, end, bottom)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2288
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setPivotX(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2649
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setPivotY(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2682
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 4306
    invoke-virtual {p1}, Landroidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    check-cast p1, Landroid/view/PointerIcon;

    .line 4305
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->setPointerIcon(Landroid/view/View;Landroid/view/PointerIcon;)V

    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setRotation(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2556
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setRotationX(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2572
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setRotationY(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2588
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setSaveFromParentEnabled(enabled)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3366
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setScaleX(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2603
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setScaleY(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2618
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static setScreenReaderFocusable(Landroid/view/View;Z)V
    .registers 3

    .line 4671
    invoke-static {}, Landroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 2

    .line 4237
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 3

    .line 4273
    invoke-static {p0, p1, p2}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    return-void
.end method

.method public static setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    .line 1755
    invoke-static {}, Landroidx/core/view/ViewCompat;->stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 3037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 3038
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api29Impl;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 4338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 4339
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api26Impl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    .line 2812
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setTranslationX(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2469
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setTranslationY(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2488
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 2

    .line 2786
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public static setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .registers 2

    .line 3150
    invoke-static {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setX(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2524
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "view.setY(value)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2541
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 2

    .line 4059
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setZ(Landroid/view/View;F)V

    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 5

    .line 4351
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat$Api24Impl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 2

    .line 3597
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->startNestedScroll(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .registers 4

    .line 3749
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 3750
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result p0

    return p0

    :cond_b
    if-nez p2, :cond_12

    .line 3752
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static stateDescriptionProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4799
    new-instance v0, Landroidx/core/view/ViewCompat$3;

    sget v1, Landroidx/core/R$id;->tag_state_description:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x40

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/view/ViewCompat$3;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 1

    .line 3618
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .registers 3

    .line 3767
    instance-of v0, p0, Landroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_a

    .line 3768
    check-cast p0, Landroidx/core/view/NestedScrollingChild2;

    invoke-interface {p0, p1}, Landroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    return-void

    :cond_a
    if-nez p1, :cond_f

    .line 3770
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3

    .line 4162
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 4163
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4164
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 2

    .line 4372
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api24Impl;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    return-void
.end method
