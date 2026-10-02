.class final Lcom/google/android/gms/internal/auth/zzhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/auth/zzhl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhj;->zzu()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhj;->zzv()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget v0, Lcom/google/android/gms/internal/auth/zzds;->zza:I

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhn;->zzb:Lcom/google/android/gms/internal/auth/zzhl;

    return-void
.end method

.method static bridge synthetic zza([BII)I
    .registers 9

    sub-int/2addr p2, p1

    add-int/lit8 v0, p1, -0x1

    .line 1
    aget-byte v0, p0, v0

    const/16 v1, -0xc

    const/4 v2, -0x1

    if-eqz p2, :cond_38

    const/4 v3, 0x1

    const/16 v4, -0x41

    if-eq p2, v3, :cond_2c

    const/4 v5, 0x2

    if-ne p2, v5, :cond_26

    .line 2
    aget-byte p2, p0, p1

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_25

    if-gt p2, v4, :cond_25

    if-le p0, v4, :cond_1e

    return v2

    :cond_1e
    shl-int/lit8 p1, p2, 0x8

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0

    :cond_25
    return v2

    .line 3
    :cond_26
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 3
    :cond_2c
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_37

    if-le p0, v4, :cond_33

    return v2

    :cond_33
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, v0

    return p0

    :cond_37
    return v2

    :cond_38
    if-le v0, v1, :cond_3b

    return v2

    :cond_3b
    return v0
.end method

.method static zzb([B)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhn;->zzb:Lcom/google/android/gms/internal/auth/zzhl;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/auth/zzhl;->zzb([BII)Z

    move-result p0

    return p0
.end method

.method static zzc([BII)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhn;->zzb:Lcom/google/android/gms/internal/auth/zzhl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhl;->zzb([BII)Z

    move-result p0

    return p0
.end method
