.class public final Lcom/google/android/gms/measurement/internal/zzpi;
.super Lcom/google/android/gms/measurement/internal/zzoz;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoz;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    return-void
.end method

.method private final zzf(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 4
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzq:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_45
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzgi;->zzq:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final zzh(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    .line 3
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v0

    if-nez v0, :cond_19

    return v2

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzv()Z

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x64

    if-eqz v3, :cond_2c

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgy;->zza()I

    move-result v3

    if-eq v3, v5, :cond_3c

    :cond_2c
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    :cond_3c
    return v4

    .line 8
    :cond_3d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_58

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    rem-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgy;->zza()I

    move-result p2

    if-lt p1, p2, :cond_57

    goto :goto_58

    :cond_57
    return v4

    :cond_58
    :goto_58
    return v2
.end method

.method private static final zzi(Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzs:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return v2

    :cond_11
    const-string v1, ","

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_2c

    aget-object v4, v0, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2c
    return v2
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzph;
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v1

    const-string v4, "x-gtm-server-preview"

    if-eqz v1, :cond_186

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    .line 33
    invoke-virtual {v5, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v5

    if-eqz v5, :cond_176

    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()Z

    move-result v6

    if-nez v6, :cond_25

    goto/16 :goto_176

    .line 37
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzim;->zza()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v6

    const/4 v7, 0x2

    .line 38
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v8

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzih;

    .line 41
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;

    .line 42
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/measurement/internal/zzpi;->zzh(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x3

    if-nez v8, :cond_62

    .line 84
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)Lcom/google/android/gms/internal/measurement/zzif;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    .line 85
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 87
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0

    .line 43
    :cond_62
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v1

    .line 46
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    if-eqz v1, :cond_14c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzv()Z

    move-result v10

    if-nez v10, :cond_7f

    goto/16 :goto_14c

    .line 83
    :cond_7f
    new-instance v10, Ljava/util/HashMap;

    .line 50
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_95

    .line 52
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgy;->zze()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzb()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v11

    if-eqz v11, :cond_af

    sget-object v12, Lcom/google/android/gms/internal/measurement/zzih;->zzb:Lcom/google/android/gms/internal/measurement/zzih;

    if-eq v11, v12, :cond_af

    .line 67
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;

    goto :goto_da

    .line 55
    :cond_af
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v11

    .line 56
    invoke-virtual {v11, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-nez v2, :cond_bf

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzih;->zzj:Lcom/google/android/gms/internal/measurement/zzih;

    .line 57
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;

    goto :goto_da

    .line 58
    :cond_bf
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpi;->zzi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzih;->zzk:Lcom/google/android/gms/internal/measurement/zzih;

    .line 59
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;

    goto :goto_da

    .line 60
    :cond_cf
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_129

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzih;->zzl:Lcom/google/android/gms/internal/measurement/zzih;

    .line 66
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;

    .line 68
    :goto_da
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgy;->zzf()Ljava/lang/String;

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgy;->zzd()Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_113

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "[sgtm] Eligible for local service direct upload. appId"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 74
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    .line 75
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)Lcom/google/android/gms/internal/measurement/zzif;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzph;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v3, v4, v10, v0, v1}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    goto :goto_15d

    :cond_113
    const/4 v1, 0x6

    .line 77
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)Lcom/google/android/gms/internal/measurement/zzif;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    .line 80
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[sgtm] Local service, missing sgtm_server_url"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15d

    .line 61
    :cond_129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "[sgtm] Eligible for client side upload. appId"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzif;->zzc(I)Lcom/google/android/gms/internal/measurement/zzif;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zzb:Lcom/google/android/gms/internal/measurement/zzih;

    .line 64
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzph;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zzd:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v3, v4, v10, v0, v1}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    goto :goto_15d

    .line 47
    :cond_14c
    :goto_14c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "[sgtm] Missing sgtm_setting in remote config. appId"

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 49
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzif;->zzb(I)Lcom/google/android/gms/internal/measurement/zzif;

    :goto_15d
    if-eqz v3, :cond_160

    return-object v3

    :cond_160
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 83
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0

    .line 34
    :cond_176
    :goto_176
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0

    .line 65
    :cond_186
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v2

    if-nez v2, :cond_1a2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0

    .line 8
    :cond_1a2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/measurement/internal/zzpi;->zzh(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_252

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzaL()Z

    move-result v5

    if-nez v5, :cond_1b5

    :cond_1b2
    :goto_1b2
    move-object v0, v3

    goto/16 :goto_23f

    .line 10
    :cond_1b5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "sgtm upload enabled in manifest."

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v1

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    if-eqz v1, :cond_1b2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzv()Z

    move-result v5

    if-nez v5, :cond_1d7

    goto :goto_1b2

    .line 14
    :cond_1d7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgy;->zzf()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1e6

    goto :goto_1b2

    .line 16
    :cond_1e6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgy;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const/4 v7, 0x1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eq v7, v8, :cond_200

    const-string v7, "N"

    goto :goto_202

    .line 27
    :cond_200
    const-string v7, "Y"

    .line 19
    :goto_202
    const-string v8, "sgtm configured with upload_url, server_info"

    .line 20
    invoke-virtual {v6, v8, v5, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_21c

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v5, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    goto :goto_23f

    :cond_21c
    new-instance v0, Ljava/util/HashMap;

    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v6, "x-sgtm-server-info"

    .line 25
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_237

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_237
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzph;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzmf;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-direct {v1, v5, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    move-object v0, v1

    :goto_23f
    if-eqz v0, :cond_242

    return-object v0

    .line 9
    :cond_242
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0

    .line 27
    :cond_252
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzph;

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzph;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;Lcom/google/android/gms/internal/measurement/zzim;)V

    return-object v0
.end method

.method final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzih;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaP:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zzb:Lcom/google/android/gms/internal/measurement/zzih;

    if-ne p2, v0, :cond_40

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzpi;->zzi(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_40

    :cond_1e
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzr()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzif;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzv()Z

    move-result p2

    if-eqz p2, :cond_40

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzi()Lcom/google/android/gms/internal/measurement/zzgy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgy;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_40

    const/4 p1, 0x1

    return p1

    :cond_40
    :goto_40
    return v1
.end method
