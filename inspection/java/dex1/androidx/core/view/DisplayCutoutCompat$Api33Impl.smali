.class Landroidx/core/view/DisplayCutoutCompat$Api33Impl;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Path;)Landroid/view/DisplayCutout;
    .registers 8

    .line 349
    new-instance v0, Landroid/view/DisplayCutout$Builder;

    invoke-direct {v0}, Landroid/view/DisplayCutout$Builder;-><init>()V

    .line 350
    invoke-virtual {v0, p0}, Landroid/view/DisplayCutout$Builder;->setSafeInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 351
    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout$Builder;->setBoundingRectLeft(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 352
    invoke-virtual {p0, p2}, Landroid/view/DisplayCutout$Builder;->setBoundingRectTop(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 353
    invoke-virtual {p0, p3}, Landroid/view/DisplayCutout$Builder;->setBoundingRectRight(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 354
    invoke-virtual {p0, p4}, Landroid/view/DisplayCutout$Builder;->setBoundingRectBottom(Landroid/graphics/Rect;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p0, p5}, Landroid/view/DisplayCutout$Builder;->setWaterfallInsets(Landroid/graphics/Insets;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 356
    invoke-virtual {p0, p6}, Landroid/view/DisplayCutout$Builder;->setCutoutPath(Landroid/graphics/Path;)Landroid/view/DisplayCutout$Builder;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Landroid/view/DisplayCutout$Builder;->build()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method
