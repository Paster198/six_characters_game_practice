.class public final Landroidx/core/widget/CheckedTextViewCompat;
.super Ljava/lang/Object;
.source "CheckedTextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckMarkDrawable(Landroid/widget/CheckedTextView;)Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "textView.getCheckMarkDrawable()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getCheckMarkTintList(Landroid/widget/CheckedTextView;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 68
    invoke-static {p0}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->getCheckMarkTintList(Landroid/widget/CheckedTextView;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getCheckMarkTintMode(Landroid/widget/CheckedTextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 104
    invoke-static {p0}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->getCheckMarkTintMode(Landroid/widget/CheckedTextView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 54
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintList(Landroid/widget/CheckedTextView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 90
    invoke-static {p0, p1}, Landroidx/core/widget/CheckedTextViewCompat$Api21Impl;->setCheckMarkTintMode(Landroid/widget/CheckedTextView;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
