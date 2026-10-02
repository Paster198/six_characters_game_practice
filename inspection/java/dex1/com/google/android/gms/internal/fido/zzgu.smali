.class Lcom/google/android/gms/internal/fido/zzgu;
.super Lcom/google/android/gms/internal/fido/zzgt;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzgt;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/fido/zzgx;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/fido/zzgx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v1, p1, Lcom/google/android/gms/internal/fido/zzgu;

    if-eqz v1, :cond_b1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/fido/zzgu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgx;->zzk()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgx;->zzk()I

    move-result v3

    if-eqz v1, :cond_35

    if-eqz v3, :cond_35

    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    return v2

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_96

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_76

    .line 7
    instance-of v3, p1, Lcom/google/android/gms/internal/fido/zzgu;

    if-eqz v3, :cond_69

    iget-object v3, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    .line 8
    iget-object v4, p1, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result p1

    :goto_5a
    if-ge v1, v5, :cond_68

    .line 10
    aget-byte v6, v3, v1

    aget-byte v7, v4, p1

    if-eq v6, v7, :cond_63

    return v2

    :cond_63
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5a

    :cond_68
    return v0

    .line 11
    :cond_69
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/fido/zzgx;->zzg(II)Lcom/google/android/gms/internal/fido/zzgx;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/fido/zzgu;->zzg(II)Lcom/google/android/gms/internal/fido/zzgx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fido/zzgx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgx;->zzd()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ran off end of other: 0, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Length too large: "

    .line 5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_b1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected zzc()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzd()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected zze([BIII)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zzf(III)I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result p2

    sget-object v0, Lcom/google/android/gms/internal/fido/zzhc;->zzd:[B

    move v0, p2

    :goto_7
    add-int v1, p2, p3

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    mul-int/lit8 p1, p1, 0x1f

    .line 2
    aget-byte v1, v1, v0

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    return p1
.end method

.method public final zzg(II)Lcom/google/android/gms/internal/fido/zzgx;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/fido/zzgu;->zzj(III)I

    move-result p2

    if-nez p2, :cond_d

    sget-object p1, Lcom/google/android/gms/internal/fido/zzgx;->zzb:Lcom/google/android/gms/internal/fido/zzgx;

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    new-instance v1, Lcom/google/android/gms/internal/fido/zzgr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result v2

    add-int/2addr v2, p1

    .line 2
    invoke-direct {v1, v0, v2, p2}, Lcom/google/android/gms/internal/fido/zzgr;-><init>([BII)V

    return-object v1
.end method

.method public final zzh()Ljava/io/InputStream;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public final zzi()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzgu;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzgu;->zzd()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
