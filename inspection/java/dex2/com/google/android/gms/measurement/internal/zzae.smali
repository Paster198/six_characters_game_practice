.class final Lcom/google/android/gms/measurement/internal/zzae;
.super Lcom/google/android/gms/measurement/internal/zzpg;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Set;

.field private zzc:Ljava/util/Map;

.field private zzd:Ljava/lang/Long;

.field private zze:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    return-void
.end method

.method private final zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzy;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzy;

    return-object p1

    :cond_11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zzf(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzy;

    if-nez p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Lcom/google/android/gms/measurement/internal/zzy;)Ljava/util/BitSet;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .registers 43

    move-object/from16 v1, p0

    .line 1
    const-string v9, "current_results"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    .line 4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Ljava/lang/Long;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhm;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_s"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v11

    goto :goto_48

    :cond_47
    move v2, v10

    .line 8
    :goto_48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpq;->zzb()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 10
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzgi;->zzaE:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 11
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v12

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpq;->zzb()Z

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzaD:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 14
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v13

    if-eqz v2, :cond_ad

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    .line 19
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "current_session_count"

    .line 20
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    :try_start_89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "events"

    const-string v7, "app_id = ?"

    new-array v8, v11, [Ljava/lang/String;

    aput-object v4, v8, v10

    .line 22
    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_98
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_98} :catch_99

    goto :goto_ad

    :catch_99
    move-exception v0

    .line 45
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Error resetting session-scoped event counts. appId"

    .line 25
    invoke-virtual {v3, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    :cond_ad
    :goto_ad
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v14, "Failed to merge filter. appId"

    const-string v15, "Database error querying filters. appId"

    const-string v16, "data"

    const-string v3, "audience_id"

    const/4 v4, 0x2

    if-eqz v13, :cond_19f

    if-eqz v12, :cond_19f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Landroidx/collection/ArrayMap;

    .line 29
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_d2
    const-string v18, "event_filters"

    new-array v0, v4, [Ljava/lang/String;

    aput-object v3, v0, v10

    aput-object v16, v0, v11

    const-string v20, "app_id=?"

    new-array v5, v11, [Ljava/lang/String;

    aput-object v7, v5, v10

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v5

    .line 31
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_ee
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d2 .. :try_end_ee} :catch_17b
    .catchall {:try_start_d2 .. :try_end_ee} :catchall_178

    .line 32
    :try_start_ee
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 33
    :goto_f4
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_f8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ee .. :try_end_f8} :catch_172
    .catchall {:try_start_ee .. :try_end_f8} :catchall_170

    move/from16 p4, v11

    .line 34
    :try_start_fa
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfj;->zzc()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_10a} :catch_13a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_fa .. :try_end_10a} :catch_136
    .catchall {:try_start_fa .. :try_end_10a} :catchall_170

    .line 38
    :try_start_10a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfj;->zzo()Z

    move-result v11

    if-nez v11, :cond_113

    move/from16 p5, v10

    goto :goto_14e

    .line 39
    :cond_113
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_121
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10a .. :try_end_121} :catch_136
    .catchall {:try_start_10a .. :try_end_121} :catchall_170

    if-nez v17, :cond_12e

    move/from16 p5, v10

    :try_start_125
    new-instance v10, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_132

    :cond_12e
    move/from16 p5, v10

    move-object/from16 v10, v17

    .line 43
    :goto_132
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14e

    :catch_136
    move-exception v0

    move/from16 p5, v10

    goto :goto_181

    :catch_13a
    move-exception v0

    move/from16 p5, v10

    .line 51
    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v10

    .line 36
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v10

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 37
    invoke-virtual {v10, v14, v11, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    :goto_14e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_152
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_125 .. :try_end_152} :catch_16e
    .catchall {:try_start_125 .. :try_end_152} :catchall_170

    if-nez v0, :cond_15b

    if-eqz v5, :cond_159

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_159
    move-object v10, v8

    goto :goto_1a4

    :cond_15b
    move/from16 v11, p4

    move/from16 v10, p5

    goto :goto_f4

    :cond_160
    move/from16 p5, v10

    move/from16 p4, v11

    .line 46
    :try_start_164
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_168
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_164 .. :try_end_168} :catch_16e
    .catchall {:try_start_164 .. :try_end_168} :catchall_170

    if-eqz v5, :cond_1a3

    .line 45
    :goto_16a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1a3

    :catch_16e
    move-exception v0

    goto :goto_181

    :catchall_170
    move-exception v0

    goto :goto_199

    :catch_172
    move-exception v0

    move/from16 p5, v10

    move/from16 p4, v11

    goto :goto_181

    :catchall_178
    move-exception v0

    const/4 v5, 0x0

    goto :goto_199

    :catch_17b
    move-exception v0

    move/from16 p5, v10

    move/from16 p4, v11

    const/4 v5, 0x0

    .line 25
    :goto_181
    :try_start_181
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    invoke-virtual {v6, v15, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_196
    .catchall {:try_start_181 .. :try_end_196} :catchall_170

    if-eqz v5, :cond_1a3

    goto :goto_16a

    :goto_199
    if-eqz v5, :cond_19e

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_19e
    throw v0

    :cond_19f
    move/from16 p5, v10

    move/from16 p4, v11

    :cond_1a3
    :goto_1a3
    move-object v10, v0

    .line 45
    :goto_1a4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 53
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 54
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 55
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_1b9
    const-string v18, "audience_filter_values"

    new-array v0, v4, [Ljava/lang/String;

    aput-object v3, v0, p5

    aput-object v9, v0, p4

    const-string v20, "app_id=?"

    move/from16 v7, p4

    new-array v8, v7, [Ljava/lang/String;

    aput-object v6, v8, p5

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v8

    .line 57
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b9 .. :try_end_1d7} :catch_257
    .catchall {:try_start_1b9 .. :try_end_1d7} :catchall_253

    .line 58
    :try_start_1d7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1ed

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_1e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d7 .. :try_end_1e1} :catch_24d
    .catchall {:try_start_1d7 .. :try_end_1e1} :catchall_aca

    if-eqz v7, :cond_1e6

    .line 69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1e6
    move-object v11, v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_27a

    .line 93
    :cond_1ed
    :try_start_1ed
    new-instance v8, Landroidx/collection/ArrayMap;

    .line 59
    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    move/from16 v11, p5

    .line 60
    :goto_1f4
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v11, 0x1

    .line 61
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_1fd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ed .. :try_end_1fd} :catch_24d
    .catchall {:try_start_1ed .. :try_end_1fd} :catchall_aca

    .line 62
    :try_start_1fd
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zze()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_20d} :catch_219
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1fd .. :try_end_20d} :catch_24d
    .catchall {:try_start_1fd .. :try_end_20d} :catchall_aca

    .line 67
    :try_start_20d
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v19, v2

    move-object/from16 v20, v3

    goto :goto_235

    :catch_219
    move-exception v0

    .line 99
    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 63
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v11

    .line 64
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v11

    const-string v4, "Failed to merge filter results. appId, audienceId, error"
    :try_end_226
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_20d .. :try_end_226} :catch_24d
    .catchall {:try_start_20d .. :try_end_226} :catchall_aca

    move/from16 v19, v2

    :try_start_228
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_22c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_228 .. :try_end_22c} :catch_24b
    .catchall {:try_start_228 .. :try_end_22c} :catchall_aca

    move-object/from16 v20, v3

    .line 65
    :try_start_22e
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 66
    invoke-virtual {v11, v4, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    :goto_235
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_239
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22e .. :try_end_239} :catch_249
    .catchall {:try_start_22e .. :try_end_239} :catchall_aca

    if-nez v0, :cond_242

    if-eqz v7, :cond_240

    .line 69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_240
    move-object v11, v8

    goto :goto_27a

    :cond_242
    move/from16 v2, v19

    move-object/from16 v3, v20

    const/4 v4, 0x2

    const/4 v11, 0x0

    goto :goto_1f4

    :catch_249
    move-exception v0

    goto :goto_25d

    :catch_24b
    move-exception v0

    goto :goto_250

    :catch_24d
    move-exception v0

    move/from16 v19, v2

    :goto_250
    move-object/from16 v20, v3

    goto :goto_25d

    :catchall_253
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_acc

    :catch_257
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v7, 0x0

    .line 37
    :goto_25d
    :try_start_25d
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_274
    .catchall {:try_start_25d .. :try_end_274} :catchall_aca

    if-eqz v7, :cond_279

    .line 69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_279
    move-object v11, v0

    .line 76
    :goto_27a
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_285

    :cond_280
    move-object/from16 v27, v20

    const/4 v12, 0x0

    goto/16 :goto_5cc

    .line 199
    :cond_285
    new-instance v2, Ljava/util/HashSet;

    .line 77
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v19, :cond_435

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 79
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 82
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 83
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    :try_start_2ac
    const-string v7, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"
    :try_end_2ae
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2ac .. :try_end_2ae} :catch_305
    .catchall {:try_start_2ac .. :try_end_2ae} :catchall_301

    move-object/from16 v17, v2

    const/4 v8, 0x2

    :try_start_2b1
    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v2, v8

    const/16 v19, 0x1

    aput-object v5, v2, v19

    .line 84
    invoke-virtual {v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b1 .. :try_end_2be} :catch_2ff
    .catchall {:try_start_2b1 .. :try_end_2be} :catchall_301

    .line 85
    :try_start_2be
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2f6

    .line 86
    :goto_2c4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_2dc

    new-instance v7, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2dc
    const/4 v6, 0x1

    .line 90
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 91
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2be .. :try_end_2ec} :catch_2fd
    .catchall {:try_start_2be .. :try_end_2ec} :catchall_42d

    if-nez v6, :cond_2f4

    if-eqz v2, :cond_323

    .line 93
    :goto_2f0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_323

    :cond_2f4
    const/4 v8, 0x0

    goto :goto_2c4

    .line 94
    :cond_2f6
    :try_start_2f6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_2fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f6 .. :try_end_2fa} :catch_2fd
    .catchall {:try_start_2f6 .. :try_end_2fa} :catchall_42d

    if-eqz v2, :cond_323

    goto :goto_2f0

    :catch_2fd
    move-exception v0

    goto :goto_309

    :catch_2ff
    move-exception v0

    goto :goto_308

    :catchall_301
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_42f

    :catch_305
    move-exception v0

    move-object/from16 v17, v2

    :goto_308
    const/4 v2, 0x0

    .line 192
    :goto_309
    :try_start_309
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 95
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v6, "Database error querying scoped filters. appId"

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 97
    invoke-virtual {v4, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_320
    .catchall {:try_start_309 .. :try_end_320} :catchall_42d

    if-eqz v2, :cond_323

    goto :goto_2f0

    .line 100
    :cond_323
    :goto_323
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/collection/ArrayMap;

    .line 102
    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 103
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_336

    goto/16 :goto_42b

    .line 104
    :cond_336
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzic;

    .line 106
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_41e

    .line 107
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_368

    goto/16 :goto_41e

    .line 108
    :cond_368
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 109
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v8

    move-object/from16 v19, v0

    .line 110
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzt(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_41a

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib;->zzf()Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzib;

    .line 113
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v0

    .line 114
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/measurement/internal/zzqa;->zzt(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzib;

    new-instance v0, Ljava/util/ArrayList;

    .line 116
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzh()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3d1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhk;

    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhk;->zza()I

    move-result v21

    move/from16 v23, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3cc

    .line 119
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3cc
    move-object/from16 v3, v22

    move/from16 v4, v23

    goto :goto_3a9

    :cond_3d1
    move-object/from16 v22, v3

    move/from16 v23, v4

    .line 120
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib;->zze()Lcom/google/android/gms/internal/measurement/zzib;

    .line 121
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzib;

    new-instance v0, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzic;->zzj()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e8
    :goto_3e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_406

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzie;

    .line 124
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzie;->zzb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e8

    .line 125
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e8

    .line 126
    :cond_406
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib;->zzg()Lcom/google/android/gms/internal/measurement/zzib;

    .line 127
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/measurement/zzib;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzib;

    .line 128
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzic;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_425

    :cond_41a
    move-object/from16 v0, v19

    goto/16 :goto_33e

    :cond_41e
    :goto_41e
    move-object/from16 v19, v0

    move-object/from16 v22, v3

    .line 108
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_425
    move-object/from16 v0, v19

    move-object/from16 v3, v22

    goto/16 :goto_33e

    :cond_42b
    :goto_42b
    move-object v0, v2

    goto :goto_438

    :catchall_42d
    move-exception v0

    move-object v5, v2

    :goto_42f
    if-eqz v5, :cond_434

    .line 93
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_434
    throw v0

    :cond_435
    move-object/from16 v17, v2

    move-object v0, v11

    .line 129
    :goto_438
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_43c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_280

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 130
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzic;

    new-instance v4, Ljava/util/BitSet;

    .line 131
    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    new-instance v5, Ljava/util/BitSet;

    .line 132
    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Landroidx/collection/ArrayMap;

    .line 133
    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v2, :cond_4a4

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zza()I

    move-result v3

    if-nez v3, :cond_46e

    goto :goto_4a4

    .line 147
    :cond_46e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzh()Ljava/util/List;

    move-result-object v3

    .line 135
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_476
    :goto_476
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhk;

    .line 136
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhk;->zzh()Z

    move-result v8

    if-eqz v8, :cond_476

    .line 137
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhk;->zza()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 138
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhk;->zzg()Z

    move-result v21

    if-eqz v21, :cond_49f

    .line 139
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhk;->zzb()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_4a0

    :cond_49f
    const/4 v7, 0x0

    .line 140
    :goto_4a0
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_476

    .line 134
    :cond_4a4
    :goto_4a4
    new-instance v7, Landroidx/collection/ArrayMap;

    .line 141
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v2, :cond_4f4

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()I

    move-result v3

    if-nez v3, :cond_4b2

    goto :goto_4f4

    .line 167
    :cond_4b2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzic;->zzj()Ljava/util/List;

    move-result-object v3

    .line 143
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4ba
    :goto_4ba
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzie;

    .line 144
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzie;->zzi()Z

    move-result v21

    if-eqz v21, :cond_4ba

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzie;->zza()I

    move-result v21

    if-lez v21, :cond_4ba

    .line 145
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzie;->zzb()I

    move-result v21

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 146
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzie;->zza()I

    move-result v21

    move-object/from16 v23, v2

    add-int/lit8 v2, v21, -0x1

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/zzie;->zzc(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 147
    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v2, v23

    goto :goto_4ba

    :cond_4f4
    :goto_4f4
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    if-eqz v23, :cond_545

    const/4 v0, 0x0

    .line 148
    :goto_4fb
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzic;->zzd()I

    move-result v2

    mul-int/lit8 v2, v2, 0x40

    if-ge v0, v2, :cond_545

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzy(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_537

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    .line 152
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move/from16 v21, v12

    const-string v12, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v2, v12, v3, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v5, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzic;->zzi()Ljava/util/List;

    move-result-object v2

    .line 154
    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzy(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_539

    .line 156
    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_540

    :cond_537
    move/from16 v21, v12

    .line 155
    :cond_539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_540
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v21

    goto :goto_4fb

    :cond_545
    move/from16 v21, v12

    .line 157
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzic;

    if-eqz v13, :cond_5b2

    if-eqz v21, :cond_5b2

    .line 158
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5b2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Ljava/lang/Long;

    if-eqz v2, :cond_5b2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:Ljava/lang/Long;

    if-nez v2, :cond_567

    goto :goto_5b2

    .line 159
    :cond_567
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56b
    :goto_56b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v8

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Ljava/lang/Long;

    .line 161
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfj;->zzm()Z

    move-result v2

    if-eqz v2, :cond_593

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:Ljava/lang/Long;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    div-long v23, v23, v25

    .line 164
    :cond_593
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a4

    .line 165
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_5a4
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56b

    .line 167
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56b

    .line 158
    :cond_5b2
    :goto_5b2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzy;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v27, v20

    const/4 v12, 0x0

    .line 168
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzad;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    .line 169
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v12, v21

    move-object/from16 v0, v22

    goto/16 :goto_43c

    .line 170
    :goto_5cc
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, "Skipping failed audience ID"

    if-eqz v0, :cond_5d8

    :cond_5d4
    move-object/from16 v3, v27

    goto/16 :goto_7dd

    .line 307
    :cond_5d8
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzz;

    invoke-direct {v3, v1, v12}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzad;)V

    new-instance v4, Landroidx/collection/ArrayMap;

    .line 171
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 172
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5e6
    :goto_5e6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 173
    invoke-virtual {v3, v6, v0}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object v20

    if-eqz v20, :cond_5e6

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 174
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-virtual {v7, v8, v0, v10}, Lcom/google/android/gms/measurement/internal/zzaw;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v7

    .line 176
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzV(Lcom/google/android/gms/measurement/internal/zzbd;)V

    if-nez p6, :cond_5e6

    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_72f

    .line 179
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v6

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 180
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 181
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 182
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v12, Landroidx/collection/ArrayMap;

    .line 184
    invoke-direct {v12}, Landroidx/collection/ArrayMap;-><init>()V

    .line 185
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v28

    :try_start_63c
    const-string v29, "event_filters"
    :try_end_63e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63c .. :try_end_63e} :catch_700
    .catchall {:try_start_63c .. :try_end_63e} :catchall_6fd

    move-object/from16 v25, v3

    const/4 v3, 0x2

    :try_start_641
    new-array v0, v3, [Ljava/lang/String;
    :try_end_643
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_641 .. :try_end_643} :catch_6fb
    .catchall {:try_start_641 .. :try_end_643} :catchall_6fd

    move-object/from16 v3, v27

    const/16 v17, 0x0

    :try_start_647
    aput-object v3, v0, v17
    :try_end_649
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_647 .. :try_end_649} :catch_6f5
    .catchall {:try_start_647 .. :try_end_649} :catchall_6fd

    move-object/from16 p2, v5

    const/4 v5, 0x1

    :try_start_64c
    aput-object v16, v0, v5

    const-string v31, "app_id=? AND event_name=?"

    move-object/from16 v30, v0

    move/from16 p4, v5

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    aput-object v13, v0, v17

    aput-object v8, v0, p4

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v33, 0x0

    move-object/from16 v32, v0

    .line 186
    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_667
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64c .. :try_end_667} :catch_6f3
    .catchall {:try_start_64c .. :try_end_667} :catchall_6fd

    .line 187
    :try_start_667
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_66b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_667 .. :try_end_66b} :catch_6eb
    .catchall {:try_start_667 .. :try_end_66b} :catchall_6e5

    if-eqz v0, :cond_6d3

    move-object/from16 v23, v7

    move/from16 v7, p4

    .line 188
    :goto_671
    :try_start_671
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_675
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_671 .. :try_end_675} :catch_6cf
    .catchall {:try_start_671 .. :try_end_675} :catchall_6e5

    .line 189
    :try_start_675
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfj;->zzc()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;
    :try_end_685
    .catch Ljava/io/IOException; {:try_start_675 .. :try_end_685} :catch_6a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_675 .. :try_end_685} :catch_6cf
    .catchall {:try_start_675 .. :try_end_685} :catchall_6e5

    const/4 v7, 0x0

    .line 193
    :try_start_686
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 194
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;
    :try_end_694
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_686 .. :try_end_694} :catch_6cf
    .catchall {:try_start_686 .. :try_end_694} :catchall_6e5

    if-nez v17, :cond_6a1

    move-object/from16 v18, v5

    :try_start_698
    new-instance v5, Ljava/util/ArrayList;

    .line 195
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-interface {v12, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6a5

    :cond_6a1
    move-object/from16 v18, v5

    move-object/from16 v5, v17

    .line 197
    :goto_6a5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6bd

    :catch_6a9
    move-exception v0

    move-object/from16 v18, v5

    .line 308
    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 190
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 191
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 192
    invoke-virtual {v5, v14, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    :goto_6bd
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_6c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_698 .. :try_end_6c1} :catch_6e3
    .catchall {:try_start_698 .. :try_end_6c1} :catchall_6e1

    if-nez v0, :cond_6cb

    if-eqz v18, :cond_6c8

    .line 199
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_6c8
    move-object v0, v12

    goto/16 :goto_724

    :cond_6cb
    move-object/from16 v5, v18

    const/4 v7, 0x1

    goto :goto_671

    :catch_6cf
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_6f0

    :cond_6d3
    move-object/from16 v18, v5

    move-object/from16 v23, v7

    .line 200
    :try_start_6d7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_6db
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6d7 .. :try_end_6db} :catch_6e3
    .catchall {:try_start_6d7 .. :try_end_6db} :catchall_6e1

    if-eqz v18, :cond_724

    .line 199
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_724

    :catchall_6e1
    move-exception v0

    goto :goto_6e8

    :catch_6e3
    move-exception v0

    goto :goto_6f0

    :catchall_6e5
    move-exception v0

    move-object/from16 v18, v5

    :goto_6e8
    move-object/from16 v5, v18

    goto :goto_729

    :catch_6eb
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v23, v7

    :goto_6f0
    move-object/from16 v5, v18

    goto :goto_70a

    :catch_6f3
    move-exception v0

    goto :goto_6f8

    :catch_6f5
    move-exception v0

    move-object/from16 p2, v5

    :goto_6f8
    move-object/from16 v23, v7

    goto :goto_709

    :catch_6fb
    move-exception v0

    goto :goto_703

    :catchall_6fd
    move-exception v0

    const/4 v5, 0x0

    goto :goto_729

    :catch_700
    move-exception v0

    move-object/from16 v25, v3

    :goto_703
    move-object/from16 p2, v5

    move-object/from16 v23, v7

    move-object/from16 v3, v27

    :goto_709
    const/4 v5, 0x0

    .line 235
    :goto_70a
    :try_start_70a
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 201
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 202
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 203
    invoke-virtual {v6, v15, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_71f
    .catchall {:try_start_70a .. :try_end_71f} :catchall_728

    if-eqz v5, :cond_724

    .line 199
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_724
    :goto_724
    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_737

    :catchall_728
    move-exception v0

    :goto_729
    if-eqz v5, :cond_72e

    .line 199
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_72e
    throw v0

    :cond_72f
    move-object/from16 v25, v3

    move-object/from16 p2, v5

    move-object/from16 v23, v7

    move-object/from16 v3, v27

    .line 206
    :goto_737
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_73f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 207
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_769

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 208
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 209
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    invoke-virtual {v6, v2, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73f

    .line 210
    :cond_769
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 211
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_774
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7bf

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfj;

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-direct {v12, v1, v13, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfj;)V

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:Ljava/lang/Long;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Ljava/lang/Long;

    .line 212
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfj;->zzb()I

    move-result v8

    invoke-direct {v1, v6, v8}, Lcom/google/android/gms/measurement/internal/zzae;->zzf(II)Z

    move-result v24

    move-object/from16 v19, v0

    move-wide/from16 v21, v10

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    .line 213
    invoke-virtual/range {v17 .. v24}, Lcom/google/android/gms/measurement/internal/zzaa;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzhm;JLcom/google/android/gms/measurement/internal/zzbd;Z)Z

    move-result v8

    move-object/from16 v0, v17

    if-eqz v8, :cond_7b5

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 215
    invoke-virtual {v10, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Lcom/google/android/gms/measurement/internal/zzab;)V

    move-wide/from16 v10, v21

    move-object/from16 v0, v26

    goto :goto_774

    :cond_7b5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 216
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7c3

    :cond_7bf
    move-object/from16 v26, v0

    move-wide/from16 v21, v10

    :goto_7c3
    if-nez v8, :cond_7ce

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7ce
    move-wide/from16 v10, v21

    move-object/from16 v0, v26

    goto/16 :goto_73f

    :cond_7d4
    move-object/from16 v5, p2

    move-object/from16 v27, v3

    move-object/from16 v3, v25

    const/4 v12, 0x0

    goto/16 :goto_5e6

    :goto_7dd
    if-nez p6, :cond_ac4

    .line 218
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e7

    goto/16 :goto_a1e

    .line 302
    :cond_7e7
    new-instance v4, Landroidx/collection/ArrayMap;

    .line 219
    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    .line 220
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzio;

    .line 221
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzio;->zzg()Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_8ee

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v8

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 224
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 225
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 226
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Landroidx/collection/ArrayMap;

    .line 228
    invoke-direct {v11}, Landroidx/collection/ArrayMap;-><init>()V

    .line 229
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    :try_start_826
    const-string v18, "property_filters"

    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v0, v13

    const/4 v14, 0x1

    aput-object v16, v0, v14

    const-string v20, "app_id=? AND property_name=?"

    move/from16 p5, v13

    new-array v13, v12, [Ljava/lang/String;

    aput-object v10, v13, p5

    aput-object v7, v13, v14

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v13

    .line 230
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_849
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_826 .. :try_end_849} :catch_8c5
    .catchall {:try_start_826 .. :try_end_849} :catchall_8c2

    .line 231
    :try_start_849
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8ac

    .line 232
    :goto_84f
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0
    :try_end_853
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_849 .. :try_end_853} :catch_8bd
    .catchall {:try_start_849 .. :try_end_853} :catchall_8ba

    .line 233
    :try_start_853
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr;->zzc()Lcom/google/android/gms/internal/measurement/zzfq;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfr;
    :try_end_863
    .catch Ljava/io/IOException; {:try_start_853 .. :try_end_863} :catch_885
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_853 .. :try_end_863} :catch_8bd
    .catchall {:try_start_853 .. :try_end_863} :catchall_8ba

    const/4 v13, 0x0

    .line 236
    :try_start_864
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 237
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_87d

    new-instance v14, Ljava/util/ArrayList;

    .line 238
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87f

    :cond_87d
    move-object/from16 v14, v17

    .line 240
    :goto_87f
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 p2, v5

    goto :goto_89b

    :catch_885
    move-exception v0

    .line 306
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 234
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v13

    .line 235
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v13

    const-string v14, "Failed to merge filter"
    :try_end_892
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_864 .. :try_end_892} :catch_8bd
    .catchall {:try_start_864 .. :try_end_892} :catchall_8ba

    move-object/from16 p2, v5

    :try_start_894
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v14, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    :goto_89b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_89f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_894 .. :try_end_89f} :catch_8b8
    .catchall {:try_start_894 .. :try_end_89f} :catchall_8ba

    if-nez v0, :cond_8a8

    if-eqz v12, :cond_8a6

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8a6
    move-object v0, v11

    goto :goto_8e3

    :cond_8a8
    move-object/from16 v5, p2

    const/4 v14, 0x1

    goto :goto_84f

    :cond_8ac
    move-object/from16 p2, v5

    .line 243
    :try_start_8ae
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8ae .. :try_end_8b2} :catch_8b8
    .catchall {:try_start_8ae .. :try_end_8b2} :catchall_8ba

    if-eqz v12, :cond_8e3

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_8e3

    :catch_8b8
    move-exception v0

    goto :goto_8c0

    :catchall_8ba
    move-exception v0

    move-object v5, v12

    goto :goto_8e8

    :catch_8bd
    move-exception v0

    move-object/from16 p2, v5

    :goto_8c0
    move-object v5, v12

    goto :goto_8c9

    :catchall_8c2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_8e8

    :catch_8c5
    move-exception v0

    move-object/from16 p2, v5

    const/4 v5, 0x0

    .line 305
    :goto_8c9
    :try_start_8c9
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 244
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 245
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 246
    invoke-virtual {v8, v15, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_8de
    .catchall {:try_start_8c9 .. :try_end_8de} :catchall_8e7

    if-eqz v5, :cond_8e3

    .line 242
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_8e3
    :goto_8e3
    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f0

    :catchall_8e7
    move-exception v0

    :goto_8e8
    if-eqz v5, :cond_8ed

    .line 242
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_8ed
    throw v0

    :cond_8ee
    move-object/from16 p2, v5

    .line 249
    :goto_8f0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8f8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 250
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_923

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a1a

    .line 251
    :cond_923
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 252
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x1

    :goto_92e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a05

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 253
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 254
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_996

    .line 255
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v12

    .line 256
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v12

    .line 257
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 258
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v17

    if-eqz v17, :cond_968

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_969

    :cond_968
    const/4 v13, 0x0

    :goto_969
    move-object/from16 p3, v0

    .line 259
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgx;

    move-result-object v0

    move-object/from16 v17, v2

    .line 260
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgx;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Evaluating filter. audience, filter, property"

    .line 261
    invoke-virtual {v12, v2, v14, v13, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 264
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzs(Lcom/google/android/gms/internal/measurement/zzfr;)Ljava/lang/String;

    move-result-object v2

    const-string v12, "Filter definition"

    invoke-virtual {v0, v12, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_99a

    :cond_996
    move-object/from16 p3, v0

    move-object/from16 v17, v2

    .line 266
    :goto_99a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v0

    if-eqz v0, :cond_9dd

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_9a9

    goto :goto_9dd

    .line 276
    :cond_9a9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v7, v10}, Lcom/google/android/gms/measurement/internal/zzac;-><init>(Lcom/google/android/gms/measurement/internal/zzae;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfr;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:Ljava/lang/Long;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Ljava/lang/Long;

    .line 267
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v10

    invoke-direct {v1, v7, v10}, Lcom/google/android/gms/measurement/internal/zzae;->zzf(II)Z

    move-result v10

    .line 268
    invoke-virtual {v0, v2, v11, v6, v10}, Lcom/google/android/gms/measurement/internal/zzac;->zzd(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzio;Z)Z

    move-result v10

    if-eqz v10, :cond_9d3

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zzd(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 270
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Lcom/google/android/gms/measurement/internal/zzab;)V

    move-object/from16 v0, p3

    move-object/from16 v2, v17

    goto/16 :goto_92e

    :cond_9d3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 275
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a09

    .line 271
    :cond_9dd
    :goto_9dd
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 273
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zzj()Z

    move-result v8

    if-eqz v8, :cond_9fa

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_9fb

    :cond_9fa
    const/4 v8, 0x0

    :goto_9fb
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "Invalid property filter ID. appId, id"

    .line 274
    invoke-virtual {v0, v10, v2, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a0b

    :cond_a05
    move-object/from16 p3, v0

    move-object/from16 v17, v2

    :goto_a09
    if-nez v10, :cond_a14

    :goto_a0b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 276
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a14
    move-object/from16 v0, p3

    move-object/from16 v2, v17

    goto/16 :goto_8f8

    :cond_a1a
    :goto_a1a
    move-object/from16 v5, p2

    goto/16 :goto_7f0

    .line 218
    :cond_a1e
    :goto_a1e
    new-instance v2, Ljava/util/ArrayList;

    .line 279
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    .line 280
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/util/Set;

    .line 281
    invoke-interface {v0, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 282
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a32
    :goto_a32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Ljava/util/Map;

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzy;

    .line 284
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(I)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v0

    .line 286
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 287
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 288
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zzd()Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v0

    .line 289
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 290
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 291
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v0

    new-instance v8, Landroid/content/ContentValues;

    .line 294
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    .line 295
    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v8, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 298
    :try_start_a84
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v6, "audience_filter_values"
    :try_end_a8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a84 .. :try_end_a8a} :catch_aac

    const/4 v10, 0x5

    const/4 v12, 0x0

    .line 299
    :try_start_a8c
    invoke-virtual {v0, v6, v12, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v10

    const-wide/16 v13, -0x1

    cmp-long v0, v10, v13

    if-nez v0, :cond_a32

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 300
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 302
    invoke-virtual {v0, v6, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_aa9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a8c .. :try_end_aa9} :catch_aaa

    goto :goto_a32

    :catch_aaa
    move-exception v0

    goto :goto_aae

    :catch_aac
    move-exception v0

    const/4 v12, 0x0

    .line 75
    :goto_aae
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 303
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 304
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Error storing filter results. appId"

    .line 305
    invoke-virtual {v5, v7, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a32

    :cond_ac3
    return-object v2

    .line 242
    :cond_ac4
    new-instance v0, Ljava/util/ArrayList;

    .line 307
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :catchall_aca
    move-exception v0

    move-object v5, v7

    :goto_acc
    if-eqz v5, :cond_ad1

    .line 69
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_ad1
    throw v0
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
