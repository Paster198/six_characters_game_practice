.class public final Lim/delight/android/commons/UI;
.super Ljava/lang/Object;
.source "UI.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDialog(Landroid/content/DialogInterface;)V
    .registers 2

    if-eqz p0, :cond_16

    .line 196
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_13

    .line 197
    move-object v0, p0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 198
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 202
    :cond_13
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_16
    return-void
.end method

.method public static forceOverflowMenu(Landroid/content/Context;)V
    .registers 3

    .line 178
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    .line 179
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "sHasPermanentMenuKey"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-void
.end method

.method public static getColorBrightness(I)D
    .registers 4

    .line 75
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 76
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 77
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v0, v0

    const v2, 0x3e991687    # 0.299f

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    int-to-float v0, v1

    const v1, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    int-to-float p0, p0

    const v0, 0x3de978d5    # 0.114f

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v2, v0

    float-to-double v0, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getRandomColor()I
    .registers 4

    .line 63
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static getTextColor(I)I
    .registers 5

    .line 54
    invoke-static {p0}, Lim/delight/android/commons/UI;->getColorBrightness(I)D

    move-result-wide v0

    const-wide v2, 0x405f400000000000L    # 125.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_10

    const/high16 p0, -0x1000000

    return p0

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static getViewScreenshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/high16 v1, 0x100000

    .line 158
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v0
.end method

.method public static insertTextAtCursorPosition(Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 10

    .line 266
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 268
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 270
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 274
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-void
.end method

.method public static putCursorToEnd(Landroid/widget/EditText;)V
    .registers 2

    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static replaceTextsWithImages(Landroid/content/Context;Landroid/widget/EditText;[Ljava/lang/String;[I)V
    .registers 15

    .line 286
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_82

    .line 290
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 291
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    .line 292
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 294
    :goto_1a
    array-length v4, p2

    if-ge v3, v4, :cond_79

    .line 295
    aget-object v4, p2, v3

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 299
    :cond_2b
    :goto_2b
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 301
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const-class v7, Landroid/text/style/ImageSpan;

    invoke-interface {v1, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ImageSpan;

    array-length v6, v5

    move v7, v2

    :goto_43
    if-ge v7, v6, :cond_61

    aget-object v8, v5, v7

    .line 302
    invoke-interface {v1, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    if-lt v9, v10, :cond_2b

    invoke-interface {v1, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    if-gt v9, v10, :cond_2b

    .line 303
    invoke-interface {v1, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 312
    :cond_61
    new-instance v5, Landroid/text/style/ImageSpan;

    aget v6, p3, v3

    invoke-direct {v5, p0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v8, 0x21

    invoke-interface {v1, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2b

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 317
    :cond_79
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-ltz v0, :cond_81

    .line 320
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_81
    return-void

    .line 287
    :cond_82
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Number of search texts must match the number of replacement images"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static restartActivity(Landroid/app/Activity;)V
    .registers 3

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public static scrollToBottom(Landroid/widget/ListView;)V
    .registers 2

    .line 137
    new-instance v0, Lim/delight/android/commons/UI$1;

    invoke-direct {v0, p0}, Lim/delight/android/commons/UI$1;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setDatePickerYearVisible(Landroid/widget/DatePicker;Z)V
    .registers 9

    .line 332
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 334
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_3d

    aget-object v4, v0, v3

    .line 335
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mYearPicker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mYearSpinner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    :cond_27
    const/4 v5, 0x1

    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 338
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 339
    check-cast v4, Landroid/view/View;

    if-eqz p1, :cond_35

    move v5, v2

    goto :goto_37

    :cond_35
    const/16 v5, 0x8

    :goto_37
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3d

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catch_3d
    :cond_3d
    return-void
.end method

.method public static setKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 6

    if-eqz p2, :cond_6

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_9

    .line 234
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 237
    :goto_9
    :try_start_9
    new-instance v0, Lim/delight/android/commons/UI$2;

    invoke-direct {v0, p0, p2, p1}, Lim/delight/android/commons/UI$2;-><init>(Landroid/content/Context;ZLandroid/view/View;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

.method public static setMaxLength(Landroid/widget/EditText;I)V
    .registers 3

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, v0}, Lim/delight/android/commons/UI;->setMaxLength(Landroid/widget/EditText;I[Landroid/text/InputFilter;)V

    return-void
.end method

.method public static setMaxLength(Landroid/widget/EditText;I[Landroid/text/InputFilter;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_e

    .line 103
    new-array p2, v1, [Landroid/text/InputFilter;

    .line 104
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, p2, v0

    goto :goto_27

    .line 107
    :cond_e
    array-length v2, p2

    add-int/2addr v2, v1

    new-array v1, v2, [Landroid/text/InputFilter;

    :goto_12
    if-ge v0, v2, :cond_26

    .line 110
    array-length v3, p2

    if-ge v0, v3, :cond_1c

    .line 111
    aget-object v3, p2, v0

    aput-object v3, v1, v0

    goto :goto_23

    .line 114
    :cond_1c
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v0

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_26
    move-object p2, v1

    .line 119
    :goto_27
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static setReadOnly(Landroid/widget/TextView;Z)V
    .registers 3

    xor-int/lit8 v0, p1, 0x1

    .line 353
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 354
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 355
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 356
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLongClickable(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 357
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return-void
.end method
