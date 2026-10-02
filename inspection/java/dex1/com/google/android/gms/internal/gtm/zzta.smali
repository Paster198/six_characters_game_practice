.class Lcom/google/android/gms/internal/gtm/zzta;
.super Lcom/google/android/gms/internal/gtm/zzsz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsz;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

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
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zztd;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v1

    .line 2
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/gtm/zztd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 3
    :cond_1f
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzta;

    if-eqz v1, :cond_bb

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzta;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zztd;->zzl()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztd;->zzl()I

    move-result v3

    if-eqz v1, :cond_35

    if-eqz v3, :cond_35

    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    return v2

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_9b

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_76

    .line 10
    instance-of v3, p1, Lcom/google/android/gms/internal/gtm/zzta;

    if-eqz v3, :cond_69

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    .line 11
    iget-object v4, p1, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result p1

    :goto_5a
    if-ge v1, v5, :cond_68

    .line 13
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

    .line 14
    :cond_69
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/gtm/zztd;->zzg(II)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzta;->zzg(II)Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zztd;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zztd;->zzd()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ran off end of other: 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_bb
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    .line 1
    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    .line 1
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

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected zze([BIII)V
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    const/4 p3, 0x0

    .line 1
    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final zzf(III)I
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v0

    .line 1
    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/gtm/zzvi;->zzd(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzg(II)Lcom/google/android/gms/internal/gtm/zztd;
    .registers 5

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzta;->zzk(III)I

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/gms/internal/gtm/zztd;->zzb:Lcom/google/android/gms/internal/gtm/zztd;

    return-object p1

    :cond_e
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzsx;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v1

    .line 2
    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzsx;-><init>([BII)V

    return-object p2
.end method

.method protected final zzh(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v3

    .line 1
    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zzi(Lcom/google/android/gms/internal/gtm/zzss;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zztl;

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zztl;->zzc([BII)V

    return-void
.end method

.method public final zzj()Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzc()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzta;->zza:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzta;->zzd()I

    move-result v2

    add-int/2addr v2, v0

    .line 1
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzyd;->zzf([BII)Z

    move-result v0

    return v0
.end method
