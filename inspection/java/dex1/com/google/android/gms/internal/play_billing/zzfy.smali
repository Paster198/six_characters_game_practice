.class final Lcom/google/android/gms/internal/play_billing/zzfy;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzji;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzfx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfx;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfx;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzfx;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzfy;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfx;->zza:Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfy;

    return-object v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzfy;-><init>(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    return-void
.end method

.method public final zzB(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz p3, :cond_32

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 16
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    .line 18
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    .line 13
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_44
    if-eqz p3, :cond_7a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_4d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_61

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 7
    :cond_61
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 8
    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 10
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1
    :cond_7a
    :goto_7a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_92
    return-void
.end method

.method public final zzC(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    return-void
.end method

.method public final zzD(ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_57

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v1

    add-int v3, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v3

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 18
    :cond_28
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_2b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p1

    if-ge v2, p1, :cond_b8

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result p1

    add-int v0, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 20
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_40
    :goto_40
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p3

    if-ge v2, p3, :cond_b8

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    .line 14
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_57
    if-eqz p3, :cond_9b

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7d

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v3, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v3

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_60

    .line 8
    :cond_7d
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 9
    :goto_80
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_b8

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v0, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 11
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 1
    :cond_9b
    :goto_9b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_b8

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v1, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v1

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    :cond_b8
    return-void
.end method

.method public final zzE(IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-long v0, p2, p2

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    return-void
.end method

.method public final zzF(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    const/4 v1, 0x2

    const/16 v2, 0x3f

    const/4 v3, 0x0

    if-eqz v0, :cond_56

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v3

    move v0, p1

    :goto_13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result v1

    if-ge p1, v1, :cond_29

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v2

    xor-long/2addr v4, v6

    .line 17
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_13

    .line 18
    :cond_29
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_2c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p1

    if-ge v3, p1, :cond_b4

    .line 19
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 20
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_40
    :goto_40
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p3

    if-ge v3, p3, :cond_b4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 13
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 14
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_56
    if-eqz p3, :cond_98

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v3

    move v0, p1

    .line 5
    :goto_5f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7b

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v6, v4, v4

    shr-long/2addr v4, v2

    xor-long/2addr v4, v6

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5f

    .line 8
    :cond_7b
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 9
    :goto_7e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_b4

    .line 10
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 11
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 1
    :cond_98
    :goto_98
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v3, p3, :cond_b4

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v4, v0, v0

    shr-long/2addr v0, v2

    xor-long/2addr v0, v4

    .line 3
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    :cond_b4
    return-void
.end method

.method public final zzG(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    return-void
.end method

.method public final zzH(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    return-void
.end method

.method public final zzI(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzhd;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzhd;

    .line 4
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzhd;->zza()Ljava/lang/Object;

    move-result-object v2

    .line 6
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 7
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    goto :goto_25

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1
    :cond_28
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzq(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    return-void
.end method

.method public final zzJ(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    return-void
.end method

.method public final zzK(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 13
    :cond_23
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p1

    if-ge v2, p1, :cond_9a

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p3

    if-ge v2, p3, :cond_9a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_48
    if-eqz p3, :cond_82

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 4
    :goto_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_69

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_51

    .line 6
    :cond_69
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 7
    :goto_6c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9a

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1
    :cond_82
    :goto_82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_9a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzt(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_9a
    return-void
.end method

.method public final zzL(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    return-void
.end method

.method public final zzM(ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 13
    :cond_23
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p1

    if-ge v2, p1, :cond_9a

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p3

    if-ge v2, p3, :cond_9a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_48
    if-eqz p3, :cond_82

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 4
    :goto_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_69

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_51

    .line 6
    :cond_69
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 7
    :goto_6c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9a

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1
    :cond_82
    :goto_82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_9a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_9a
    return-void
.end method

.method public final zzb(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(IZ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzff;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzff;

    if-eqz p3, :cond_32

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 12
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzff;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzff;->zzf(I)Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 14
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzff;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 15
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzff;->zzf(I)Z

    move-result p1

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzb(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzff;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 11
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzff;->zzf(I)Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_44
    if-eqz p3, :cond_7a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 4
    :goto_4d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_61

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 6
    :cond_61
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 7
    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzb(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1
    :cond_7a
    :goto_7a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzd(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_92
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/play_billing/zzfp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void
.end method

.method public final zze(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzf(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final zzf(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzfz;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfz;

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfz;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzfz;->zze(I)D

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 16
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfz;->size()I

    move-result p1

    if-ge v2, p1, :cond_a2

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzfz;->zze(I)D

    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_36
    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfz;->size()I

    move-result p3

    if-ge v2, p3, :cond_a2

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzfz;->zze(I)D

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4c
    if-eqz p3, :cond_86

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_69

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    .line 7
    :cond_69
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 8
    :goto_6c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_a2

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1
    :cond_86
    :goto_86
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a2

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_a2
    return-void
.end method

.method public final zzh(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    return-void
.end method

.method public final zzi(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz p3, :cond_37

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v1

    int-to-long v3, v1

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 18
    :cond_24
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p1

    if-ge v2, p1, :cond_9c

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result p1

    .line 20
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_37
    :goto_37
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p3

    if-ge v2, p3, :cond_9c

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v0

    .line 14
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_49
    if-eqz p3, :cond_84

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6b

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    .line 8
    :cond_6b
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 9
    :goto_6e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9c

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1
    :cond_84
    :goto_84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_9c

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_9c
    return-void
.end method

.method public final zzk(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz p3, :cond_32

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 13
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_44
    if-eqz p3, :cond_7a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 4
    :goto_4d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_61

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 6
    :cond_61
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 7
    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1
    :cond_7a
    :goto_7a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_92
    return-void
.end method

.method public final zzm(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz p3, :cond_32

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 11
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 13
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 14
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_44
    if-eqz p3, :cond_7a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 4
    :goto_4d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_61

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 6
    :cond_61
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 7
    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzk(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1
    :cond_7a
    :goto_7a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzj(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_92
    return-void
.end method

.method public final zzo(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    return-void
.end method

.method public final zzp(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgj;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgj;

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgj;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgj;->zze(I)F

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 16
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgj;->size()I

    move-result p1

    if-ge v2, p1, :cond_a2

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgj;->zze(I)F

    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_36
    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgj;->size()I

    move-result p3

    if-ge v2, p3, :cond_a2

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgj;->zze(I)F

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4c
    if-eqz p3, :cond_86

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_55
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_69

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_55

    .line 7
    :cond_69
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 8
    :goto_6c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_a2

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 10
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1
    :cond_86
    :goto_86
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_a2

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :cond_a2
    return-void
.end method

.method public final zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfa;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    .line 3
    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    return-void
.end method

.method public final zzr(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    return-void
.end method

.method public final zzs(ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_49

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz p3, :cond_37

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 12
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v1

    int-to-long v3, v1

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 15
    :cond_24
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p1

    if-ge v2, p1, :cond_9c

    .line 16
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_37
    :goto_37
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p3

    if-ge v2, p3, :cond_9c

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 11
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_49
    if-eqz p3, :cond_84

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 4
    :goto_52
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6b

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_52

    .line 7
    :cond_6b
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 8
    :goto_6e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9c

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzm(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 1
    :cond_84
    :goto_84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_9c

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzl(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    :cond_9c
    return-void
.end method

.method public final zzt(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    return-void
.end method

.method public final zzu(ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhj;

    if-eqz p3, :cond_36

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 15
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 18
    :cond_23
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p1

    if-ge v2, p1, :cond_9a

    .line 19
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    .line 20
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_36
    :goto_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhj;->size()I

    move-result p3

    if-ge v2, p3, :cond_9a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzhj;->zze(I)J

    move-result-wide v0

    .line 14
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_48
    if-eqz p3, :cond_82

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_51
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_69

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzz(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_51

    .line 8
    :cond_69
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 9
    :goto_6c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_9a

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 11
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 1
    :cond_82
    :goto_82
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_9a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzv(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_9a
    return-void
.end method

.method public final zzv(ILcom/google/android/gms/internal/play_billing/zzhk;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhl;->zzb(Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzhl;->zze(Lcom/google/android/gms/internal/play_billing/zzfx;Lcom/google/android/gms/internal/play_billing/zzhk;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_35
    return-void
.end method

.method public final zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzib;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfa;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 4
    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V

    return-void
.end method

.method public final zzx(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzfp;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzp(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzo(ILcom/google/android/gms/internal/play_billing/zzhr;)V

    return-void
.end method

.method public final zzy(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    return-void
.end method

.method public final zzz(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzgq;

    if-eqz p3, :cond_32

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 14
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    :goto_11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 16
    :cond_1f
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    :goto_22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 17
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result p1

    .line 18
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    :goto_32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgq;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzgq;->zze(I)I

    move-result v0

    .line 13
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_44
    if-eqz p3, :cond_7a

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    move p1, v2

    move v0, p1

    .line 5
    :goto_4d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_61

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    .line 7
    :cond_61
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    .line 8
    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_92

    .line 9
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 10
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzi(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1
    :cond_7a
    :goto_7a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_92

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzfy;->zza:Lcom/google/android/gms/internal/play_billing/zzfx;

    .line 2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzh(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    :cond_92
    return-void
.end method
