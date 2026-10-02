.class public final Lim/delight/android/commons/Adapters;
.super Ljava/lang/Object;
.source "Adapters.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Landroid/widget/ArrayAdapter;Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ArrayAdapter<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public static setItems(Landroid/widget/ArrayAdapter;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ArrayAdapter<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 44
    invoke-static {p0, p1}, Lim/delight/android/commons/Adapters;->addAll(Landroid/widget/ArrayAdapter;Ljava/util/Collection;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
