.class final Lcom/google/android/gms/common/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# direct methods
.method static zza(I)I
    .registers 6

    const/4 v0, 0x6

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_17

    aget v3, v1, v2

    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_15

    if-ne v4, p0, :cond_12

    return v3

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    const/4 p0, 0x0

    .line 2
    throw p0

    :cond_17
    const/4 p0, 0x1

    return p0

    nop

    :array_1a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method
