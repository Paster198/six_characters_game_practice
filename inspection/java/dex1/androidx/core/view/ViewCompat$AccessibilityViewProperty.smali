.class abstract Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AccessibilityViewProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContentChangeType:I

.field private final mFrameworkMinimumSdk:I

.field private final mTagKey:I

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4886
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 4891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4892
    iput p1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    .line 4893
    iput-object p2, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mType:Ljava/lang/Class;

    .line 4894
    iput p3, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mContentChangeType:I

    .line 4895
    iput p4, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    return-void
.end method

.method private frameworkAvailable()Z
    .registers 3

    .line 4926
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 4939
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_d

    :cond_c
    move p1, v1

    :goto_d
    if-eqz p2, :cond_17

    .line 4940
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_17

    move p2, v0

    goto :goto_18

    :cond_17
    move p2, v1

    :goto_18
    if-ne p1, p2, :cond_1b

    return v0

    :cond_1b
    return v1
.end method

.method abstract frameworkGet(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract frameworkSet(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method get(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4914
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4915
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkGet(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4917
    :cond_b
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 4918
    iget-object v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object p1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method set(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 4900
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4901
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkSet(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    .line 4902
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->shouldUpdate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4903
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 4904
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4908
    iget p2, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mContentChangeType:I

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    :cond_21
    return-void
.end method

.method shouldUpdate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 4930
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
