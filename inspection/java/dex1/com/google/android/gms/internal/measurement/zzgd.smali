.class public final Lcom/google/android/gms/internal/measurement/zzgd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method public static zza(I)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v0, :cond_c

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x3

    return p0

    :cond_c
    return v1

    :cond_d
    return v0
.end method
