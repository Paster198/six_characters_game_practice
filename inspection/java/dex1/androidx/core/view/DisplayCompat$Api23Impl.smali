.class Landroidx/core/view/DisplayCompat$Api23Impl;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMode(Landroid/content/Context;Landroid/view/Display;)Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 3

    .line 233
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 234
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 237
    invoke-static {v0, p0}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_17

    .line 239
    :cond_11
    new-instance p1, Landroidx/core/view/DisplayCompat$ModeCompat;

    invoke-direct {p1, v0, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    return-object p1

    .line 238
    :cond_17
    :goto_17
    new-instance p0, Landroidx/core/view/DisplayCompat$ModeCompat;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    return-object p0
.end method

.method public static getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;
    .registers 8

    .line 246
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 247
    array-length v1, v0

    new-array v1, v1, [Landroidx/core/view/DisplayCompat$ModeCompat;

    .line 249
    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 250
    invoke-static {p0, p1}, Landroidx/core/view/DisplayCompat;->getCurrentDisplaySizeFromWorkarounds(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_39

    .line 253
    invoke-static {v2, p0}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_39

    :cond_19
    move v3, p1

    .line 261
    :goto_1a
    array-length v4, v0

    if-ge v3, v4, :cond_4e

    .line 263
    aget-object v4, v0, v3

    invoke-static {v4, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 264
    new-instance v4, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v5, v0, v3

    invoke-direct {v4, v5, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Landroid/graphics/Point;)V

    goto :goto_34

    .line 265
    :cond_2d
    new-instance v4, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v5, v0, v3

    invoke-direct {v4, v5, p1}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    :goto_34
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 255
    :cond_39
    :goto_39
    array-length p0, v0

    if-ge p1, p0, :cond_4e

    .line 256
    aget-object p0, v0, p1

    invoke-static {p0, v2}, Landroidx/core/view/DisplayCompat$Api23Impl;->physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z

    move-result p0

    .line 257
    new-instance v3, Landroidx/core/view/DisplayCompat$ModeCompat;

    aget-object v4, v0, p1

    invoke-direct {v3, v4, p0}, Landroidx/core/view/DisplayCompat$ModeCompat;-><init>(Landroid/view/Display$Mode;Z)V

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_4e
    return-object v1
.end method

.method static isCurrentModeTheLargestMode(Landroid/view/Display;)Z
    .registers 8

    .line 272
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    .line 274
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_28

    aget-object v4, p0, v3

    .line 275
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-lt v5, v6, :cond_27

    .line 276
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    if-ge v5, v4, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_27
    :goto_27
    return v2

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/graphics/Point;)Z
    .registers 4

    .line 288
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_20

    .line 289
    :cond_10
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-ne p0, p1, :cond_22

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method static physicalSizeEquals(Landroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 4

    .line 297
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    if-ne v0, v1, :cond_16

    .line 298
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    if-ne p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
