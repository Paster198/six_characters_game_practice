.class public final Lcom/google/android/gms/internal/measurement/zzij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# direct methods
.method public static zza(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    const/4 v1, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-eq p0, v1, :cond_17

    const/4 v1, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v1, :cond_15

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x6

    return p0

    :cond_15
    return v0

    :cond_16
    return v1

    :cond_17
    return v0

    :cond_18
    return v1

    :cond_19
    return v0
.end method
