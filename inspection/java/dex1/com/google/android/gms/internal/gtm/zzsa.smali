.class public final Lcom/google/android/gms/internal/gtm/zzsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzak;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zzg()Lcom/google/android/gms/internal/gtm/zzal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzO()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzt(I)Lcom/google/android/gms/internal/gtm/zzal;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzi()Lcom/google/android/gms/internal/gtm/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzq()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzal;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/gtm/zzal;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzak;->zzN()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzal;->zzo(Z)Lcom/google/android/gms/internal/gtm/zzal;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/gtm/zzaa;)Lcom/google/android/gms/internal/gtm/zzrs;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrz;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zzf()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzak;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zzf()I

    move-result v3

    if-ge v2, v3, :cond_19

    new-instance v3, Ljava/util/HashSet;

    .line 3
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/android/gms/internal/gtm/zzsa;->zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzru;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gtm/zzru;-><init>(Lcom/google/android/gms/internal/gtm/zzrt;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    .line 6
    :goto_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zze()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/gtm/zzaa;->zzi(I)Lcom/google/android/gms/internal/gtm/zzs;

    move-result-object v6

    invoke-static {v6, p0, v0, v5}, Lcom/google/android/gms/internal/gtm/zzsa;->zzf(Lcom/google/android/gms/internal/gtm/zzs;Lcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;I)Lcom/google/android/gms/internal/gtm/zzro;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_39
    new-instance v5, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    .line 9
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_53

    .line 10
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/gtm/zzaa;->zzh(I)Lcom/google/android/gms/internal/gtm/zzs;

    move-result-object v7

    invoke-static {v7, p0, v0, v6}, Lcom/google/android/gms/internal/gtm/zzsa;->zzf(Lcom/google/android/gms/internal/gtm/zzs;Lcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;I)Lcom/google/android/gms/internal/gtm/zzro;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_53
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zza()I

    move-result v7

    if-ge v1, v7, :cond_6f

    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzaa;->zzg(I)Lcom/google/android/gms/internal/gtm/zzs;

    move-result-object v7

    invoke-static {v7, p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzsa;->zzf(Lcom/google/android/gms/internal/gtm/zzs;Lcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;I)Lcom/google/android/gms/internal/gtm/zzro;

    move-result-object v7

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/gtm/zzru;->zzb(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzru;

    .line 15
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 16
    :cond_6f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zzr()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzac;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzry;

    .line 17
    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/gtm/zzry;-><init>(Lcom/google/android/gms/internal/gtm/zzrx;)V

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzh()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_90
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzg(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_90

    .line 20
    :cond_aa
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzg()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzf(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_b2

    .line 22
    :cond_cc
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zze()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_d4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ee

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzd(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_d4

    .line 24
    :cond_ee
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzf()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_112

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 25
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/gtm/zzaa;->zzn(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzak;->zzp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_f6

    .line 26
    :cond_112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzk()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_134

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzj(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_11a

    .line 28
    :cond_134
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzl()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_158

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/gtm/zzaa;->zzn(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzak;->zzp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_13c

    .line 30
    :cond_158
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzc()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_160
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzb(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_160

    .line 32
    :cond_17a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzd()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_182
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 33
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/gtm/zzaa;->zzn(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/gtm/zzak;->zzp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_182

    .line 34
    :cond_19e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzi()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzro;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/gtm/zzry;->zzh(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_1a6

    .line 36
    :cond_1c0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzac;->zzj()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 37
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/gtm/zzaa;->zzn(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzak;->zzp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/gtm/zzry;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzry;

    goto :goto_1c8

    .line 38
    :cond_1e4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzry;->zza()Lcom/google/android/gms/internal/gtm/zzrw;

    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzru;->zzc(Lcom/google/android/gms/internal/gtm/zzrw;)Lcom/google/android/gms/internal/gtm/zzru;

    goto/16 :goto_77

    .line 40
    :cond_1ed
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zzo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzru;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzru;

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzaa;->zzd()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/gtm/zzru;->zzd(I)Lcom/google/android/gms/internal/gtm/zzru;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzru;->zza()Lcom/google/android/gms/internal/gtm/zzrs;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return-void

    :cond_c
    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method private static zzd(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzae;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrz;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzux;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuv;->zzW(Lcom/google/android/gms/internal/gtm/zzuh;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x36

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsa;->zzh(Ljava/lang/String;)V

    :cond_2a
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzux;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuv;->zzV(Lcom/google/android/gms/internal/gtm/zzuh;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzae;

    return-object p0
.end method

.method private static zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/gtm/zzaa;",
            "[",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/gtm/zzak;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrz;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x5a

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Value cycle detected.  Current value reference: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".  Previous value references: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzsa;->zzh(Ljava/lang/String;)V

    .line 3
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzaa;->zzs()Ljava/util/List;

    move-result-object v1

    const-string v2, "values"

    invoke-static {v1, p0, v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzal;

    .line 4
    aget-object v2, p2, p0

    if-eqz v2, :cond_50

    return-object v2

    .line 5
    :cond_50
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzal;->zzu()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_167

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_a3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_66

    move-object v0, v1

    goto/16 :goto_1a5

    .line 7
    :cond_66
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsa;->zza(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzal;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzd(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzm()Lcom/google/android/gms/internal/gtm/zzal;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 11
    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsa;->zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v3

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzal;->zzh(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzal;

    goto :goto_8b

    .line 13
    :cond_a3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsa;->zza(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzal;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzd(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zza()I

    move-result v2

    .line 16
    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsa;->zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzal;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzal;

    goto/16 :goto_1a5

    .line 19
    :cond_d2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsa;->zza(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzal;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzd(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzc()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzd()I

    move-result v4

    if-eq v3, v4, :cond_121

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzc()I

    move-result v3

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzd()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Uneven map keys ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") and map values ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzsa;->zzh(Ljava/lang/String;)V

    .line 25
    :cond_121
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzk()Lcom/google/android/gms/internal/gtm/zzal;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzal;->zzl()Lcom/google/android/gms/internal/gtm/zzal;

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzg()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_147

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 28
    invoke-static {v4, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsa;->zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/gtm/zzal;->zzf(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzal;

    goto :goto_12f

    .line 29
    :cond_147
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzae;->zzh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 30
    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsa;->zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzal;->zzg(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzal;

    goto :goto_14f

    .line 31
    :cond_167
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzsa;->zzd(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzae;

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zza(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzal;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzal;->zzj()Lcom/google/android/gms/internal/gtm/zzal;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzae;->zzf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 35
    invoke-static {v3, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzsa;->zze(ILcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gtm/zzal;->zze(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzal;

    goto :goto_18c

    :cond_1a4
    move-object v0, v2

    :cond_1a5
    :goto_1a5
    if-nez v0, :cond_1c9

    .line 36
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzsa;->zzh(Ljava/lang/String;)V

    .line 37
    :cond_1c9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    aput-object p1, p2, p0

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0
.end method

.method private static zzf(Lcom/google/android/gms/internal/gtm/zzs;Lcom/google/android/gms/internal/gtm/zzaa;[Lcom/google/android/gms/internal/gtm/zzak;I)Lcom/google/android/gms/internal/gtm/zzro;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrz;
        }
    .end annotation

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzrq;

    const/4 v0, 0x0

    .line 1
    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/gtm/zzrq;-><init>(Lcom/google/android/gms/internal/gtm/zzrp;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzs;->zzc()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzaa;->zzq()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "properties"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzy;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzaa;->zzp()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzy;->zza()I

    move-result v2

    const-string v3, "keys"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzsa;->zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzy;->zzc()I

    move-result v0

    if-ltz v0, :cond_43

    .line 6
    array-length v2, p2

    if-lt v0, v2, :cond_5e

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Index out of bounds detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzh(Ljava/lang/String;)V

    .line 8
    :cond_5e
    aget-object v0, p2, v0

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzb;->zzcL:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 10
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/gtm/zzrq;->zzc(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;

    goto :goto_e

    .line 11
    :cond_70
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/gtm/zzrq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;

    goto :goto_e

    :cond_74
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gtm/zzrq;->zza()Lcom/google/android/gms/internal/gtm/zzro;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrz;
        }
    .end annotation

    if-ltz p1, :cond_8

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2a

    .line 2
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2d

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Index out of bounds detected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzh(Ljava/lang/String;)V

    .line 3
    :cond_2a
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zzh(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzrz;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrz;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzrz;-><init>(Ljava/lang/String;)V

    throw v0
.end method
