.class public Landroidx/core/util/TypedValueCompat;
.super Ljava/lang/Object;
.source "TypedValueCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/util/TypedValueCompat$Api34Impl;,
        Landroidx/core/util/TypedValueCompat$ComplexDimensionUnit;
    }
.end annotation


# static fields
.field private static final INCHES_PER_MM:F = 0.03937008f

.field private static final INCHES_PER_PT:F = 0.013888889f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deriveDimension(IFLandroid/util/DisplayMetrics;)F
    .registers 5

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 95
    invoke-static {p0, p1, p2}, Landroidx/core/util/TypedValueCompat$Api34Impl;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_b
    if-eqz p0, :cond_6d

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_63

    const/4 v0, 0x2

    if-eq p0, v0, :cond_59

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_41

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2c

    .line 127
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_24

    return v1

    .line 130
    :cond_24
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, p0

    const p0, 0x3d214285

    :goto_2a
    div-float/2addr p1, p0

    return p1

    .line 133
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid unitToConvertTo "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_41
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_48

    return v1

    .line 124
    :cond_48
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_2a

    .line 115
    :cond_4b
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_52

    return v1

    .line 118
    :cond_52
    iget p0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr p1, p0

    const p0, 0x3c638e39

    goto :goto_2a

    .line 110
    :cond_59
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_60

    return v1

    .line 113
    :cond_60
    iget p0, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    goto :goto_2a

    .line 103
    :cond_63
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_6a

    return v1

    .line 106
    :cond_6a
    iget p0, p2, Landroid/util/DisplayMetrics;->density:F

    goto :goto_2a

    :cond_6d
    return p1
.end method

.method public static dpToPx(FLandroid/util/DisplayMetrics;)F
    .registers 3

    const/4 v0, 0x1

    .line 150
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getUnitFromComplexDimension(I)I
    .registers 1

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static pxToDp(FLandroid/util/DisplayMetrics;)F
    .registers 3

    const/4 v0, 0x1

    .line 165
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static pxToSp(FLandroid/util/DisplayMetrics;)F
    .registers 3

    const/4 v0, 0x2

    .line 196
    invoke-static {v0, p0, p1}, Landroidx/core/util/TypedValueCompat;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static spToPx(FLandroid/util/DisplayMetrics;)F
    .registers 3

    const/4 v0, 0x2

    .line 181
    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
