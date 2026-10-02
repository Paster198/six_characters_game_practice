.class final Lcom/google/android/gms/internal/play_billing/zzfn;
.super Lcom/google/android/gms/internal/play_billing/zzfm;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final zzb:[B


# direct methods
.method constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzfm;-><init>(Lcom/google/android/gms/internal/play_billing/zzfo;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/play_billing/zzfn;)[B
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    return-object p0
.end method


# virtual methods
.method final zza(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected final zzc(III)I
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/play_billing/zzgv;->zzb(I[BII)I

    move-result p1

    return p1
.end method

.method public final zzd()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    array-length v0, v0

    return v0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzfn;->zzj(III)I

    move-result p2

    if-nez p2, :cond_d

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    return-object p1

    .line 2
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzfj;-><init>([BII)V

    return-object v0
.end method

.method protected final zzf([BIII)V
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final zzg(Lcom/google/android/gms/internal/play_billing/zzfg;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfu;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzfu;->zzc([BII)V

    return-void
.end method

.method protected final zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_f
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    if-eqz v1, :cond_83

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    array-length v4, v2

    if-gt v4, v3, :cond_6c

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    if-gt v4, v3, :cond_4c

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfn;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzfn;->zzb:[B

    invoke-static {v2, v3, p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzl([BI[BII)Z

    move-result p1

    return p1

    :cond_2e
    if-eqz v1, :cond_3f

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzi(Lcom/google/android/gms/internal/play_billing/zzfj;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb(Lcom/google/android/gms/internal/play_billing/zzfj;)I

    move-result p1

    invoke-static {v2, v3, v0, p1, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzl([BI[BII)Z

    move-result p1

    return p1

    .line 10
    :cond_3f
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfp;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object p1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfn;->zze(II)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfp;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ran off end of other: 0, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Length too large: "

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_83
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzh(Lcom/google/android/gms/internal/play_billing/zzfp;)Z

    move-result p1

    return p1
.end method
