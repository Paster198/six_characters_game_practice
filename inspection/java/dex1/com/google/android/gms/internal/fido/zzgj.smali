.class public final Lcom/google/android/gms/internal/fido/zzgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public static varargs zza([[B)[B
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_d

    aget-object v3, p0, v1

    .line 2
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3
    :cond_d
    new-array v1, v2, [B

    move v2, v0

    move v4, v2

    :goto_11
    if-ge v2, v3, :cond_1d

    .line 4
    aget-object v5, p0, v2

    .line 5
    array-length v6, v5

    invoke-static {v5, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return-object v1
.end method
