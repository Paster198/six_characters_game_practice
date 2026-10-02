.class final Landroidx/core/util/SizeFCompat$Api21Impl;
.super Ljava/lang/Object;
.source "SizeFCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/SizeFCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toSizeF(Landroidx/core/util/SizeFCompat;)Landroid/util/SizeF;
    .registers 3

    .line 99
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p0}, Landroidx/core/util/SizeFCompat;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroidx/core/util/SizeFCompat;->getHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method static toSizeFCompat(Landroid/util/SizeF;)Landroidx/core/util/SizeFCompat;
    .registers 3

    .line 93
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Landroidx/core/util/SizeFCompat;

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/core/util/SizeFCompat;-><init>(FF)V

    return-object v0
.end method
