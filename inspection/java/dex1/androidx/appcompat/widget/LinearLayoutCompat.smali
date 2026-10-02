.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 118
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 122
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 162
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 164
    sget-object v6, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    .line 166
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 164
    invoke-static/range {v4 .. v10}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 168
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_30

    .line 170
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 173
    :cond_30
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_3b

    .line 175
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 178
    :cond_3b
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_46

    .line 180
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 183
    :cond_46
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v3, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 185
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 186
    invoke-virtual {v3, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 188
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 190
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 192
    sget p1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, v4, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 194
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 12

    .line 1327
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_3b

    .line 1330
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1331
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_36

    .line 1332
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1334
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_36

    .line 1337
    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1338
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    .line 1341
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1342
    iput v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_37

    :cond_36
    move v4, p2

    :goto_37
    add-int/lit8 v0, v0, 0x1

    move p2, v4

    goto :goto_b

    :cond_3b
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12

    .line 905
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p1, :cond_3b

    .line 908
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 909
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_36

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 912
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_36

    .line 915
    iget v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 916
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    .line 919
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 920
    iput v8, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    goto :goto_37

    :cond_36
    move v6, p2

    :goto_37
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_b

    :cond_3b
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1655
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1761
    instance-of p1, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return p1
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 333
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    .line 335
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 337
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 338
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_2f

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    .line 344
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 346
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 351
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    add-int/lit8 v0, v0, -0x1

    .line 352
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_60

    if-eqz v1, :cond_54

    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_7a

    .line 358
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    goto :goto_71

    .line 361
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_73

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    :goto_71
    sub-int/2addr v0, v1

    goto :goto_7a

    .line 365
    :cond_73
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 368
    :goto_7a
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_7d
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .line 305
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 307
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 309
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 310
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 313
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 318
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    .line 319
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 322
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_59

    .line 324
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 325
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 327
    :goto_59
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 373
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 379
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 380
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 379
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 381
    iget-object p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 1744
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1745
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1747
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 1731
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .line 1754
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 6

    .line 433
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 434
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 437
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_77

    .line 442
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 446
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v0, :cond_21

    return v2

    .line 452
    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 464
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6c

    .line 465
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x10

    if-eq v3, v4, :cond_53

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_6c

    .line 469
    :cond_41
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_6c

    .line 473
    :cond_53
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 480
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 481
    iget v0, v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2

    .line 438
    :cond_77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 490
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 231
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 278
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 288
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 1710
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .registers 2

    .line 1677
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 222
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    .line 515
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 528
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 539
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 577
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v0

    .line 578
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 579
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_18

    return v1

    :cond_18
    return v0

    .line 580
    :cond_19
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_32

    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_32

    .line 583
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_32
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 26

    move-object/from16 v0, p0

    .line 1531
    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 1532
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    sub-int v2, p4, p2

    .line 1539
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v7, v2, v3

    sub-int/2addr v2, v6

    .line 1542
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int v8, v2, v3

    .line 1544
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v9

    .line 1546
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v3, 0x800007

    and-int/2addr v3, v2

    and-int/lit8 v10, v2, 0x70

    .line 1549
    iget-boolean v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1551
    iget-object v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1552
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1554
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1555
    invoke-static {v3, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v2, v15, :cond_4b

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3f

    .line 1568
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    goto :goto_56

    .line 1558
    :cond_3f
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    goto :goto_56

    .line 1563
    :cond_4b
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    sub-int v3, p3, p1

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v14

    add-int/2addr v2, v3

    :goto_56
    const/4 v3, 0x0

    if-eqz v1, :cond_60

    add-int/lit8 v1, v9, -0x1

    move/from16 v16, v1

    const/16 v17, -0x1

    goto :goto_64

    :cond_60
    move/from16 v16, v3

    move/from16 v17, v15

    :goto_64
    move v1, v3

    :goto_65
    if-ge v1, v9, :cond_13f

    mul-int v3, v17, v1

    add-int v3, v16, v3

    move v5, v1

    .line 1582
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_82

    .line 1585
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v2, v1

    move v1, v5

    move/from16 v19, v6

    move/from16 p2, v14

    move/from16 p4, v15

    const/16 v18, -0x1

    goto/16 :goto_135

    :cond_82
    move/from16 p2, v14

    .line 1586
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v14

    move/from16 p4, v15

    const/16 v15, 0x8

    if-eq v14, v15, :cond_12d

    .line 1587
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    move v15, v5

    .line 1588
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1592
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move/from16 p3, v2

    if-eqz v11, :cond_af

    .line 1594
    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v18, v5

    const/4 v5, -0x1

    if-eq v2, v5, :cond_b1

    .line 1595
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v5

    goto :goto_b2

    :cond_af
    move/from16 v18, v5

    :cond_b1
    const/4 v5, -0x1

    .line 1598
    :goto_b2
    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v2, :cond_b7

    move v2, v10

    :cond_b7
    and-int/lit8 v2, v2, 0x70

    move/from16 v19, v6

    const/16 v6, 0x10

    if-eq v2, v6, :cond_ec

    const/16 v6, 0x30

    if-eq v2, v6, :cond_de

    const/16 v6, 0x50

    if-eq v2, v6, :cond_cb

    move/from16 v2, v19

    const/4 v6, -0x1

    goto :goto_f9

    :cond_cb
    sub-int v2, v7, v18

    .line 1628
    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v6

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f9

    .line 1630
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v5

    .line 1631
    aget v5, v13, p2

    sub-int v5, v5, v20

    goto :goto_f8

    :cond_de
    const/4 v6, -0x1

    .line 1605
    iget v2, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v2, v19, v2

    if-eq v5, v6, :cond_f9

    .line 1607
    aget v20, v12, p4

    sub-int v20, v20, v5

    add-int v2, v2, v20

    goto :goto_f9

    :cond_ec
    const/4 v6, -0x1

    sub-int v2, v8, v18

    .line 1623
    div-int/lit8 v2, v2, 0x2

    add-int v2, v19, v2

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    :goto_f8
    sub-int/2addr v2, v5

    .line 1639
    :cond_f9
    :goto_f9
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 1640
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int v5, p3, v5

    goto :goto_106

    :cond_104
    move/from16 v5, p3

    .line 1643
    :goto_106
    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v5

    .line 1644
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v6

    move/from16 p1, v6

    move-object v6, v4

    move v4, v14

    move v14, v3

    move v3, v2

    move v2, v5

    move/from16 v5, v18

    const/16 v18, -0x1

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1646
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1647
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    add-int v6, p1, v2

    .line 1649
    invoke-virtual {v0, v1, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v15

    move v2, v6

    goto :goto_135

    :cond_12d
    move/from16 p3, v2

    move v15, v5

    move/from16 v19, v6

    const/16 v18, -0x1

    move v1, v15

    :goto_135
    add-int/lit8 v1, v1, 0x1

    move/from16 v14, p2

    move/from16 v15, p4

    move/from16 v6, v19

    goto/16 :goto_65

    :cond_13f
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 16

    .line 1436
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p3, p1

    .line 1443
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result p1

    sub-int p1, p3, p1

    sub-int/2addr p3, v0

    .line 1446
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr p3, v1

    .line 1448
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v1

    .line 1450
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_35

    const/16 v4, 0x50

    if-eq v3, v4, :cond_2a

    .line 1466
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result p2

    goto :goto_41

    .line 1456
    :cond_2a
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p4

    sub-int/2addr v3, p2

    iget p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int p2, v3, p2

    goto :goto_41

    .line 1461
    :cond_35
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v3

    sub-int/2addr p4, p2

    iget p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int p2, v3, p4

    :goto_41
    const/4 p4, 0x0

    :goto_42
    if-ge p4, v1, :cond_b9

    .line 1471
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v9, 0x1

    if-nez v4, :cond_51

    .line 1473
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v3

    add-int/2addr p2, v3

    goto :goto_b6

    .line 1474
    :cond_51
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_b6

    .line 1475
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1476
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1479
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1481
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v3, :cond_6d

    move v3, v2

    .line 1485
    :cond_6d
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 1486
    invoke-static {v3, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eq v3, v9, :cond_85

    const/4 v5, 0x5

    if-eq v3, v5, :cond_80

    .line 1500
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v0

    goto :goto_90

    :cond_80
    sub-int v3, p1, v7

    .line 1495
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    goto :goto_8f

    :cond_85
    sub-int v3, p3, v7

    .line 1490
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    :goto_8f
    sub-int/2addr v3, v5

    :goto_90
    move v5, v3

    .line 1504
    invoke-virtual {p0, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1505
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr p2, v3

    .line 1508
    :cond_9a
    iget v3, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr p2, v3

    .line 1509
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, p2, v3

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1511
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v5

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v8, v5

    add-int/2addr p2, v8

    .line 1513
    invoke-virtual {p0, v4, p4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr p4, v4

    goto :goto_b7

    :cond_b6
    :goto_b6
    move-object v3, p0

    :goto_b7
    add-int/2addr p4, v9

    goto :goto_42

    :cond_b9
    move-object v3, p0

    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 7

    move-object p2, p1

    move-object p1, p0

    .line 1387
    invoke-virtual/range {p1 .. p6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 41

    move-object/from16 v0, p0

    const/4 v7, 0x0

    .line 938
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 946
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    .line 948
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 949
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 954
    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    const/4 v11, 0x4

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v1, :cond_22

    .line 955
    :cond_1a
    new-array v1, v11, [I

    iput-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 956
    new-array v1, v11, [I

    iput-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 959
    :cond_22
    iget-object v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 960
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    const/4 v14, 0x3

    const/4 v15, -0x1

    .line 962
    aput v15, v12, v14

    const/16 v16, 0x2

    aput v15, v12, v16

    const/16 v17, 0x1

    aput v15, v12, v17

    aput v15, v12, v7

    .line 963
    aput v15, v13, v14

    aput v15, v13, v16

    aput v15, v13, v17

    aput v15, v13, v7

    .line 965
    iget-boolean v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 966
    iget-boolean v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v9, v3, :cond_47

    move/from16 v18, v17

    goto :goto_49

    :cond_47
    move/from16 v18, v7

    :goto_49
    const/16 v19, 0x0

    move v4, v2

    move v2, v7

    move v6, v2

    move v15, v6

    move/from16 v22, v15

    move/from16 v24, v22

    move/from16 v26, v24

    move/from16 v20, v11

    move/from16 v21, v14

    move/from16 v25, v17

    move/from16 v5, v19

    move/from16 v11, v26

    move v14, v11

    :goto_60
    move/from16 v27, v6

    const/16 v6, 0x8

    if-ge v2, v8, :cond_20c

    move/from16 v30, v1

    .line 974
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_89

    .line 977
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v1, v6

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_77
    move/from16 v3, p1

    move/from16 v1, p2

    move/from16 v35, v8

    move/from16 v33, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v13

    move/from16 v6, v27

    move/from16 v27, v4

    goto/16 :goto_1f9

    .line 981
    :cond_89
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_95

    .line 982
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_77

    .line 986
    :cond_95
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 987
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v6, v7

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 991
    :cond_a2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 993
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v32, v5, v6

    if-ne v9, v3, :cond_102

    .line 995
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v5, :cond_102

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v5, v5, v19

    if-lez v5, :cond_102

    if-eqz v18, :cond_c6

    .line 1000
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v3

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d4

    .line 1002
    :cond_c6
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1003
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_d4
    if-eqz v30, :cond_e9

    const/4 v3, 0x0

    .line 1013
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1014
    invoke-virtual {v1, v5, v5}, Landroid/view/View;->measure(II)V

    move/from16 v3, p1

    move/from16 v35, v8

    move/from16 v33, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v13

    goto :goto_f5

    :cond_e9
    move/from16 v3, p1

    move/from16 v35, v8

    move/from16 v33, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v13

    move/from16 v22, v17

    :goto_f5
    move/from16 v12, v27

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v29, -0x2

    move/from16 v27, v4

    move-object v4, v1

    move/from16 v1, p2

    goto/16 :goto_178

    .line 1021
    :cond_102
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v3, :cond_111

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v3, v3, v19

    if-lez v3, :cond_111

    const/4 v3, -0x2

    .line 1027
    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, 0x0

    goto :goto_114

    :cond_111
    const/4 v3, -0x2

    const/high16 v5, -0x80000000

    :goto_114
    cmpl-float v6, v32, v19

    if-nez v6, :cond_120

    .line 1035
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v37, v6

    move v6, v4

    move/from16 v4, v37

    goto :goto_122

    :cond_120
    move v6, v4

    const/4 v4, 0x0

    :goto_122
    const/16 v28, 0x0

    move/from16 v29, v3

    move/from16 v35, v8

    move/from16 v33, v9

    move-object/from16 v34, v12

    move/from16 v12, v27

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    move/from16 v3, p1

    move/from16 v27, v6

    move/from16 v6, v28

    move-object/from16 v28, v13

    move v13, v5

    move/from16 v5, p2

    .line 1034
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move-object v4, v1

    move v1, v5

    if-eq v13, v9, :cond_146

    .line 1039
    iput v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1042
    :cond_146
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-eqz v18, :cond_15d

    .line 1044
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v5

    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v13

    .line 1045
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v13

    add-int/2addr v9, v13

    add-int/2addr v6, v9

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_172

    .line 1047
    :cond_15d
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v9, v6, v5

    .line 1048
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v9, v13

    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v9, v13

    .line 1049
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v13

    add-int/2addr v9, v13

    .line 1048
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_172
    if-eqz v27, :cond_178

    .line 1053
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_178
    :goto_178
    if-eq v10, v8, :cond_184

    .line 1058
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_184

    move/from16 v5, v17

    move/from16 v26, v5

    goto :goto_185

    :cond_184
    const/4 v5, 0x0

    .line 1066
    :goto_185
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    .line 1067
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v6

    .line 1068
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v13

    move/from16 v8, v24

    invoke-static {v8, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v24

    if-eqz v30, :cond_1c8

    .line 1071
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v8

    const/4 v13, -0x1

    if-eq v8, v13, :cond_1c8

    .line 1075
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v13, :cond_1a9

    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_1ab

    :cond_1a9
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_1ab
    and-int/lit8 v13, v13, 0x70

    shr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, -0x2

    shr-int/lit8 v13, v13, 0x1

    move/from16 v36, v5

    .line 1080
    aget v5, v34, v13

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v34, v13

    .line 1081
    aget v5, v28, v13

    sub-int v8, v9, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v28, v13

    goto :goto_1ca

    :cond_1c8
    move/from16 v36, v5

    .line 1085
    :goto_1ca
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v25, :cond_1d8

    .line 1087
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v13, -0x1

    if-ne v8, v13, :cond_1d8

    move/from16 v25, v17

    goto :goto_1da

    :cond_1d8
    const/16 v25, 0x0

    .line 1088
    :goto_1da
    iget v7, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v7, v7, v19

    if-lez v7, :cond_1e9

    if-eqz v36, :cond_1e3

    goto :goto_1e4

    :cond_1e3
    move v6, v9

    .line 1093
    :goto_1e4
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_1f1

    :cond_1e9
    if-eqz v36, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    move v6, v9

    .line 1096
    :goto_1ed
    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1100
    :goto_1f1
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v2, v4

    move v6, v5

    move/from16 v5, v32

    :goto_1f9
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v27

    move-object/from16 v13, v28

    move/from16 v1, v30

    move/from16 v9, v33

    move-object/from16 v12, v34

    move/from16 v8, v35

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v7, 0x0

    goto/16 :goto_60

    :cond_20c
    move/from16 v3, p1

    move/from16 v30, v1

    move/from16 v35, v8

    move/from16 v33, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v13

    move/from16 v8, v24

    move/from16 v12, v27

    const/high16 v9, -0x80000000

    const/16 v29, -0x2

    move/from16 v1, p2

    move/from16 v27, v4

    .line 1103
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_238

    move/from16 v2, v35

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_23a

    .line 1104
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v4, v7

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_23a

    :cond_238
    move/from16 v2, v35

    .line 1109
    :cond_23a
    :goto_23a
    aget v4, v34, v17

    const/4 v13, -0x1

    if-ne v4, v13, :cond_250

    const/16 v31, 0x0

    aget v7, v34, v31

    if-ne v7, v13, :cond_250

    aget v7, v34, v16

    if-ne v7, v13, :cond_250

    aget v7, v34, v21

    if-eq v7, v13, :cond_24e

    goto :goto_250

    :cond_24e
    move v6, v12

    goto :goto_27d

    .line 1113
    :cond_250
    :goto_250
    aget v7, v34, v21

    const/16 v31, 0x0

    aget v13, v34, v31

    aget v6, v34, v16

    .line 1115
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1114
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1113
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1116
    aget v6, v28, v21

    aget v7, v28, v31

    aget v13, v28, v17

    aget v9, v28, v16

    .line 1118
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1117
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1116
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v4, v6

    .line 1119
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_27d
    if-eqz v27, :cond_2ee

    move/from16 v4, v33

    const/high16 v9, -0x80000000

    if-eq v4, v9, :cond_28b

    if-nez v4, :cond_288

    goto :goto_28b

    :cond_288
    move/from16 v32, v5

    goto :goto_2f2

    :cond_28b
    :goto_28b
    const/4 v7, 0x0

    .line 1124
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v7, 0x0

    :goto_28f
    if-ge v7, v2, :cond_288

    .line 1127
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2a1

    .line 1130
    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v12

    add-int/2addr v9, v12

    iput v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2ae

    .line 1134
    :cond_2a1
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2b3

    .line 1135
    invoke-virtual {v0, v9, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v7, v9

    :goto_2ae
    move/from16 v32, v5

    :goto_2b0
    move/from16 v33, v6

    goto :goto_2e7

    .line 1140
    :cond_2b3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v18, :cond_2ce

    .line 1142
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v5

    iget v5, v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v15

    iget v12, v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v12

    .line 1143
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v13, v5

    iput v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2b0

    :cond_2ce
    move/from16 v32, v5

    .line 1145
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v13, v5, v15

    move/from16 v33, v6

    .line 1146
    iget v6, v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v13, v6

    iget v6, v12, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v13, v6

    .line 1147
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v13, v6

    .line 1146
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_2e7
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v32

    move/from16 v6, v33

    goto :goto_28f

    :cond_2ee
    move/from16 v32, v5

    move/from16 v4, v33

    :goto_2f2
    move/from16 v33, v6

    .line 1153
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1158
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x0

    .line 1161
    invoke-static {v5, v3, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v6, v5

    .line 1167
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v6, v7

    if-nez v22, :cond_363

    if-eqz v6, :cond_31f

    cmpl-float v9, v32, v19

    if-lez v9, :cond_31f

    goto :goto_363

    .line 1279
    :cond_31f
    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v27, :cond_35b

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v9, :cond_35b

    const/4 v4, 0x0

    :goto_32a
    if-ge v4, v2, :cond_35b

    .line 1285
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_358

    .line 1287
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v13, 0x8

    if-ne v11, v13, :cond_33b

    goto :goto_358

    .line 1292
    :cond_33b
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1294
    iget v11, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v11, v11, v19

    if-lez v11, :cond_358

    const/high16 v11, 0x40000000    # 2.0f

    .line 1297
    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1298
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1296
    invoke-virtual {v9, v12, v13}, Landroid/view/View;->measure(II)V

    :cond_358
    :goto_358
    add-int/lit8 v4, v4, 0x1

    goto :goto_32a

    :cond_35b
    move/from16 v27, v5

    move/from16 v24, v8

    const/high16 v22, -0x1000000

    goto/16 :goto_4e8

    .line 1169
    :cond_363
    :goto_363
    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v12, v9, v19

    if-lez v12, :cond_36b

    move/from16 v32, v9

    :cond_36b
    const/16 v23, -0x1

    .line 1171
    aput v23, v34, v21

    aput v23, v34, v16

    aput v23, v34, v17

    const/4 v9, 0x0

    aput v23, v34, v9

    .line 1172
    aput v23, v28, v21

    aput v23, v28, v16

    aput v23, v28, v17

    aput v23, v28, v9

    .line 1175
    iput v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v9, v8

    const/4 v8, -0x1

    const/4 v12, 0x0

    :goto_383
    if-ge v12, v2, :cond_48d

    .line 1178
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_483

    .line 1180
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_395

    goto/16 :goto_483

    .line 1185
    :cond_395
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/high16 v22, -0x1000000

    .line 1187
    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v24, v7, v19

    if-lez v24, :cond_3f5

    int-to-float v15, v6

    mul-float/2addr v15, v7

    div-float v15, v15, v32

    float-to-int v15, v15

    sub-float v32, v32, v7

    sub-int/2addr v6, v15

    .line 1196
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v27

    add-int v7, v7, v27

    move/from16 v27, v5

    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v7, v5

    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1194
    invoke-static {v1, v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v5

    .line 1201
    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v7, :cond_3d8

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v7, :cond_3cc

    goto :goto_3da

    :cond_3cc
    if-lez v15, :cond_3cf

    goto :goto_3d0

    :cond_3cf
    const/4 v15, 0x0

    .line 1214
    :goto_3d0
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v13, v15, v5}, Landroid/view/View;->measure(II)V

    goto :goto_3ea

    :cond_3d8
    const/high16 v7, 0x40000000    # 2.0f

    .line 1204
    :goto_3da
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    add-int v15, v33, v15

    if-gez v15, :cond_3e3

    const/4 v15, 0x0

    .line 1210
    :cond_3e3
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1209
    invoke-virtual {v13, v15, v5}, Landroid/view/View;->measure(II)V

    .line 1221
    :goto_3ea
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    and-int v5, v5, v22

    .line 1220
    invoke-static {v9, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    goto :goto_3f7

    :cond_3f5
    move/from16 v27, v5

    :goto_3f7
    if-eqz v18, :cond_40e

    .line 1225
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v15

    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v15

    .line 1226
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v15

    add-int/2addr v7, v15

    add-int/2addr v5, v7

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_426

    .line 1228
    :cond_40e
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1229
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v15

    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v15

    .line 1230
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v15

    add-int/2addr v7, v15

    .line 1229
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_426
    const/high16 v7, 0x40000000    # 2.0f

    if-eq v10, v7, :cond_432

    .line 1233
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_432

    move/from16 v5, v17

    goto :goto_433

    :cond_432
    const/4 v5, 0x0

    .line 1236
    :goto_433
    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v15, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v15

    .line 1237
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v7

    .line 1238
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v5, :cond_444

    goto :goto_445

    :cond_444
    move v7, v15

    .line 1239
    :goto_445
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v25, :cond_453

    .line 1242
    iget v7, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_454

    move/from16 v7, v17

    goto :goto_455

    :cond_453
    const/4 v11, -0x1

    :cond_454
    const/4 v7, 0x0

    :goto_455
    if-eqz v30, :cond_47f

    .line 1245
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v13

    if-eq v13, v11, :cond_47f

    .line 1248
    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v11, :cond_464

    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_466

    :cond_464
    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_466
    and-int/lit8 v11, v11, 0x70

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, -0x2

    shr-int/lit8 v11, v11, 0x1

    .line 1253
    aget v14, v34, v11

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v34, v11

    .line 1254
    aget v14, v28, v11

    sub-int/2addr v15, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    aput v13, v28, v11

    :cond_47f
    move v11, v5

    move/from16 v25, v7

    goto :goto_487

    :cond_483
    :goto_483
    move/from16 v27, v5

    const/high16 v22, -0x1000000

    :goto_487
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v27

    goto/16 :goto_383

    :cond_48d
    move/from16 v27, v5

    const/high16 v22, -0x1000000

    .line 1261
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1266
    aget v4, v34, v17

    const/4 v13, -0x1

    if-ne v4, v13, :cond_4b5

    const/16 v31, 0x0

    aget v5, v34, v31

    if-ne v5, v13, :cond_4b5

    aget v5, v34, v16

    if-ne v5, v13, :cond_4b5

    aget v5, v34, v21

    if-eq v5, v13, :cond_4b3

    goto :goto_4b5

    :cond_4b3
    move v6, v8

    goto :goto_4e3

    .line 1270
    :cond_4b5
    :goto_4b5
    aget v5, v34, v21

    const/16 v31, 0x0

    aget v6, v34, v31

    aget v7, v34, v16

    .line 1272
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1271
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1270
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1273
    aget v5, v28, v21

    aget v6, v28, v31

    aget v7, v28, v17

    aget v12, v28, v16

    .line 1275
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1274
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1273
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 1276
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    :goto_4e3
    move/from16 v33, v6

    move/from16 v24, v9

    move v6, v11

    :goto_4e8
    if-nez v25, :cond_4ef

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v10, v7, :cond_4ef

    goto :goto_4f1

    :cond_4ef
    move/from16 v6, v33

    .line 1309
    :goto_4f1
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v6, v4

    .line 1312
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    and-int v5, v24, v22

    or-int v5, v27, v5

    shl-int/lit8 v6, v24, 0x10

    .line 1315
    invoke-static {v4, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 1314
    invoke-virtual {v0, v5, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v26, :cond_515

    .line 1319
    invoke-direct {v0, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_515
    return-void
.end method

.method measureNullChild(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method measureVertical(II)V
    .registers 30

    move-object/from16 v0, p0

    const/4 v7, 0x0

    .line 605
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 613
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    .line 615
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 616
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 621
    iget v11, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 622
    iget-boolean v12, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    move v2, v7

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v15, v6

    move/from16 v16, v15

    move/from16 v18, v16

    const/4 v1, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x1

    :goto_24
    const/16 v20, 0x0

    const/16 v7, 0x8

    const/high16 v14, 0x40000000    # 2.0f

    if-ge v2, v8, :cond_192

    move/from16 v21, v1

    .line 628
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 631
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v7

    add-int/2addr v1, v7

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_3d
    move/from16 v22, v4

    move/from16 v26, v8

    move/from16 v24, v10

    move/from16 v25, v12

    move/from16 v1, v21

    move v4, v3

    move v10, v5

    move/from16 v3, p1

    move/from16 v5, p2

    goto/16 :goto_183

    .line 635
    :cond_4f
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v7, :cond_5b

    .line 636
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_3d

    .line 640
    :cond_5b
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 641
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v7, v13

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 644
    :cond_68
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 646
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v13, v21, v13

    if-ne v10, v14, :cond_a6

    .line 648
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v14, :cond_a6

    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v14, v14, v20

    if-lez v14, :cond_a6

    .line 652
    iget v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move-object/from16 v24, v1

    .line 653
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v14

    move/from16 v16, v1

    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v1, v16, v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v26, v8

    move/from16 v25, v12

    move/from16 v21, v13

    move/from16 v16, v19

    move-object/from16 v1, v24

    move v12, v3

    move v8, v6

    move/from16 v24, v10

    move/from16 v3, p1

    move v10, v5

    move/from16 v5, p2

    goto/16 :goto_110

    :cond_a6
    move-object/from16 v24, v1

    .line 658
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v1, :cond_b7

    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_b7

    const/4 v1, -0x2

    .line 664
    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v14, 0x0

    goto :goto_b9

    :cond_b7
    const/high16 v14, -0x80000000

    :goto_b9
    cmpl-float v1, v13, v20

    if-nez v1, :cond_c5

    .line 673
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v21, v6

    move v6, v1

    move/from16 v1, v21

    goto :goto_c7

    :cond_c5
    move v1, v6

    const/4 v6, 0x0

    :goto_c7
    move/from16 v21, v4

    const/4 v4, 0x0

    move/from16 v25, v21

    move/from16 v21, v13

    move/from16 v13, v25

    move/from16 v26, v8

    move/from16 v25, v12

    move v8, v1

    move v12, v3

    move-object/from16 v1, v24

    move/from16 v3, p1

    move/from16 v24, v10

    move v10, v5

    move/from16 v5, p2

    .line 671
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v4, -0x80000000

    if-eq v14, v4, :cond_e8

    .line 676
    iput v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 679
    :cond_e8
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 680
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v14, v6, v4

    move/from16 v22, v14

    .line 681
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v14, v22, v14

    move/from16 v22, v14

    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v14, v22, v14

    .line 682
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v22

    add-int v14, v14, v22

    .line 681
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-eqz v25, :cond_10f

    .line 685
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_110

    :cond_10f
    move v4, v13

    :goto_110
    if-ltz v11, :cond_11a

    add-int/lit8 v6, v2, 0x1

    if-ne v11, v6, :cond_11a

    .line 694
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_11a
    if-ge v2, v11, :cond_12b

    .line 700
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v20

    if-gtz v6, :cond_123

    goto :goto_12b

    .line 701
    :cond_123
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12b
    :goto_12b
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v9, v6, :cond_139

    .line 708
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v13, -0x1

    if-ne v6, v13, :cond_139

    move/from16 v6, v19

    move/from16 v18, v6

    goto :goto_13a

    :cond_139
    const/4 v6, 0x0

    .line 717
    :goto_13a
    iget v13, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .line 718
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    .line 719
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v22, v4

    .line 721
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    .line 720
    invoke-static {v8, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    if-eqz v17, :cond_15e

    .line 723
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v23, v4

    const/4 v4, -0x1

    if-ne v8, v4, :cond_160

    move/from16 v17, v19

    goto :goto_162

    :cond_15e
    move/from16 v23, v4

    :cond_160
    const/16 v17, 0x0

    .line 724
    :goto_162
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v4, v4, v20

    if-lez v4, :cond_171

    if-eqz v6, :cond_16b

    goto :goto_16c

    :cond_16b
    move v13, v14

    .line 729
    :goto_16c
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_17a

    :cond_171
    if-eqz v6, :cond_174

    goto :goto_175

    :cond_174
    move v13, v14

    .line 732
    :goto_175
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v4, v12

    .line 736
    :goto_17a
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v2, v1

    move/from16 v1, v21

    move/from16 v6, v23

    :goto_183
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v10

    move/from16 v4, v22

    move/from16 v10, v24

    move/from16 v12, v25

    move/from16 v8, v26

    const/4 v7, 0x0

    goto/16 :goto_24

    :cond_192
    move/from16 v21, v1

    move v13, v4

    move/from16 v26, v8

    move/from16 v24, v10

    move/from16 v25, v12

    move v12, v3

    move v10, v5

    move v8, v6

    move/from16 v3, p1

    move/from16 v5, p2

    .line 739
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_1b6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 740
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1b8

    :cond_1b6
    move/from16 v1, v26

    :cond_1b8
    :goto_1b8
    move/from16 v2, v24

    if-eqz v25, :cond_207

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_1c2

    if-nez v2, :cond_207

    :cond_1c2
    const/4 v4, 0x0

    .line 745
    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v4, 0x0

    :goto_1c6
    if-ge v4, v1, :cond_207

    .line 748
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1d8

    .line 751
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_202

    .line 755
    :cond_1d8
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v7, :cond_1e4

    .line 756
    invoke-virtual {v0, v6, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_202

    .line 761
    :cond_1e4
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 763
    iget v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v22, v14, v13

    .line 764
    iget v7, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v22, v22, v7

    iget v7, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v22, v22, v7

    .line 765
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v22, v6

    .line 764
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_202
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x8

    goto :goto_1c6

    .line 770
    :cond_207
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 775
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, 0x0

    .line 778
    invoke-static {v4, v5, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v6, 0xffffff

    and-int/2addr v6, v4

    .line 784
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v6, v7

    if-nez v16, :cond_26e

    if-eqz v6, :cond_232

    cmpl-float v7, v21, v20

    if-lez v7, :cond_232

    goto :goto_26e

    .line 857
    :cond_232
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v25, :cond_34c

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v2, v7, :cond_34c

    const/4 v7, 0x0

    :goto_23d
    if-ge v7, v1, :cond_34c

    .line 865
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_26b

    .line 867
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_24e

    goto :goto_26b

    .line 872
    :cond_24e
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 874
    iget v11, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v11, v11, v20

    if-lez v11, :cond_26b

    .line 877
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 879
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 876
    invoke-virtual {v2, v11, v14}, Landroid/view/View;->measure(II)V

    :cond_26b
    :goto_26b
    add-int/lit8 v7, v7, 0x1

    goto :goto_23d

    .line 786
    :cond_26e
    :goto_26e
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v11, v7, v20

    if-lez v11, :cond_276

    move/from16 v21, v7

    :cond_276
    const/4 v7, 0x0

    .line 788
    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v11, v6

    move v6, v7

    :goto_27b
    if-ge v6, v1, :cond_33d

    .line 791
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 793
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_28f

    move/from16 v22, v2

    move/from16 v16, v6

    goto/16 :goto_336

    .line 797
    :cond_28f
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 799
    iget v7, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v16, v7, v20

    if-lez v16, :cond_2ed

    int-to-float v14, v11

    mul-float/2addr v14, v7

    div-float v14, v14, v21

    float-to-int v14, v14

    sub-float v21, v21, v7

    sub-int/2addr v11, v14

    .line 807
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v16

    add-int v7, v7, v16

    move/from16 v16, v6

    iget v6, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v7, v6

    iget v6, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v7, v6

    iget v6, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 806
    invoke-static {v3, v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v6

    .line 812
    iget v7, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v7, :cond_2d0

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v2, v7, :cond_2c4

    goto :goto_2d2

    :cond_2c4
    if-lez v14, :cond_2c7

    goto :goto_2c8

    :cond_2c7
    const/4 v14, 0x0

    .line 826
    :goto_2c8
    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 825
    invoke-virtual {v12, v6, v14}, Landroid/view/View;->measure(II)V

    goto :goto_2e2

    :cond_2d0
    const/high16 v7, 0x40000000    # 2.0f

    .line 815
    :goto_2d2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v14, v22, v14

    if-gez v14, :cond_2db

    const/4 v14, 0x0

    .line 821
    :cond_2db
    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 820
    invoke-virtual {v12, v6, v14}, Landroid/view/View;->measure(II)V

    .line 832
    :goto_2e2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    and-int/lit16 v6, v6, -0x100

    .line 831
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    goto :goto_2ef

    :cond_2ed
    move/from16 v16, v6

    .line 836
    :goto_2ef
    iget v6, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v7, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 837
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 838
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v9, v14, :cond_309

    .line 840
    iget v14, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v22, v2

    const/4 v2, -0x1

    if-ne v14, v2, :cond_30c

    goto :goto_30d

    :cond_309
    move/from16 v22, v2

    const/4 v2, -0x1

    :cond_30c
    move v6, v7

    .line 843
    :goto_30d
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v17, :cond_31a

    .line 846
    iget v7, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v7, v2, :cond_31a

    move/from16 v7, v19

    goto :goto_31b

    :cond_31a
    const/4 v7, 0x0

    .line 848
    :goto_31b
    iget v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 849
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    iget v2, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v15, v2

    iget v2, v13, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v2

    .line 850
    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v15, v2

    .line 849
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v15, v6

    move/from16 v17, v7

    :goto_336
    add-int/lit8 v6, v16, 0x1

    move/from16 v2, v22

    const/4 v7, 0x0

    goto/16 :goto_27b

    .line 854
    :cond_33d
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v6, v15

    :cond_34c
    if-nez v17, :cond_353

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v9, v7, :cond_353

    move v10, v6

    .line 890
    :cond_353
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v10, v2

    .line 893
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 895
    invoke-static {v2, v3, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v18, :cond_371

    .line 899
    invoke-direct {v0, v1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_371
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 293
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 297
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 298
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    return-void

    .line 300
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1767
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1772
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1773
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1416
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1417
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    return-void

    .line 1419
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 560
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 561
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    return-void

    .line 563
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    .line 402
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 4

    if-ltz p1, :cond_b

    .line 498
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 502
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return-void

    .line 499
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "base aligned child index out of range (0, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 242
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    .line 245
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 247
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 250
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 251
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    .line 253
    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 254
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2

    .line 267
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .line 1689
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    .line 1698
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1699
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1715
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_13

    const v0, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1716
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1717
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_13
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    .line 428
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 1664
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1665
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1666
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    .line 205
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 206
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 208
    :cond_7
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4

    and-int/lit8 p1, p1, 0x70

    .line 1723
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    if-eq v1, p1, :cond_10

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    .line 1724
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1725
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    const/4 v0, 0x0

    .line 555
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
