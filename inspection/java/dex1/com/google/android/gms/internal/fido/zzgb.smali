.class final Lcom/google/android/gms/internal/fido/zzgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field final zza:I

.field final zzb:I

.field final zzc:I

.field final zzd:I

.field private final zze:Ljava/lang/String;

.field private final zzf:[C

.field private final zzg:[B

.field private final zzh:Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .registers 12

    const/16 v0, 0x80

    .line 1
    new-array v1, v0, [B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    move v4, v3

    .line 2
    :goto_a
    array-length v5, p2

    if-ge v4, v5, :cond_2b

    .line 3
    aget-char v5, p2, v4

    const/4 v6, 0x1

    if-ge v5, v0, :cond_14

    move v7, v6

    goto :goto_15

    :cond_14
    move v7, v3

    :goto_15
    const-string v8, "Non-ASCII character: %s"

    .line 4
    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/fido/zzbm;->zzd(ZLjava/lang/String;C)V

    .line 5
    aget-byte v7, v1, v5

    if-ne v7, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v6, v3

    :goto_20
    const-string v7, "Duplicate character: %s"

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/internal/fido/zzbm;->zzd(ZLjava/lang/String;C)V

    int-to-byte v6, v4

    .line 6
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 7
    :cond_2b
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[C[BZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzgb;->zze:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    :try_start_a
    array-length p1, p2

    .line 8
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/fido/zzgh;->zzb(ILjava/math/RoundingMode;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzb:I
    :try_end_13
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_13} :catch_41

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p2

    rsub-int/lit8 v1, p2, 0x3

    const/4 v2, 0x1

    shl-int v1, v2, v1

    iput v1, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzc:I

    shr-int p2, v0, p2

    iput p2, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/fido/zzgb;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzg:[B

    .line 11
    new-array p1, v1, [Z

    const/4 p2, 0x0

    :goto_2b
    iget p3, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzd:I

    if-ge p2, p3, :cond_3e

    mul-int/lit8 p3, p2, 0x8

    iget v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzb:I

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 12
    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/fido/zzgh;->zza(IILjava/math/RoundingMode;)I

    move-result p3

    aput-boolean v2, p1, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 13
    :cond_3e
    iput-boolean p4, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzh:Z

    return-void

    :catch_41
    move-exception p1

    .line 12
    array-length p2, p2

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Illegal alphabet length "

    .line 9
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/fido/zzgb;)[C
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/fido/zzgb;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    check-cast p1, Lcom/google/android/gms/internal/fido/zzgb;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzh:Z

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/fido/zzgb;->zzh:Z

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzh:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v0, :cond_e

    const/16 v0, 0x4d5

    goto :goto_10

    :cond_e
    const/16 v0, 0x4cf

    :goto_10
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zze:Ljava/lang/String;

    return-object v0
.end method

.method final zza(I)C
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    aget-char p1, v0, p1

    return p1
.end method

.method final zzb()Lcom/google/android/gms/internal/fido/zzgb;
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    array-length v3, v2

    if-ge v1, v3, :cond_a7

    aget-char v3, v2, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/fido/zzba;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_a3

    move v1, v0

    :goto_10
    array-length v3, v2

    const/16 v4, 0x5a

    const/16 v5, 0x41

    const/4 v6, 0x1

    if-ge v1, v3, :cond_23

    .line 2
    aget-char v3, v2, v1

    if-lt v3, v5, :cond_20

    if-gt v3, v4, :cond_20

    move v1, v6

    goto :goto_24

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_23
    move v1, v0

    :goto_24
    xor-int/2addr v1, v6

    const-string v2, "Cannot call upperCase() on a mixed-case alphabet"

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fido/zzbm;->zzf(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    array-length v1, v1

    new-array v1, v1, [C

    :goto_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    array-length v3, v2

    if-ge v0, v3, :cond_44

    .line 4
    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/fido/zzba;->zza(C)Z

    move-result v3

    if-eqz v3, :cond_3e

    xor-int/lit8 v2, v2, 0x20

    :cond_3e
    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zze:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/fido/zzgb;

    const-string v3, ".upperCase()"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzh:Z

    if-eqz v0, :cond_a2

    iget-boolean v0, v2, Lcom/google/android/gms/internal/fido/zzgb;->zzh:Z

    if-eqz v0, :cond_5a

    goto :goto_a2

    :cond_5a
    iget-object v0, v2, Lcom/google/android/gms/internal/fido/zzgb;->zzg:[B

    .line 6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_61
    if-gt v5, v4, :cond_92

    or-int/lit8 v1, v5, 0x20

    iget-object v3, v2, Lcom/google/android/gms/internal/fido/zzgb;->zzg:[B

    .line 7
    aget-byte v7, v3, v5

    .line 8
    aget-byte v3, v3, v1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_71

    .line 9
    aput-byte v3, v0, v5

    goto :goto_77

    :cond_71
    int-to-char v9, v5

    int-to-char v10, v1

    if-ne v3, v8, :cond_7a

    .line 10
    aput-byte v7, v0, v1

    :goto_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 12
    :cond_7a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/fido/zzbo;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_92
    iget-object v1, v2, Lcom/google/android/gms/internal/fido/zzgb;->zze:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/fido/zzgb;->zzf:[C

    new-instance v3, Lcom/google/android/gms/internal/fido/zzgb;

    const-string v4, ".ignoreCase()"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {v3, v1, v2, v0, v6}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C[BZ)V

    return-object v3

    :cond_a2
    :goto_a2
    return-object v2

    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_a7
    return-object p0
.end method

.method public final zzc(C)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/fido/zzgb;->zzg:[B

    array-length v0, p1

    const/16 v1, 0x3d

    if-le v0, v1, :cond_e

    aget-byte p1, p1, v1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
