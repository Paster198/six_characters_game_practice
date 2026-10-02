.class final Lcom/google/android/gms/internal/gtm/zzwo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzwx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzwk;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzxo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzxo<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/gtm/zzuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzxo<",
            "**>;",
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzwk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/gtm/zzuk;->zzi(Lcom/google/android/gms/internal/gtm/zzwk;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzwo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzxo<",
            "**>;",
            "Lcom/google/android/gms/internal/gtm/zzuk<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzwk;",
            ")",
            "Lcom/google/android/gms/internal/gtm/zzwo<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwo;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzwo;-><init>(Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwk;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzc:Z

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzb()I

    move-result p1

    add-int/2addr v0, p1

    :cond_19
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzc:Z

    if-eqz v1, :cond_1d

    mul-int/lit8 v0, v0, 0x35

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzxk;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1d
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzwk;->zzao()Lcom/google/android/gms/internal/gtm/zzwj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzwj;->zzD()Lcom/google/android/gms/internal/gtm/zzwk;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzm(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzf(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzwz;->zzF(Lcom/google/android/gms/internal/gtm/zzxo;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzc:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzwz;->zzE(Lcom/google/android/gms/internal/gtm/zzuk;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;Lcom/google/android/gms/internal/gtm/zzuj;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/gtm/zzww;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object v3

    .line 3
    :cond_c
    :goto_c
    :try_start_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_8b

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3f

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    ushr-int/lit8 v4, v4, 0x3

    .line 15
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/gtm/zzuk;->zzd(Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzwk;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 16
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/gtm/zzuk;->zzg(Lcom/google/android/gms/internal/gtm/zzww;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzuo;)V

    goto :goto_c

    .line 17
    :cond_30
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/gtm/zzxo;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;)Z

    move-result v4

    goto :goto_39

    .line 18
    :cond_35
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzT()Z

    move-result v4
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_8f

    :goto_39
    if-nez v4, :cond_c

    .line 20
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzxo;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3f
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    move-object v6, v4

    .line 5
    :cond_43
    :goto_43
    :try_start_43
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzc()I

    move-result v8

    if-ne v8, v5, :cond_4a

    goto :goto_72

    .line 6
    :cond_4a
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5d

    .line 10
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    .line 11
    invoke-virtual {v1, p3, v4, v7}, Lcom/google/android/gms/internal/gtm/zzuk;->zzd(Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzwk;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_43

    :cond_5d
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_6c

    if-eqz v4, :cond_67

    .line 7
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/gtm/zzuk;->zzg(Lcom/google/android/gms/internal/gtm/zzww;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzuo;)V

    goto :goto_43

    .line 8
    :cond_67
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzq()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v6

    goto :goto_43

    .line 9
    :cond_6c
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzT()Z

    move-result v8

    if-nez v8, :cond_43

    .line 12
    :goto_72
    invoke-interface {p2}, Lcom/google/android/gms/internal/gtm/zzww;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_86

    if-eqz v6, :cond_c

    if-eqz v4, :cond_82

    .line 13
    invoke-virtual {v1, v6, v4, p3, v3}, Lcom/google/android/gms/internal/gtm/zzuk;->zzh(Lcom/google/android/gms/internal/gtm/zztd;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzuo;)V

    goto :goto_c

    .line 14
    :cond_82
    invoke-virtual {v0, v2, v7, v6}, Lcom/google/android/gms/internal/gtm/zzxo;->zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/gtm/zztd;)V

    goto :goto_c

    .line 19
    :cond_86
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzb()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p2

    throw p2
    :try_end_8b
    .catchall {:try_start_43 .. :try_end_8b} :catchall_8f

    .line 20
    :cond_8b
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzxo;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_8f
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzxo;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    throw p2
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/gtm/zzsl;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/gtm/zzsl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuz;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zzc()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v2

    if-ne v1, v2, :cond_11

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zze()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    :cond_11
    move-object v6, v1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzuv;->zzU()Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1a
    if-ge p3, p4, :cond_d0

    .line 5
    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/gtm/zzsm;->zzj([BILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result v4

    iget v2, p5, Lcom/google/android/gms/internal/gtm/zzsl;->zza:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_65

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_5e

    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    iget-object v1, p5, Lcom/google/android/gms/internal/gtm/zzsl;->zzd:Lcom/google/android/gms/internal/gtm/zzuj;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    ushr-int/lit8 v5, v2, 0x3

    .line 17
    invoke-virtual {p3, v1, v3, v5}, Lcom/google/android/gms/internal/gtm/zzuk;->zzd(Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzwk;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object p3

    .line 17
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzux;

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzux;->zzc:Lcom/google/android/gms/internal/gtm/zzwk;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 18
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object p3

    .line 20
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/gtm/zzsm;->zzd(Lcom/google/android/gms/internal/gtm/zzwx;[BIILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result p3

    .line 17
    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    iget-object v3, p5, Lcom/google/android/gms/internal/gtm/zzsl;->zzc:Ljava/lang/Object;

    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_56
    move-object v3, p2

    move v5, p4

    move-object v7, p5

    .line 22
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zzi(I[BIILcom/google/android/gms/internal/gtm/zzxp;Lcom/google/android/gms/internal/gtm/zzsl;)I

    move-result p3

    goto :goto_1a

    :cond_5e
    move v5, p4

    move-object v7, p5

    .line 23
    invoke-static {v2, p2, v4, v5, v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zzn(I[BIILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result p3

    goto :goto_1a

    :cond_65
    move v5, p4

    move-object v7, p5

    const/4 p3, 0x0

    move-object p4, v0

    :goto_69
    if-ge v4, v5, :cond_c2

    .line 6
    invoke-static {p2, v4, v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zzj([BILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result p5

    iget v2, v7, Lcom/google/android/gms/internal/gtm/zzsl;->zza:I

    and-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v8, v2, 0x3

    if-eq v8, v3, :cond_a6

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7b

    goto :goto_b9

    :cond_7b
    if-eqz v1, :cond_9b

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzux;

    iget-object v8, v4, Lcom/google/android/gms/internal/gtm/zzux;->zzc:Lcom/google/android/gms/internal/gtm/zzwk;

    .line 8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 7
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v2

    .line 9
    invoke-static {v2, p2, p5, v5, v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zzd(Lcom/google/android/gms/internal/gtm/zzwx;[BIILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result p5

    iget-object v2, v4, Lcom/google/android/gms/internal/gtm/zzux;->zzd:Lcom/google/android/gms/internal/gtm/zzuw;

    iget-object v4, v7, Lcom/google/android/gms/internal/gtm/zzsl;->zzc:Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v2, v4}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)V

    move v4, p5

    goto :goto_69

    :cond_9b
    if-ne v4, v3, :cond_b9

    .line 11
    invoke-static {p2, p5, v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zza([BILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result v4

    iget-object p4, v7, Lcom/google/android/gms/internal/gtm/zzsl;->zzc:Ljava/lang/Object;

    .line 12
    check-cast p4, Lcom/google/android/gms/internal/gtm/zztd;

    goto :goto_69

    :cond_a6
    if-nez v4, :cond_b9

    .line 13
    invoke-static {p2, p5, v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zzj([BILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result v4

    iget p3, v7, Lcom/google/android/gms/internal/gtm/zzsl;->zza:I

    iget-object p5, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    iget-object v1, v7, Lcom/google/android/gms/internal/gtm/zzsl;->zzd:Lcom/google/android/gms/internal/gtm/zzuj;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zza:Lcom/google/android/gms/internal/gtm/zzwk;

    .line 14
    invoke-virtual {p5, v1, v2, p3}, Lcom/google/android/gms/internal/gtm/zzuk;->zzd(Lcom/google/android/gms/internal/gtm/zzuj;Lcom/google/android/gms/internal/gtm/zzwk;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_69

    :cond_b9
    :goto_b9
    const/16 v4, 0xc

    if-eq v2, v4, :cond_c3

    .line 15
    invoke-static {v2, p2, p5, v5, v7}, Lcom/google/android/gms/internal/gtm/zzsm;->zzn(I[BIILcom/google/android/gms/internal/gtm/zzsl;)I

    move-result v4

    goto :goto_69

    :cond_c2
    move p5, v4

    :cond_c3
    if-eqz p4, :cond_cb

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    .line 16
    invoke-virtual {v6, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxp;->zzh(ILjava/lang/Object;)V

    :cond_cb
    move p3, p5

    move p4, v5

    move-object p5, v7

    goto/16 :goto_1a

    :cond_d0
    move v5, p4

    if-ne p3, v5, :cond_d4

    return-void

    .line 24
    :cond_d4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzg()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p1

    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gtm/zzxo;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzc:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gtm/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzuo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzk()Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/gtm/zztp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzd:Lcom/google/android/gms/internal/gtm/zzuk;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzf()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzun;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzun;->zze()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzyf;->zzi:Lcom/google/android/gms/internal/gtm/zzyf;

    if-ne v3, v4, :cond_4c

    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzf()Z

    .line 7
    instance-of v3, v1, Lcom/google/android/gms/internal/gtm/zzvn;

    if-eqz v3, :cond_40

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzun;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzvn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzvn;->zza()Lcom/google/android/gms/internal/gtm/zzvp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzvq;->zzb()Lcom/google/android/gms/internal/gtm/zztd;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/gtm/zztp;->zzw(ILjava/lang/Object;)V

    goto :goto_a

    .line 10
    :cond_40
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzun;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/gtm/zztp;->zzw(ILjava/lang/Object;)V

    goto :goto_a

    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwo;->zzb:Lcom/google/android/gms/internal/gtm/zzxo;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxo;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzxo;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V

    return-void
.end method
