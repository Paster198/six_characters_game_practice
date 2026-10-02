.class public final Lcom/google/android/gms/internal/fido/zzfk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public static zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    .line 1
    :cond_3
    const-string p0, " must not be null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzfk;->zzc(C)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzfk;->zzc(C)Z

    move-result v2

    if-nez v2, :cond_3b

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2a

    const/16 v2, 0x39

    if-le v1, v2, :cond_3b

    :cond_2a
    const/16 v2, 0x5f

    if-ne v1, v2, :cond_2f

    goto :goto_3b

    :cond_2f
    const-string v0, "identifier must contain only ASCII letters, digits or underscore: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3e
    return-object p0

    :cond_3f
    const-string v0, "identifier must start with an ASCII letter: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "identifier must not be empty"

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(C)Z
    .registers 4

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-le p0, v0, :cond_a

    goto :goto_b

    :cond_a
    return v1

    :cond_b
    :goto_b
    const/16 v0, 0x41

    const/4 v2, 0x0

    if-lt p0, v0, :cond_15

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_15

    return v1

    :cond_15
    return v2
.end method
