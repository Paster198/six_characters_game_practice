.class Lim/delight/android/commons/ListEditText$3;
.super Ljava/lang/Object;
.source "ListEditText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/delight/android/commons/ListEditText;->openSelection()V
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

    .line 162
    iput-object p1, p0, Lim/delight/android/commons/ListEditText$3;->this$0:Lim/delight/android/commons/ListEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 166
    iget-object p1, p0, Lim/delight/android/commons/ListEditText$3;->this$0:Lim/delight/android/commons/ListEditText;

    iget-object p1, p1, Lim/delight/android/commons/ListEditText;->mValuesMachine:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_23

    .line 167
    iget-object p1, p0, Lim/delight/android/commons/ListEditText$3;->this$0:Lim/delight/android/commons/ListEditText;

    iget-object v0, p1, Lim/delight/android/commons/ListEditText;->mValuesMachine:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lim/delight/android/commons/ListEditText;->setValue(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lim/delight/android/commons/ListEditText$3;->this$0:Lim/delight/android/commons/ListEditText;

    iget-object p1, p1, Lim/delight/android/commons/ListEditText;->mCallback:Lim/delight/android/commons/ListEditText$OnChangeListener;

    if-eqz p1, :cond_23

    .line 169
    iget-object p1, p0, Lim/delight/android/commons/ListEditText$3;->this$0:Lim/delight/android/commons/ListEditText;

    iget-object p1, p1, Lim/delight/android/commons/ListEditText;->mCallback:Lim/delight/android/commons/ListEditText$OnChangeListener;

    iget-object v0, p0, Lim/delight/android/commons/ListEditText$3;->this$0:Lim/delight/android/commons/ListEditText;

    iget-object v0, v0, Lim/delight/android/commons/ListEditText;->mValuesMachine:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-interface {p1, p2}, Lim/delight/android/commons/ListEditText$OnChangeListener;->onValueChanged(Ljava/lang/String;)V

    :cond_23
    return-void
.end method
