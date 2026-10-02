.class final Lim/delight/android/commons/UI$2;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/commons/UI;->setKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLandroid/view/View;)V
    .registers 4

    .line 237
    iput-object p1, p0, Lim/delight/android/commons/UI$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lim/delight/android/commons/UI$2;->val$visible:Z

    iput-object p3, p0, Lim/delight/android/commons/UI$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 241
    iget-object v0, p0, Lim/delight/android/commons/UI$2;->val$context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_20

    .line 244
    iget-boolean v1, p0, Lim/delight/android/commons/UI$2;->val$visible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 245
    iget-object v1, p0, Lim/delight/android/commons/UI$2;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    .line 248
    :cond_17
    iget-object v1, p0, Lim/delight/android/commons/UI$2;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_20
    return-void
.end method
