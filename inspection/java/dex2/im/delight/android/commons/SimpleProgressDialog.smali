.class public final Lim/delight/android/commons/SimpleProgressDialog;
.super Landroid/app/Dialog;
.source "SimpleProgressDialog.java"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x103000b

    .line 39
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    invoke-virtual {p0}, Lim/delight/android/commons/SimpleProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public static show(Landroid/content/Context;)Lim/delight/android/commons/SimpleProgressDialog;
    .registers 4

    .line 51
    new-instance v0, Lim/delight/android/commons/SimpleProgressDialog;

    invoke-direct {v0, p0}, Lim/delight/android/commons/SimpleProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lim/delight/android/commons/SimpleProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2}, Lim/delight/android/commons/SimpleProgressDialog;->setCancelable(Z)V

    .line 55
    invoke-virtual {v0, v1}, Lim/delight/android/commons/SimpleProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 57
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p0}, Lim/delight/android/commons/SimpleProgressDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v0}, Lim/delight/android/commons/SimpleProgressDialog;->show()V

    return-object v0
.end method
