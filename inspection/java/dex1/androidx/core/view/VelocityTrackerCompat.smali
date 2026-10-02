.class public final Landroidx/core/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/VelocityTrackerCompat$Api34Impl;,
        Landroidx/core/view/VelocityTrackerCompat$VelocityTrackableMotionEventAxis;
    }
.end annotation


# static fields
.field private static sFallbackTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/VelocityTracker;",
            "Landroidx/core/view/VelocityTrackerFallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .registers 4

    .line 279
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_a

    goto :goto_2f

    .line 285
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_2f

    .line 288
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 289
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    new-instance v1, Landroidx/core/view/VelocityTrackerFallback;

    invoke-direct {v1}, Landroidx/core/view/VelocityTrackerFallback;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_24
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/VelocityTrackerFallback;

    invoke-virtual {p0, p1}, Landroidx/core/view/VelocityTrackerFallback;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static clear(Landroid/view/VelocityTracker;)V
    .registers 1

    .line 212
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 213
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->removeFallbackForTracker(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public static computeCurrentVelocity(Landroid/view/VelocityTracker;I)V
    .registers 3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 263
    invoke-static {p0, p1, v0}, Landroidx/core/view/VelocityTrackerCompat;->computeCurrentVelocity(Landroid/view/VelocityTracker;IF)V

    return-void
.end method

.method public static computeCurrentVelocity(Landroid/view/VelocityTracker;IF)V
    .registers 3

    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 252
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->getFallbackTrackerOrNull(Landroid/view/VelocityTracker;)Landroidx/core/view/VelocityTrackerFallback;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 254
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/VelocityTrackerFallback;->computeCurrentVelocity(IF)V

    :cond_c
    return-void
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;I)F
    .registers 4

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 147
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->getAxisVelocity(Landroid/view/VelocityTracker;I)F

    move-result p0

    return p0

    :cond_b
    if-nez p1, :cond_12

    .line 152
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0

    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 155
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    .line 160
    :cond_1a
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->getFallbackTrackerOrNull(Landroid/view/VelocityTracker;)Landroidx/core/view/VelocityTrackerFallback;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 162
    invoke-virtual {p0, p1}, Landroidx/core/view/VelocityTrackerFallback;->getAxisVelocity(I)F

    move-result p0

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;II)F
    .registers 5

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 199
    invoke-static {p0, p1, p2}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->getAxisVelocity(Landroid/view/VelocityTracker;II)F

    move-result p0

    return p0

    :cond_b
    if-nez p1, :cond_12

    .line 202
    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0

    :cond_12
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 205
    invoke-virtual {p0, p2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static getFallbackTrackerOrNull(Landroid/view/VelocityTracker;)Landroidx/core/view/VelocityTrackerFallback;
    .registers 2

    .line 301
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/VelocityTrackerFallback;

    return-object p0
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "tracker.getXVelocity(pointerId)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "tracker.getYVelocity(pointerId)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method public static isAxisSupported(Landroid/view/VelocityTracker;I)Z
    .registers 4

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 125
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->isAxisSupported(Landroid/view/VelocityTracker;I)Z

    move-result p0

    return p0

    :cond_b
    const/16 p0, 0x1a

    const/4 v0, 0x1

    if-eq p1, p0, :cond_17

    if-eqz p1, :cond_17

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    return v0
.end method

.method public static recycle(Landroid/view/VelocityTracker;)V
    .registers 1

    .line 230
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V

    .line 231
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->removeFallbackForTracker(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method private static removeFallbackForTracker(Landroid/view/VelocityTracker;)V
    .registers 2

    .line 296
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
