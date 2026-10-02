.class Lcom/google/android/gms/internal/measurement/zzlb;
.super Lcom/google/android/gms/internal/measurement/zzla;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# instance fields
.field protected final zza:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzla;-><init>(Lcom/google/android/gms/internal/measurement/zzlc;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

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
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzld;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzd()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzld;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzd()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    :cond_1f
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzlb;

    if-eqz v1, :cond_ac

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzld;->zzi()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzld;->zzi()I

    move-result v3

    if-eqz v1, :cond_35

    if-eqz v3, :cond_35

    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    return v2

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzd()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_91

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

    move-result v3

    if-gt v1, v3, :cond_71

    .line 7
    instance-of v3, p1, Lcom/google/android/gms/internal/measurement/zzlb;

    if-eqz v3, :cond_64

    .line 8
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlb;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    .line 9
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zzc()I

    move p1, v2

    move v5, p1

    :goto_55
    if-ge p1, v1, :cond_63

    .line 11
    aget-byte v6, v3, p1

    aget-byte v7, v4, v5

    if-eq v6, v7, :cond_5e

    return v2

    :cond_5e
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_63
    return v0

    .line 12
    :cond_64
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzld;->zzf(II)Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object p1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzlb;->zzf(II)Lcom/google/android/gms/internal/measurement/zzld;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzld;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzld;->zzd()I

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
    :cond_91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzd()I

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

    .line 13
    :cond_ac
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public zza(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method zzb(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    array-length v0, v0

    return v0
.end method

.method protected final zze(III)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/zzmk;->zzb(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/measurement/zzld;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzd()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zzh(III)I

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzld;->zzb:Lcom/google/android/gms/internal/measurement/zzld;

    return-object p1

    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzky;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzky;-><init>([BII)V

    return-object v1
.end method

.method final zzg(Lcom/google/android/gms/internal/measurement/zzkv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzd()I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlh;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlb;->zza:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzc([BII)V

    return-void
.end method
