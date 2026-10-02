.class public final Lim/delight/android/commons/ListEditText;
.super Landroid/widget/EditText;
.source "ListEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/delight/android/commons/ListEditText$OnChangeListener;
    }
.end annotation


# instance fields
.field protected mCallback:Lim/delight/android/commons/ListEditText$OnChangeListener;

.field protected mCancelRes:I

.field protected mContext:Landroid/content/Context;

.field protected mShowInternalValues:Z

.field protected mTitleRes:I

.field protected mValue:Ljava/lang/String;

.field protected mValuesHuman:[Ljava/lang/String;

.field protected mValuesMachine:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lim/delight/android/commons/ListEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {p0}, Lim/delight/android/commons/ListEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-virtual {p0}, Lim/delight/android/commons/ListEditText;->initView()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lim/delight/android/commons/ListEditText;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;II)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 116
    invoke-virtual/range {v0 .. v6}, Lim/delight/android/commons/ListEditText;->init(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;IIZ)V

    return-void
.end method

.method public init(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;IIZ)V
    .registers 9

    if-eqz p2, :cond_3f

    if-eqz p3, :cond_3f

    .line 133
    array-length v0, p2

    if-eqz v0, :cond_37

    array-length v0, p3

    if-eqz v0, :cond_37

    .line 136
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2f

    if-lez p4, :cond_27

    if-eqz p1, :cond_1f

    .line 146
    iput-object p1, p0, Lim/delight/android/commons/ListEditText;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lim/delight/android/commons/ListEditText;->mValuesHuman:[Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lim/delight/android/commons/ListEditText;->mValuesMachine:[Ljava/lang/String;

    .line 149
    iput p4, p0, Lim/delight/android/commons/ListEditText;->mTitleRes:I

    .line 150
    iput p5, p0, Lim/delight/android/commons/ListEditText;->mCancelRes:I

    .line 151
    iput-boolean p6, p0, Lim/delight/android/commons/ListEditText;->mShowInternalValues:Z

    return-void

    .line 143
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "You must provide a valid context reference"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_27
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "You must pass a valid string resource ID for `titleRes`"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Sizes of `valuesHuman` and `valuesMachine` must match"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Neither `valuesHuman` nor `valuesMachine` may be empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_3f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Neither `valuesHuman` nor `valuesMachine` may be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected initView()V
    .registers 4

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lim/delight/android/commons/ListEditText;->mValue:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lim/delight/android/commons/ListEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lim/delight/android/commons/ListEditText;->setInputType(I)V

    .line 83
    new-instance v0, Lim/delight/android/commons/ListEditText$1;

    invoke-direct {v0, p0}, Lim/delight/android/commons/ListEditText$1;-><init>(Lim/delight/android/commons/ListEditText;)V

    invoke-virtual {p0, v0}, Lim/delight/android/commons/ListEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lim/delight/android/commons/ListEditText;->clearFocus()V

    .line 94
    new-instance v0, Lim/delight/android/commons/ListEditText$2;

    invoke-direct {v0, p0}, Lim/delight/android/commons/ListEditText$2;-><init>(Lim/delight/android/commons/ListEditText;)V

    invoke-virtual {p0, v0}, Lim/delight/android/commons/ListEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected openSelection()V
    .registers 4

    .line 156
    iget-object v0, p0, Lim/delight/android/commons/ListEditText;->mValuesHuman:[Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lim/delight/android/commons/ListEditText;->mValuesMachine:[Ljava/lang/String;

    if-eqz v0, :cond_34

    iget v0, p0, Lim/delight/android/commons/ListEditText;->mTitleRes:I

    if-eqz v0, :cond_34

    iget v0, p0, Lim/delight/android/commons/ListEditText;->mCancelRes:I

    if-eqz v0, :cond_34

    iget-object v0, p0, Lim/delight/android/commons/ListEditText;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_34

    .line 160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lim/delight/android/commons/ListEditText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    iget v1, p0, Lim/delight/android/commons/ListEditText;->mTitleRes:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v1, p0, Lim/delight/android/commons/ListEditText;->mValuesHuman:[Ljava/lang/String;

    new-instance v2, Lim/delight/android/commons/ListEditText$3;

    invoke-direct {v2, p0}, Lim/delight/android/commons/ListEditText$3;-><init>(Lim/delight/android/commons/ListEditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    iget v1, p0, Lim/delight/android/commons/ListEditText;->mCancelRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 157
    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call `setData` on this view before it can be used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Lim/delight/android/commons/ListEditText$OnChangeListener;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lim/delight/android/commons/ListEditText;->mCallback:Lim/delight/android/commons/ListEditText$OnChangeListener;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    .line 195
    iget-object v0, p0, Lim/delight/android/commons/ListEditText;->mValuesMachine:[Ljava/lang/String;

    invoke-static {v0, p1}, Lim/delight/android/commons/Collections;->arrayIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 197
    iput-object p1, p0, Lim/delight/android/commons/ListEditText;->mValue:Ljava/lang/String;

    .line 199
    iget-boolean v1, p0, Lim/delight/android/commons/ListEditText;->mShowInternalValues:Z

    if-eqz v1, :cond_12

    .line 200
    invoke-virtual {p0, p1}, Lim/delight/android/commons/ListEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 203
    :cond_12
    iget-object p1, p0, Lim/delight/android/commons/ListEditText;->mValuesHuman:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lim/delight/android/commons/ListEditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 207
    :cond_1a
    const-string p1, ""

    iput-object p1, p0, Lim/delight/android/commons/ListEditText;->mValue:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, p1}, Lim/delight/android/commons/ListEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
