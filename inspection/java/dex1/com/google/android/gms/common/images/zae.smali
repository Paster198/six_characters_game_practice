.class public final Lcom/google/android/gms/common/images/zae;
.super Lcom/google/android/gms/common/images/zag;
.source "com.google.android.gms:play-services-base@@18.4.0"


# instance fields
.field private final zac:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    .line 1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/images/zae;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/zae;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_27

    if-eqz v1, :cond_27

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    return v2
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/images/zae;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    if-nez p3, :cond_17

    if-nez p4, :cond_17

    instance-of p4, v0, Lcom/google/android/gms/internal/base/zal;

    if-nez p4, :cond_14

    goto :goto_17

    .line 9
    :cond_14
    check-cast v0, Lcom/google/android/gms/internal/base/zal;

    .line 10
    throw v1

    :cond_17
    :goto_17
    const/4 p4, 0x0

    if-nez p3, :cond_1e

    if-eqz p2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 p4, 0x1

    :cond_1e
    :goto_1e
    if-eqz p4, :cond_38

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_31

    instance-of p3, p2, Lcom/google/android/gms/internal/base/zak;

    if-eqz p3, :cond_32

    .line 3
    check-cast p2, Lcom/google/android/gms/internal/base/zak;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/base/zak;->zaa()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_32

    :cond_31
    move-object p2, v1

    :cond_32
    :goto_32
    new-instance p3, Lcom/google/android/gms/internal/base/zak;

    .line 4
    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/base/zak;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, p3

    .line 5
    :cond_38
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p2, v0, Lcom/google/android/gms/internal/base/zal;

    if-nez p2, :cond_4b

    if-eqz p1, :cond_4e

    if-eqz p4, :cond_4e

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/base/zak;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/base/zak;->zab(I)V

    return-void

    .line 7
    :cond_4b
    check-cast v0, Lcom/google/android/gms/internal/base/zal;

    .line 8
    throw v1

    :cond_4e
    return-void
.end method
