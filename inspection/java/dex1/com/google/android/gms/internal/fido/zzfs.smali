.class final Lcom/google/android/gms/internal/fido/zzfs;
.super Lcom/google/android/gms/internal/fido/zzft;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final zza:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzft;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_24

    const/4 v1, 0x0

    .line 1
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    .line 2
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fido/zzbo;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method final zzc(Lcom/google/android/gms/internal/fido/zzft;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzft;->zze()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_25

    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    :goto_e
    iget-object v4, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    array-length v5, v4

    if-ge v1, v5, :cond_24

    .line 2
    aget-byte v4, v4, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzft;->zze()[B

    move-result-object v5

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_1f

    move v4, v0

    goto :goto_20

    :cond_1f
    move v4, v2

    :goto_20
    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return v3

    :cond_25
    return v2
.end method

.method public final zzd()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method final zze()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzfs;->zza:[B

    return-object v0
.end method
