.class final Lcom/google/android/gms/internal/base/zaj;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "com.google.android.gms:play-services-base@@18.4.0"


# instance fields
.field zaa:I

.field zab:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/zaj;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/base/zaj;->zaa:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zaj;->zaa:I

    iget p1, p1, Lcom/google/android/gms/internal/base/zaj;->zab:I

    iput p1, p0, Lcom/google/android/gms/internal/base/zaj;->zab:I

    :cond_d
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/base/zaj;->zaa:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/base/zak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/base/zak;-><init>(Lcom/google/android/gms/internal/base/zaj;)V

    return-object v0
.end method
