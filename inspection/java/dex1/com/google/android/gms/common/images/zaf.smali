.class public final Lcom/google/android/gms/common/images/zaf;
.super Lcom/google/android/gms/common/images/zag;
.source "com.google.android.gms:play-services-base@@18.4.0"


# instance fields
.field private final zac:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zag;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/images/zaf;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/zaf;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v3, :cond_31

    if-eqz v1, :cond_31

    .line 4
    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object p1, p1, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    .line 5
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    return v2
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 5

    if-nez p3, :cond_13

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/images/zaf;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/google/android/gms/common/images/zaf;->zaa:Lcom/google/android/gms/common/images/zad;

    iget-object p3, p3, Lcom/google/android/gms/common/images/zad;->zaa:Landroid/net/Uri;

    .line 2
    invoke-interface {p2, p3, p1, p4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_13
    return-void
.end method
