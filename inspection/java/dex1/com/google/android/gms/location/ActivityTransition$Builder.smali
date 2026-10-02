.class public Lcom/google/android/gms/location/ActivityTransition$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/ActivityTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zza:I

    iput v0, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zzb:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/ActivityTransition;
    .registers 6

    iget v0, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    const-string v4, "Activity type not set."

    .line 1
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zzb:I

    if-eq v0, v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    const-string v0, "Activity transition type not set."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/location/ActivityTransition;

    iget v1, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zza:I

    iget v2, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zzb:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/ActivityTransition;-><init>(II)V

    return-object v0
.end method

.method public setActivityTransition(I)Lcom/google/android/gms/location/ActivityTransition$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityTransition;->zza(I)V

    iput p1, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zzb:I

    return-object p0
.end method

.method public setActivityType(I)Lcom/google/android/gms/location/ActivityTransition$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/location/ActivityTransition$Builder;->zza:I

    return-object p0
.end method
