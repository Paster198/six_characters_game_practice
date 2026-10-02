.class Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;
.super Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl;
.source "SoftwareKeyboardControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/SoftwareKeyboardControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl;-><init>()V

    .line 103
    iput-object p1, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$show$0(Landroid/view/View;)V
    .registers 3

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method hide()V
    .registers 4

    .line 143
    iget-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1a
    return-void
.end method

.method show()V
    .registers 3

    .line 109
    iget-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_3d

    .line 115
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_1b

    .line 121
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_1e

    .line 119
    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_1e
    if-nez v0, :cond_2d

    .line 126
    iget-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_2d
    if-eqz v0, :cond_3d

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 131
    new-instance v1, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    :goto_3d
    return-void
.end method
