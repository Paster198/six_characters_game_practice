.class final Lcom/google/android/gms/measurement/internal/zzz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzae;

.field private zzb:Lcom/google/android/gms/internal/measurement/zzhm;

.field private zzc:Ljava/lang/Long;

.field private zzd:J


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzad;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhm;)Lcom/google/android/gms/internal/measurement/zzhm;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v9

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 4
    const-string v5, "_eid"

    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_240

    const-string v7, "_ep"

    .line 5
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1fe

    .line 14
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    const-string v0, "_en"

    .line 16
    invoke-static {v8, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 17
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4d

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    :cond_4d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Lcom/google/android/gms/internal/measurement/zzhm;

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_6a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/lang/Long;

    if-eqz v0, :cond_6a

    .line 20
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v0, v14, v16

    if-eqz v0, :cond_66

    goto :goto_6a

    :cond_66
    const-wide/16 v17, 0x0

    goto/16 :goto_142

    .line 21
    :cond_6a
    :goto_6a
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpg;->zzav()V

    .line 24
    :try_start_74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v14, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    aput-object v3, v15, v13

    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v2

    .line 26
    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_89} :catch_fc
    .catchall {:try_start_74 .. :try_end_89} :catchall_f5

    .line 27
    :try_start_89
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_aa

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v15, "Main event not found"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_9e} :catch_ef
    .catchall {:try_start_89 .. :try_end_9e} :catchall_1f6

    if-eqz v14, :cond_a3

    .line 30
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a3
    move-object v0, v7

    move-object/from16 v16, v0

    :cond_a6
    :goto_a6
    const-wide/16 v17, 0x0

    goto/16 :goto_119

    .line 31
    :cond_aa
    :try_start_aa
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 32
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_aa .. :try_end_b6} :catch_ef
    .catchall {:try_start_aa .. :try_end_b6} :catchall_1f6

    move-object/from16 v16, v7

    .line 33
    :try_start_b8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zze()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c8} :catch_d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b8 .. :try_end_c8} :catch_d2
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_1f6

    .line 37
    :try_start_c8
    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c8 .. :try_end_cc} :catch_d2
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_1f6

    if-eqz v14, :cond_a6

    .line 30
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_a6

    :catch_d2
    move-exception v0

    goto :goto_f2

    :catch_d4
    move-exception v0

    .line 56
    :try_start_d5
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v7

    const-string v15, "Failed to merge main event. appId, eventId"
    :try_end_e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d5 .. :try_end_e1} :catch_d2
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_1f6

    const-wide/16 v17, 0x0

    :try_start_e3
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 36
    invoke-virtual {v7, v15, v10, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e3 .. :try_end_ea} :catch_ed
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_1f6

    if-eqz v14, :cond_117

    goto :goto_114

    :catch_ed
    move-exception v0

    goto :goto_103

    :catch_ef
    move-exception v0

    move-object/from16 v16, v7

    :goto_f2
    const-wide/16 v17, 0x0

    goto :goto_103

    :catchall_f5
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    goto/16 :goto_1f8

    :catch_fc
    move-exception v0

    move-object/from16 v16, v7

    const-wide/16 v17, 0x0

    move-object/from16 v14, v16

    .line 13
    :goto_103
    :try_start_103
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v7, "Error selecting main event"

    invoke-virtual {v4, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_112
    .catchall {:try_start_103 .. :try_end_112} :catchall_1f6

    if-eqz v14, :cond_117

    .line 30
    :goto_114
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_117
    move-object/from16 v0, v16

    :goto_119
    if-eqz v0, :cond_1e4

    .line 41
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_121

    goto/16 :goto_1e4

    .line 45
    :cond_121
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhm;

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Lcom/google/android/gms/internal/measurement/zzhm;

    .line 46
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Lcom/google/android/gms/internal/measurement/zzhm;

    .line 48
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzqa;->zzH(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/lang/Long;

    :goto_142
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    const-wide/16 v10, -0x1

    add-long/2addr v4, v10

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    cmp-long v0, v4, v17

    if-gtz v0, :cond_186

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v5, "Clearing complex main event info. appId"

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :try_start_167
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "delete from main_event_params where app_id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v13

    .line 54
    invoke-virtual {v0, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_174
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_167 .. :try_end_174} :catch_175

    goto :goto_196

    :catch_175
    move-exception v0

    .line 40
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_196

    .line 68
    :cond_186
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    move-object v4, v6

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Lcom/google/android/gms/internal/measurement/zzhm;

    .line 58
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaf(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzhm;)Z

    .line 54
    :goto_196
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Lcom/google/android/gms/internal/measurement/zzhm;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a5
    :goto_1a5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhq;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/zzqa;->zzG(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v4

    if-nez v4, :cond_1a5

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a5

    .line 64
    :cond_1c6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d1

    .line 65
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v9, v0

    goto :goto_1e2

    .line 69
    :cond_1d1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    .line 68
    invoke-virtual {v0, v2, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1e2
    move-object v0, v12

    goto :goto_240

    .line 41
    :cond_1e4
    :goto_1e4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzz;->zza:Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 44
    invoke-virtual {v0, v2, v12, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v16

    :catchall_1f6
    move-exception v0

    move-object v7, v14

    :goto_1f8
    if-eqz v7, :cond_1fd

    .line 30
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_1fd
    throw v0

    :cond_1fe
    const-wide/16 v17, 0x0

    .line 30
    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzc:Ljava/lang/Long;

    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzb:Lcom/google/android/gms/internal/measurement/zzhm;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    .line 7
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "_epc"

    invoke-static {v8, v5, v3}, Lcom/google/android/gms/measurement/internal/zzqa;->zzI(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    cmp-long v3, v10, v17

    if-gtz v3, :cond_22d

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Complex event with zero extra param count. eventName"

    .line 10
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_240

    .line 11
    :cond_22d
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 12
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzz;->zzd:J

    move-object/from16 v3, p1

    move-object v7, v8

    .line 13
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzaf(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzhm;)Z

    .line 69
    :cond_240
    :goto_240
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzmd;->zzch()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzhl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhl;->zzg()Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    return-object v0
.end method
