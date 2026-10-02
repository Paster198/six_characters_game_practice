.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;
.super Ljava/lang/Object;
.source "Cocos2dxEditBoxHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->createEditBox(IIIIF)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$index:I

.field final synthetic val$left:I

.field final synthetic val$scaleX:F

.field final synthetic val$top:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(FIIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$left:I

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$top:I

    iput p5, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$width:I

    iput p6, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 94
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBox;

    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFocusable(Z)V

    .line 96
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x5

    .line 97
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputFlag(I)V

    const/4 v1, 0x6

    .line 98
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setInputMode(I)V

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setReturnType(I)V

    const v2, -0x777778

    .line 100
    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setHintTextColor(I)V

    const/4 v2, 0x4

    .line 101
    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setVisibility(I)V

    .line 102
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setBackgroundColor(I)V

    const/4 v2, -0x1

    .line 103
    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setTextColor(I)V

    .line 104
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setSingleLine()V

    .line 105
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOpenGLViewScaleX(F)V

    .line 106
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$000()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 108
    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    int-to-float v3, v3

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    .line 109
    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->convertToSP(F)I

    move-result v3

    .line 110
    div-int/lit8 v3, v3, 0x2

    .line 112
    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$scaleX:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    .line 113
    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->convertToSP(F)I

    move-result v2

    .line 115
    invoke-virtual {v0, v2, v3, v1, v3}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setPadding(IIII)V

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 123
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 124
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 125
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$height:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x33

    .line 126
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$100()Lorg/cocos2dx/lib/ResizeLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/cocos2dx/lib/ResizeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;

    invoke-direct {v1, p0, v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;Lorg/cocos2dx/lib/Cocos2dxEditBox;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 206
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 216
    # getter for: Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->mEditBoxArray:Landroid/util/SparseArray;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->access$400()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
