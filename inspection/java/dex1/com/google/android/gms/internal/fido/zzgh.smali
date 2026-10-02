.class public final Lcom/google/android/gms/internal/fido/zzgh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public static zza(IILjava/math/RoundingMode;)I
    .registers 8

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_52

    .line 2
    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_e

    goto :goto_4d

    :cond_e
    xor-int/2addr p0, p1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/fido/zzgg;->zza:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    shr-int/lit8 p0, p0, 0x1f

    const/4 v3, 0x1

    or-int/2addr p0, v3

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_5a

    .line 6
    new-instance p0, Ljava/lang/AssertionError;

    .line 7
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :pswitch_25
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_42

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_4c

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v4

    :goto_3b
    and-int/lit8 p1, v0, 0x1

    and-int/2addr p1, v3

    if-eqz p1, :cond_41

    goto :goto_4c

    :cond_41
    return v0

    :cond_42
    if-lez v1, :cond_45

    goto :goto_4c

    :cond_45
    return v0

    :pswitch_46
    if-lez p0, :cond_49

    goto :goto_4c

    :cond_49
    return v0

    :pswitch_4a
    if-gez p0, :cond_4d

    :cond_4c
    :goto_4c
    :pswitch_4c
    add-int/2addr v0, p0

    :cond_4d
    :goto_4d
    :pswitch_4d
    return v0

    .line 4
    :pswitch_4e
    invoke-static {v4}, Lcom/google/android/gms/internal/fido/zzgi;->zza(Z)V

    return v0

    .line 1
    :cond_52
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4d
        :pswitch_4a
        :pswitch_4c
        :pswitch_46
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public static zzb(ILjava/math/RoundingMode;)I
    .registers 3

    if-lez p0, :cond_3d

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzgg;->zza:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_46

    .line 3
    new-instance p0, Ljava/lang/AssertionError;

    .line 6
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :pswitch_13
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    sub-int/2addr v0, p0

    ushr-int/lit8 p0, v0, 0x1f

    add-int/2addr p1, p0

    return p1

    :pswitch_22
    add-int/lit8 p0, p0, -0x1

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    :pswitch_2b
    add-int/lit8 p1, p0, -0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    .line 2
    :goto_33
    invoke-static {p1}, Lcom/google/android/gms/internal/fido/zzgi;->zza(Z)V

    .line 5
    :pswitch_36
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    .line 6
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x (0) must be > 0"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_36
        :pswitch_36
        :pswitch_22
        :pswitch_22
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method
