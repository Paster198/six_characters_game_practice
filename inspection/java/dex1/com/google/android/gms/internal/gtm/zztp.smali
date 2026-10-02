.class final Lcom/google/android/gms/internal/gtm/zztp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzto;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zzto;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    iput-object p0, p1, Lcom/google/android/gms/internal/gtm/zzto;->zza:Lcom/google/android/gms/internal/gtm/zztp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/gtm/zzto;)Lcom/google/android/gms/internal/gtm/zztp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzto;->zza:Lcom/google/android/gms/internal/gtm/zztp;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/gtm/zztp;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zztp;-><init>(Lcom/google/android/gms/internal/gtm/zzto;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_54

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_54

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_54
    return-void
.end method

.method public final zzB(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    add-int v1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzp(II)V

    return-void
.end method

.method public final zzC(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_4a

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_28
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_2d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int v1, p3, p3

    shr-int/lit8 p3, p3, 0x1f

    xor-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 1
    :cond_4a
    :goto_4a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_67

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_67
    return-void
.end method

.method public final zzD(IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    add-long v1, p2, p2

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzr(IJ)V

    return-void
.end method

.method public final zzE(ILjava/util/List;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3f

    const/4 v1, 0x0

    if-eqz p3, :cond_4a

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p3, p1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v1

    move p3, p1

    .line 4
    :goto_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_29

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v2

    add-int/2addr p3, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_29
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_2e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_66

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzs(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1
    :cond_4a
    :goto_4a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_66

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v4, v2, v2

    shr-long/2addr v2, v0

    xor-long/2addr v2, v4

    invoke-virtual {p3, p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzr(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_66
    return-void
.end method

.method public final zzF(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    return-void
.end method

.method public final zzG(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzm(ILjava/lang/String;)V

    return-void
.end method

.method public final zzH(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzvs;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 4
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvs;

    .line 5
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvs;->zzf(I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzm(ILjava/lang/String;)V

    goto :goto_25

    :cond_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/gtm/zztd;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zze(ILcom/google/android/gms/internal/gtm/zztd;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2
    :cond_28
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzm(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    return-void
.end method

.method public final zzI(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzp(II)V

    return-void
.end method

.method public final zzJ(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzp(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public final zzK(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzr(IJ)V

    return-void
.end method

.method public final zzL(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public final zzb(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzd(IZ)V

    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_54

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzb(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_54

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzd(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_54
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/gtm/zztd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zze(ILcom/google/android/gms/internal/gtm/zztd;)V

    return-void
.end method

.method public final zze(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zztd;",
            ">;)V"
        }
    .end annotation

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

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zztd;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zze(ILcom/google/android/gms/internal/gtm/zztd;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzh(IJ)V

    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 8
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5c

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 2
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_5c
    return-void
.end method

.method public final zzh(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x4

    .line 1
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    return-void
.end method

.method public final zzi(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzj(II)V

    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzx(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public final zzk(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzf(II)V

    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_54

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_54

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_54
    return-void
.end method

.method public final zzm(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzh(IJ)V

    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_54

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzi(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_54

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzh(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_54
    return-void
.end method

.method public final zzo(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzf(II)V

    return-void
.end method

.method public final zzp(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 5
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 7
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 8
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5c

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 10
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_5c
    return-void
.end method

.method public final zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/gtm/zzwx;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzwk;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzto;->zza:Lcom/google/android/gms/internal/gtm/zztp;

    .line 2
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V

    const/4 p2, 0x4

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    return-void
.end method

.method public final zzr(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzj(II)V

    return-void
.end method

.method public final zzs(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzx(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzk(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzj(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public final zzt(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzr(IJ)V

    return-void
.end method

.method public final zzu(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzs(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzr(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public final zzv(ILjava/lang/Object;Lcom/google/android/gms/internal/gtm/zzwx;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzwk;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zztl;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzsh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzsh;->zzQ()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zza(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzsh;->zzT(I)V

    :cond_1e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/gtm/zztl;->zza:Lcom/google/android/gms/internal/gtm/zztp;

    .line 5
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V

    return-void
.end method

.method public final zzw(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zztd;

    const/16 v1, 0xc

    const/4 v2, 0x2

    const/16 v3, 0xb

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/gtm/zztd;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zztl;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    .line 4
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/gtm/zztl;->zzp(II)V

    const/4 p1, 0x3

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zztl;->zze(ILcom/google/android/gms/internal/gtm/zztd;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzwk;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/gtm/zztl;

    .line 8
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    .line 9
    invoke-virtual {v4, v2, p1}, Lcom/google/android/gms/internal/gtm/zztl;->zzp(II)V

    const/16 p1, 0x1a

    .line 10
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzwk;->zzX()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    .line 12
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gtm/zzwk;->zzaq(Lcom/google/android/gms/internal/gtm/zzto;)V

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/gtm/zztl;->zzq(I)V

    return-void
.end method

.method public final zzx(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzto;->zzf(II)V

    return-void
.end method

.method public final zzy(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_3c

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzo(II)V

    move p1, v0

    move p3, p1

    .line 4
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1f

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    add-int/lit8 p3, p3, 0x4

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 6
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzq(I)V

    .line 7
    :goto_24
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_54

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzg(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_54

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzf(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_54
    return-void
.end method

.method public final zzz(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zztp;->zza:Lcom/google/android/gms/internal/gtm/zzto;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzto;->zzh(IJ)V

    return-void
.end method
