.class Lim/delight/android/commons/ListEditText$2;
.super Ljava/lang/Object;
.source "ListEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/commons/ListEditText;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/delight/android/commons/ListEditText;


# direct methods
.method constructor <init>(Lim/delight/android/commons/ListEditText;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lim/delight/android/commons/ListEditText$2;->this$0:Lim/delight/android/commons/ListEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_7

    .line 99
    iget-object p1, p0, Lim/delight/android/commons/ListEditText$2;->this$0:Lim/delight/android/commons/ListEditText;

    invoke-virtual {p1}, Lim/delight/android/commons/ListEditText;->openSelection()V

    :cond_7
    return-void
.end method
