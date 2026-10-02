.class Lim/delight/android/commons/ListEditText$1;
.super Ljava/lang/Object;
.source "ListEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 83
    iput-object p1, p0, Lim/delight/android/commons/ListEditText$1;->this$0:Lim/delight/android/commons/ListEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 87
    iget-object p1, p0, Lim/delight/android/commons/ListEditText$1;->this$0:Lim/delight/android/commons/ListEditText;

    invoke-virtual {p1}, Lim/delight/android/commons/ListEditText;->openSelection()V

    return-void
.end method
