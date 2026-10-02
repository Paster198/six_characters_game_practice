.class public final Lcom/google/android/gms/internal/measurement/zzgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method public static zza(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    const/4 v1, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v1, :cond_13

    const/4 v1, 0x4

    if-eq p0, v0, :cond_12

    if-eq p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x5

    return p0

    :cond_12
    return v1

    :cond_13
    return v0

    :cond_14
    return v1

    :cond_15
    return v0
.end method
