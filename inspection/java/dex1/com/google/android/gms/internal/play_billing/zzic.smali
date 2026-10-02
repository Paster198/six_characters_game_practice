.class final Lcom/google/android/gms/internal/play_billing/zzic;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zziq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzis;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzic;->zzb:Lcom/google/android/gms/internal/play_billing/zziq;

    return-void
.end method

.method public static zzA(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzD(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzB(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzF(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzC(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzK(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzD(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzM(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static zzE(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_e

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    return v0
.end method

.method static zza(ILcom/google/android/gms/internal/play_billing/zzhr;Lcom/google/android/gms/internal/play_billing/zzib;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    add-int/2addr p0, p0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzb(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz v2, :cond_1f

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1e

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    return v2

    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_35

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_35
    return v2
.end method

.method static zzc(ILjava/util/List;Z)I
    .registers 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzd(Ljava/util/List;)I
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static zze(ILjava/util/List;Z)I
    .registers 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    shl-int/lit8 p0, p0, 0x3

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzf(Ljava/util/List;)I
    .registers 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static zzg(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz v2, :cond_1f

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1e

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v3

    int-to-long v3, v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1e
    return v2

    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_35

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_35
    return v2
.end method

.method static zzh(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz v2, :cond_1e

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhj;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method static zzi(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz v2, :cond_23

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_22

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    return v2

    :cond_23
    move v2, v1

    :goto_24
    if-ge v1, v0, :cond_3d

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v4, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_3d
    return v2
.end method

.method static zzj(Ljava/util/List;)I
    .registers 9

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzhj;

    const/16 v3, 0x3f

    if-eqz v2, :cond_24

    .line 4
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhj;

    move v2, v1

    :goto_11
    if-ge v1, v0, :cond_23

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_23
    return v2

    :cond_24
    move v2, v1

    :goto_25
    if-ge v1, v0, :cond_3d

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    .line 3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3d
    return v2
.end method

.method static zzk(Ljava/util/List;)I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz v2, :cond_1e

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgq;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method static zzl(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz v2, :cond_1e

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhj;

    move v2, v1

    :goto_f
    if-ge v1, v0, :cond_1d

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return v2

    :cond_1e
    move v2, v1

    :goto_1f
    if-ge v1, v0, :cond_33

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    return v2
.end method

.method public static zzm()Lcom/google/android/gms/internal/play_billing/zziq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzic;->zzb:Lcom/google/android/gms/internal/play_billing/zziq;

    return-object v0
.end method

.method static zzn(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zziq;)Ljava/lang/Object;
    .registers 7

    if-nez p3, :cond_6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzis;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object p3

    :cond_6
    int-to-long v0, p2

    shl-int/lit8 p0, p1, 0x3

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzir;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/play_billing/zzir;->zzj(ILjava/lang/Object;)V

    return-object p3
.end method

.method static zzo(Lcom/google/android/gms/internal/play_billing/zzgd;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgm;

    iget-object p0, p2, Lcom/google/android/gms/internal/play_billing/zzgm;->zzb:Lcom/google/android/gms/internal/play_billing/zzgh;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzgh;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 3
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgm;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method static zzp(Lcom/google/android/gms/internal/play_billing/zziq;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzir;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzir;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzir;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzir;->zze(Lcom/google/android/gms/internal/play_billing/zzir;Lcom/google/android/gms/internal/play_billing/zzir;)Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object p0

    goto :goto_2a

    .line 7
    :cond_27
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzir;->zzd(Lcom/google/android/gms/internal/play_billing/zzir;)Lcom/google/android/gms/internal/play_billing/zzir;

    .line 8
    :cond_2a
    :goto_2a
    move-object p2, p0

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzir;

    .line 9
    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    return-void
.end method

.method public static zzq(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzc(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzr(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzg(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzs(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzj(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzt(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzl(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzu(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzn(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzv(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzp(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzw(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzs(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzx(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzu(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzy(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzz(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static zzz(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/zzji;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/play_billing/zzji;->zzB(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method
