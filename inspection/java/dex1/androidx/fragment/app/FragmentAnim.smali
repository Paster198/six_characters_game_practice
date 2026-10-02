.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I
    .registers 3

    if-eqz p2, :cond_e

    if-eqz p1, :cond_9

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result p0

    return p0

    .line 125
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result p0

    return p0

    :cond_e
    if-eqz p1, :cond_15

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result p0

    return p0

    .line 131
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result p0

    return p0
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .registers 8

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 46
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/FragmentAnim;->getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I

    move-result p3

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 54
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 55
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 56
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 59
    :cond_22
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v2

    .line 63
    :cond_2f
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 65
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 68
    :cond_3b
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 70
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_47
    if-nez p3, :cond_4f

    if-eqz v0, :cond_4f

    .line 74
    invoke-static {p0, v0, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(Landroid/content/Context;IZ)I

    move-result p3

    :cond_4f
    if-eqz p3, :cond_8b

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 84
    :try_start_61
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 86
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_6c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_6c} :catch_6f

    return-object v0

    :catch_6d
    move-exception p0

    .line 91
    throw p0

    .line 99
    :catch_6f
    :cond_6f
    :try_start_6f
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 101
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_7a} :catch_7b

    return-object v0

    :catch_7b
    move-exception p2

    if-nez p1, :cond_8a

    .line 109
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_8b

    .line 111
    new-instance p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 106
    :cond_8a
    throw p2

    :cond_8b
    return-object v2
.end method

.method private static toActivityTransitResId(Landroid/content/Context;I)I
    .registers 3

    const v0, 0x1030001

    .line 169
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 171
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 172
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static transitToAnimResourceId(Landroid/content/Context;IZ)I
    .registers 4

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x2002

    if-eq p1, v0, :cond_42

    const/16 v0, 0x2005

    if-eq p1, v0, :cond_30

    const/16 v0, 0x1003

    if-eq p1, v0, :cond_28

    const/16 v0, 0x1004

    if-eq p1, v0, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    if-eqz p2, :cond_20

    const p1, 0x10100b8

    .line 152
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_20
    const p1, 0x10100b9

    .line 153
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_28
    if-eqz p2, :cond_2d

    .line 148
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    return p0

    :cond_2d
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    return p0

    :cond_30
    if-eqz p2, :cond_3a

    const p1, 0x10100ba

    .line 157
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_3a
    const p1, 0x10100bb

    .line 159
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_42
    if-eqz p2, :cond_47

    .line 145
    sget p0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    return p0

    :cond_47
    sget p0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    return p0

    :cond_4a
    if-eqz p2, :cond_4f

    .line 142
    sget p0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    return p0

    :cond_4f
    sget p0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    return p0
.end method
