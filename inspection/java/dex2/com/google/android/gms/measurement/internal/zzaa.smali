.class final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/measurement/internal/zzab;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzae;

.field private final zzh:Lcom/google/android/gms/internal/measurement/zzfj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfj;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:Lcom/google/android/gms/internal/measurement/zzfj;

    return-void
.end method


# virtual methods
.method final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v0

    return v0
.end method

.method final zzb()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfj;->zzo()Z

    move-result v0

    return v0
.end method

.method final zzc()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzhm;JLcom/google/android/gms/measurement/internal/zzbd;Z)Z
    .registers 24

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpq;->zzb()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 3
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaE:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 4
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:Lcom/google/android/gms/internal/measurement/zzfj;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzn()Z

    move-result v6

    if-eqz v6, :cond_22

    move-object/from16 v6, p6

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/zzbd;->zze:J

    goto :goto_24

    :cond_22
    move-wide/from16 v6, p4

    .line 6
    :goto_24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7a

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    iget v10, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:I

    .line 10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v11

    if-eqz v11, :cond_51

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_52

    :cond_51
    move-object v11, v9

    .line 12
    :goto_52
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v12

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Evaluating filter. audience, filter, event"

    .line 14
    invoke-virtual {v8, v13, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzr(Lcom/google/android/gms/internal/measurement/zzfj;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "Filter definition"

    invoke-virtual {v8, v10, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_7a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_3ae

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v1

    const/16 v10, 0x100

    if-le v1, v10, :cond_8b

    goto/16 :goto_3ae

    .line 24
    :cond_8b
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzk()Z

    move-result v1

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzm()Z

    move-result v4

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzn()Z

    move-result v10

    const/4 v11, 0x1

    if-nez v1, :cond_a1

    if-nez v4, :cond_a1

    if-eqz v10, :cond_9f

    goto :goto_a1

    :cond_9f
    move v1, v8

    goto :goto_a2

    :cond_a1
    :goto_a1
    move v1, v11

    :goto_a2
    if-eqz p7, :cond_c8

    if-nez v1, :cond_c8

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:I

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 141
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_c2
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 142
    invoke-virtual {v1, v3, v2, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v11

    :cond_c8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzo()Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzf()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v10

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/zzaa;->zzh(JLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_de

    goto/16 :goto_357

    .line 29
    :cond_de
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_ea

    .line 129
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_357

    :cond_ea
    new-instance v6, Ljava/util/HashSet;

    .line 30
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzh()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfl;

    .line 32
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_124

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 37
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "null or empty param name in filter. event"

    .line 38
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_357

    .line 33
    :cond_124
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zze()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f7

    .line 39
    :cond_12c
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v10

    .line 40
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_139
    :goto_139
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 41
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_139

    .line 42
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v13

    if-eqz v13, :cond_16d

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzw()Z

    move-result v14

    if-eqz v14, :cond_168

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzd()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_169

    :cond_168
    move-object v12, v9

    :goto_169
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_139

    .line 44
    :cond_16d
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v13

    if-eqz v13, :cond_18b

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzu()Z

    move-result v14

    if-eqz v14, :cond_186

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_187

    :cond_186
    move-object v12, v9

    .line 46
    :goto_187
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_139

    .line 47
    :cond_18b
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzy()Z

    move-result v13

    if-eqz v13, :cond_19d

    .line 48
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_139

    .line 49
    :cond_19d
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 52
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 54
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Unknown value for param. event, param"

    .line 55
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_357

    .line 56
    :cond_1c0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzh()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_353

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfl;

    .line 57
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzh()Z

    move-result v12

    if-eqz v12, :cond_1e2

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzg()Z

    move-result v12

    if-eqz v12, :cond_1e2

    move v12, v11

    goto :goto_1e3

    :cond_1e2
    move v12, v8

    .line 58
    :goto_1e3
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zze()Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_204

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 80
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Event has empty param name. event"

    .line 81
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_357

    .line 60
    :cond_204
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 61
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_24f

    .line 62
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v15

    if-nez v15, :cond_231

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 85
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 87
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No number filter for long param. event, param"

    .line 88
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_357

    .line 63
    :cond_231
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/zzaa;->zzh(JLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_243

    goto/16 :goto_357

    .line 64
    :cond_243
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1c8

    .line 89
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_357

    .line 65
    :cond_24f
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_296

    .line 66
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v15

    if-nez v15, :cond_278

    .line 90
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 93
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 95
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No number filter for double param. event, param"

    .line 96
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_357

    .line 67
    :cond_278
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/zzaa;->zzg(DLcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_28a

    goto/16 :goto_357

    .line 68
    :cond_28a
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1c8

    .line 97
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_357

    .line 69
    :cond_296
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_311

    .line 70
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzk()Z

    move-result v15

    if-eqz v15, :cond_2af

    .line 71
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzd()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v10

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v13

    .line 71
    invoke-static {v14, v10, v13}, Lcom/google/android/gms/measurement/internal/zzaa;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfv;Lcom/google/android/gms/measurement/internal/zzhe;)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_2c5

    .line 73
    :cond_2af
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzi()Z

    move-result v15

    if-eqz v15, :cond_2f3

    .line 74
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzqa;->zzA(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2d5

    .line 75
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfl;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/google/android/gms/measurement/internal/zzaa;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfp;)Ljava/lang/Boolean;

    move-result-object v10

    :goto_2c5
    if-nez v10, :cond_2c9

    goto/16 :goto_357

    .line 76
    :cond_2c9
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_1c8

    .line 98
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_357

    .line 99
    :cond_2d5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 102
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 104
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Invalid param value for number filter. event, param"

    .line 105
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_357

    .line 106
    :cond_2f3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 107
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 111
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No filter for String param. event, param"

    .line 112
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_357

    :cond_311
    if-nez v14, :cond_335

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 116
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 118
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Missing param for filter. event, param"

    .line 119
    invoke-virtual {v6, v9, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_357

    .line 121
    :cond_335
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 122
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 124
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzgx;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v7

    .line 126
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzgx;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Unknown param type. event, param"

    .line 127
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_357

    .line 128
    :cond_353
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 130
    :goto_357
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    if-nez v9, :cond_364

    const-string v4, "null"

    goto :goto_365

    :cond_364
    move-object v4, v9

    :goto_365
    const-string v6, "Event filter result"

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_36d

    return v8

    .line 132
    :cond_36d
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:Ljava/lang/Boolean;

    .line 133
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_37a

    return v11

    :cond_37a
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Ljava/lang/Boolean;

    if-eqz v1, :cond_3ad

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhm;->zzu()Z

    move-result v1

    if-eqz v1, :cond_3ad

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v1

    .line 134
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 135
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzm()Z

    move-result v2

    if-eqz v2, :cond_3a0

    if-eqz v3, :cond_39d

    .line 136
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzo()Z

    move-result v2

    if-nez v2, :cond_39b

    goto :goto_39d

    :cond_39b
    move-object/from16 v1, p1

    :cond_39d
    :goto_39d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Ljava/lang/Long;

    goto :goto_3ad

    :cond_3a0
    if-eqz v3, :cond_3ab

    .line 137
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzo()Z

    move-result v2

    if-nez v2, :cond_3a9

    goto :goto_3ab

    :cond_3a9
    move-object/from16 v1, p2

    :cond_3ab
    :goto_3ab
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/Long;

    :cond_3ad
    :goto_3ad
    return v11

    .line 20
    :cond_3ae
    :goto_3ae
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzp()Z

    move-result v3

    if-eqz v3, :cond_3c8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_3c8
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 23
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8
.end method
