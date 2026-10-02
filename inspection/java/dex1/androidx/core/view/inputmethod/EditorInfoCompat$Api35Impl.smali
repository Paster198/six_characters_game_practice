.class Landroidx/core/view/inputmethod/EditorInfoCompat$Api35Impl;
.super Ljava/lang/Object;
.source "EditorInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/inputmethod/EditorInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api35Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isStylusHandwritingEnabled(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 1

    .line 610
    invoke-virtual {p0}, Landroid/view/inputmethod/EditorInfo;->isStylusHandwritingEnabled()Z

    move-result p0

    return p0
.end method

.method static setStylusHandwritingEnabled(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 2

    .line 606
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/EditorInfo;->setStylusHandwritingEnabled(Z)V

    return-void
.end method
