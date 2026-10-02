.class public final Lcom/google/android/gms/measurement/internal/zzgv;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static final zza:[Ljava/lang/String;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzgt;

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app_version"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "app_version_int"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgv;->zza:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgt;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgt;-><init>(Lcom/google/android/gms/measurement/internal/zzgv;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzb:Lcom/google/android/gms/measurement/internal/zzgt;

    return-void
.end method

.method static bridge synthetic zzr()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgv;->zza:[Ljava/lang/String;

    return-object v0
.end method

.method private final zzs(I[B)Z
    .registers 22

    move-object/from16 v1, p0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    goto :goto_6c

    :cond_b
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 3
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzk(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v0, v5

    :goto_26
    new-instance v4, Landroid/content/ContentValues;

    .line 7
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "entry"

    move-object/from16 v7, p2

    .line 9
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 11
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v6

    if-eqz v6, :cond_5b

    if-eqz v0, :cond_5b

    const-string v6, "app_version"

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    const-string v0, "app_version_int"

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14
    :cond_5b
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const/4 v6, 0x5

    move v7, v2

    move v8, v6

    :goto_61
    if-ge v7, v6, :cond_17d

    const/4 v9, 0x1

    .line 15
    :try_start_64
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_68
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_64 .. :try_end_68} :catch_14b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_64 .. :try_end_68} :catch_136
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_68} :catch_10d
    .catchall {:try_start_64 .. :try_end_68} :catchall_109

    if-nez v10, :cond_6d

    :try_start_6a
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    :goto_6c
    return v2

    .line 16
    :cond_6d
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    .line 17
    invoke-virtual {v10, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_76
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6a .. :try_end_76} :catch_104
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6a .. :try_end_76} :catch_100
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6a .. :try_end_76} :catch_fb
    .catchall {:try_start_6a .. :try_end_76} :catchall_f8

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_93

    .line 18
    :try_start_7a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 19
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7a .. :try_end_84} :catch_8e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7a .. :try_end_84} :catch_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_84} :catch_85
    .catchall {:try_start_7a .. :try_end_84} :catchall_170

    goto :goto_93

    :catch_85
    move-exception v0

    move/from16 v18, v2

    goto/16 :goto_112

    :catch_8a
    move/from16 v18, v2

    goto/16 :goto_13a

    :catch_8e
    move-exception v0

    move/from16 v18, v2

    goto/16 :goto_150

    :cond_93
    :goto_93
    const-wide/32 v14, 0x186a0

    cmp-long v0, v12, v14

    const-string v14, "messages"

    if-ltz v0, :cond_df

    .line 20
    :try_start_9c
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v15, "Data loss, local db full"

    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v15, v9, [Ljava/lang/String;

    const-wide/32 v16, 0x186a1

    sub-long v16, v16, v12

    .line 22
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v15, v2

    .line 23
    invoke-virtual {v10, v14, v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v12, v16

    if-eqz v0, :cond_df

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v15, "Different delete count than expected in local db. expected, received, difference"
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9c .. :try_end_cb} :catch_8e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9c .. :try_end_cb} :catch_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9c .. :try_end_cb} :catch_85
    .catchall {:try_start_9c .. :try_end_cb} :catchall_170

    move/from16 v18, v2

    .line 26
    :try_start_cd
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 27
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sub-long v16, v16, v12

    .line 28
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 29
    invoke-virtual {v0, v15, v2, v6, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e1

    :cond_df
    move/from16 v18, v2

    .line 30
    :goto_e1
    invoke-virtual {v10, v14, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 31
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 32
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ea
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_cd .. :try_end_ea} :catch_f5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_cd .. :try_end_ea} :catch_13a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cd .. :try_end_ea} :catch_f3
    .catchall {:try_start_cd .. :try_end_ea} :catchall_170

    if-eqz v11, :cond_ef

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 38
    :cond_ef
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v9

    :catch_f3
    move-exception v0

    goto :goto_112

    :catch_f5
    move-exception v0

    goto/16 :goto_150

    :catchall_f8
    move-exception v0

    goto/16 :goto_172

    :catch_fb
    move-exception v0

    move/from16 v18, v2

    move-object v11, v5

    goto :goto_112

    :catch_100
    move/from16 v18, v2

    move-object v11, v5

    goto :goto_13a

    :catch_104
    move-exception v0

    move/from16 v18, v2

    move-object v11, v5

    goto :goto_150

    :catchall_109
    move-exception v0

    move-object v10, v5

    goto/16 :goto_172

    :catch_10d
    move-exception v0

    move/from16 v18, v2

    move-object v10, v5

    move-object v11, v10

    :goto_112
    if-eqz v10, :cond_11d

    .line 33
    :try_start_114
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 34
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_11d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v6, "Error writing entry to local database"

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z
    :try_end_12e
    .catchall {:try_start_114 .. :try_end_12e} :catchall_170

    if-eqz v11, :cond_133

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_133
    if-eqz v10, :cond_169

    goto :goto_147

    :catch_136
    move/from16 v18, v2

    move-object v10, v5

    move-object v11, v10

    :catch_13a
    :goto_13a
    int-to-long v12, v8

    .line 39
    :try_start_13b
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_170

    add-int/lit8 v8, v8, 0x14

    if-eqz v11, :cond_145

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_145
    if-eqz v10, :cond_169

    .line 38
    :goto_147
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_169

    :catch_14b
    move-exception v0

    move/from16 v18, v2

    move-object v10, v5

    move-object v11, v10

    .line 43
    :goto_150
    :try_start_150
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v6, "Error writing entry; local database full"

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z
    :try_end_161
    .catchall {:try_start_150 .. :try_end_161} :catchall_170

    if-eqz v11, :cond_166

    .line 37
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_166
    if-eqz v10, :cond_169

    goto :goto_147

    :cond_169
    :goto_169
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v18

    const/4 v6, 0x5

    goto/16 :goto_61

    :catchall_170
    move-exception v0

    move-object v5, v11

    :goto_172
    if-eqz v5, :cond_177

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_177
    if-eqz v10, :cond_17c

    .line 38
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 44
    :cond_17c
    throw v0

    :cond_17d
    move/from16 v18, v2

    .line 38
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v18
.end method


# virtual methods
.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzh()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzb:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method public final zzi(I)Ljava/util/List;
    .registers 29

    move-object/from16 v1, p0

    .line 1
    const-string v2, "entry"

    const-string v3, "type"

    const-string v4, "Error reading entries from local database"

    const-string v5, "rowid"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_13

    return-object v6

    :cond_13
    new-instance v7, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzl()Z

    move-result v0

    if-eqz v0, :cond_3b4

    const/4 v8, 0x5

    const/4 v9, 0x0

    move v11, v8

    move v10, v9

    :goto_22
    if-ge v10, v8, :cond_3a2

    const/4 v12, 0x1

    .line 4
    :try_start_25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_25 .. :try_end_29} :catch_366
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_25 .. :try_end_29} :catch_34c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_29} :catch_31f
    .catchall {:try_start_25 .. :try_end_29} :catchall_31a

    if-nez v13, :cond_2e

    :try_start_2b
    iput-boolean v12, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    return-object v6

    .line 5
    :cond_2e
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2b .. :try_end_33} :catch_311
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2b .. :try_end_33} :catch_309
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_33} :catch_300
    .catchall {:try_start_2b .. :try_end_33} :catchall_2fc

    :try_start_33
    const-string v14, "messages"

    new-array v15, v12, [Ljava/lang/String;

    aput-object v5, v15, v9

    const-string v16, "type=?"

    new-array v8, v12, [Ljava/lang/String;

    aput-object v0, v8, v9

    const-string v20, "rowid desc"

    const-string v21, "1"

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v8

    .line 6
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_2e8

    .line 7
    :try_start_4d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v22, -0x1

    if-eqz v0, :cond_5f

    .line 9
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_2df

    if-eqz v8, :cond_66

    .line 8
    :try_start_5b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_66

    :cond_5f
    if-eqz v8, :cond_64

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_64
    move-wide/from16 v14, v22

    :cond_66
    :goto_66
    cmp-long v0, v14, v22

    if-eqz v0, :cond_79

    const-string v0, "rowid<?"

    new-array v8, v12, [Ljava/lang/String;

    .line 11
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v9

    move-object/from16 v16, v0

    move-object/from16 v17, v8

    goto :goto_7d

    :cond_79
    move-object/from16 v16, v6

    move-object/from16 v17, v16

    :goto_7d
    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    aput-object v5, v8, v9

    aput-object v3, v8, v12

    const/4 v14, 0x2

    aput-object v2, v8, v14

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    move/from16 v18, v14

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    move/from16 v24, v0

    .line 13
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 14
    invoke-virtual {v14, v6, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    const/4 v14, 0x4

    if-eqz v0, :cond_ac

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/String;

    aput-object v5, v8, v9

    aput-object v3, v8, v12

    aput-object v2, v8, v18

    const-string v0, "app_version"

    aput-object v0, v8, v24

    const-string v0, "app_version_int"

    aput-object v0, v8, v14

    goto :goto_ad

    :cond_ac
    const/4 v6, 0x5

    :goto_ad
    move v0, v14

    const-string v14, "messages"

    const-string v20, "rowid asc"

    const/16 v19, 0x64

    .line 15
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v26, v19

    const/16 v19, 0x0

    move-object v6, v8

    move v8, v0

    move-object v0, v15

    move-object v15, v6

    move/from16 v6, v26

    .line 16
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_ca
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5b .. :try_end_ca} :catch_311
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5b .. :try_end_ca} :catch_309
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_ca} :catch_300
    .catchall {:try_start_5b .. :try_end_ca} :catchall_2fc

    .line 17
    :goto_ca
    :try_start_ca
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_ce
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ca .. :try_end_ce} :catch_2d5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ca .. :try_end_ce} :catch_2cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ca .. :try_end_ce} :catch_2c2
    .catchall {:try_start_ca .. :try_end_ce} :catchall_395

    if-eqz v15, :cond_272

    .line 18
    :try_start_d0
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 19
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 20
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzgi;->zzbl:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v8, 0x0

    .line 22
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v6

    if-eqz v6, :cond_f5

    move/from16 v6, v24

    .line 23
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x4

    .line 24
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20
    :try_end_f4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d0 .. :try_end_f4} :catch_26b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d0 .. :try_end_f4} :catch_265
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d0 .. :try_end_f4} :catch_25e
    .catchall {:try_start_d0 .. :try_end_f4} :catchall_395

    goto :goto_f8

    :cond_f5
    const-wide/16 v20, 0x0

    const/4 v8, 0x0

    :goto_f8
    move-object v6, v2

    move-object v9, v3

    move-wide/from16 v2, v20

    if-nez v15, :cond_15c

    .line 25
    :try_start_fe
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_fe .. :try_end_102} :catch_155
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_fe .. :try_end_102} :catch_14f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_fe .. :try_end_102} :catch_148
    .catchall {:try_start_fe .. :try_end_102} :catchall_395

    move-object/from16 v20, v0

    .line 26
    :try_start_104
    array-length v0, v12
    :try_end_105
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_104 .. :try_end_105} :catch_12a
    .catchall {:try_start_104 .. :try_end_105} :catchall_126

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :try_start_108
    invoke-virtual {v15, v12, v5, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 27
    invoke-virtual {v15, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 28
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbh;
    :try_end_116
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_108 .. :try_end_116} :catch_12c
    .catchall {:try_start_108 .. :try_end_116} :catchall_124

    .line 31
    :try_start_116
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_13e

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {v5, v0, v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 32
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_123
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_116 .. :try_end_123} :catch_1a1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_116 .. :try_end_123} :catch_151
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_116 .. :try_end_123} :catch_19f
    .catchall {:try_start_116 .. :try_end_123} :catchall_395

    goto :goto_13e

    :catchall_124
    move-exception v0

    goto :goto_144

    :catchall_126
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_144

    :catch_12a
    move-object/from16 v21, v5

    .line 10
    :catch_12c
    :try_start_12c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to load event from local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_12c .. :try_end_13b} :catchall_124

    .line 31
    :try_start_13b
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    :cond_13e
    :goto_13e
    move-object/from16 v18, v6

    const/4 v0, 0x2

    :cond_141
    :goto_141
    const/4 v6, 0x3

    goto/16 :goto_24f

    :goto_144
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 64
    throw v0

    :catch_148
    move-exception v0

    move-object/from16 v21, v5

    :goto_14b
    move-object/from16 v18, v6

    goto/16 :goto_2b5

    :catch_14f
    move-object/from16 v21, v5

    :catch_151
    move-object/from16 v18, v6

    goto/16 :goto_2b9

    :catch_155
    move-exception v0

    move-object/from16 v21, v5

    :goto_158
    move-object/from16 v18, v6

    goto/16 :goto_2be

    :cond_15c
    move-object/from16 v20, v0

    move-object/from16 v21, v5

    const/4 v5, 0x1

    if-ne v15, v5, :cond_1a3

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_167
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13b .. :try_end_167} :catch_1a1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13b .. :try_end_167} :catch_151
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13b .. :try_end_167} :catch_19f
    .catchall {:try_start_13b .. :try_end_167} :catchall_395

    .line 34
    :try_start_167
    array-length v0, v12

    const/4 v15, 0x0

    invoke-virtual {v5, v12, v15, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 35
    invoke-virtual {v5, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzqb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzqb;
    :try_end_177
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_167 .. :try_end_177} :catch_17d
    .catchall {:try_start_167 .. :try_end_177} :catchall_17b

    .line 39
    :try_start_177
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_17a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_177 .. :try_end_17a} :catch_1a1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_177 .. :try_end_17a} :catch_151
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_177 .. :try_end_17a} :catch_19f
    .catchall {:try_start_177 .. :try_end_17a} :catchall_395

    goto :goto_190

    :catchall_17b
    move-exception v0

    goto :goto_19b

    .line 64
    :catch_17d
    :try_start_17d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v12, "Failed to load user property from local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_18c
    .catchall {:try_start_17d .. :try_end_18c} :catchall_17b

    .line 39
    :try_start_18c
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_190
    if-eqz v0, :cond_13e

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {v5, v0, v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 40
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13e

    .line 39
    :goto_19b
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v0

    :catch_19f
    move-exception v0

    goto :goto_14b

    :catch_1a1
    move-exception v0

    goto :goto_158

    :cond_1a3
    const/4 v0, 0x2

    if-ne v15, v0, :cond_1eb

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1aa
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18c .. :try_end_1aa} :catch_1a1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18c .. :try_end_1aa} :catch_151
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18c .. :try_end_1aa} :catch_19f
    .catchall {:try_start_18c .. :try_end_1aa} :catchall_395

    .line 42
    :try_start_1aa
    array-length v15, v12
    :try_end_1ab
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_1aa .. :try_end_1ab} :catch_1c6
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1c2

    move-object/from16 v18, v6

    const/4 v6, 0x0

    :try_start_1ae
    invoke-virtual {v5, v12, v6, v15}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 43
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzai;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    invoke-interface {v6, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzai;
    :try_end_1bc
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_1ae .. :try_end_1bc} :catch_1c8
    .catchall {:try_start_1ae .. :try_end_1bc} :catchall_1c0

    .line 49
    :try_start_1bc
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_1bf
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1bc .. :try_end_1bf} :catch_2bd
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1bc .. :try_end_1bf} :catch_2b9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1bc .. :try_end_1bf} :catch_2b4
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_395

    goto :goto_1db

    :catchall_1c0
    move-exception v0

    goto :goto_1e7

    :catchall_1c2
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_1e7

    :catch_1c6
    move-object/from16 v18, v6

    .line 65
    :catch_1c8
    :try_start_1c8
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v12, "Failed to load conditional user property from local database"

    .line 48
    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_1d7
    .catchall {:try_start_1c8 .. :try_end_1d7} :catchall_1c0

    .line 49
    :try_start_1d7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v6, 0x0

    :goto_1db
    if-eqz v6, :cond_141

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {v5, v6, v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 50
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_141

    .line 49
    :goto_1e7
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 66
    throw v0

    :cond_1eb
    move-object/from16 v18, v6

    const/4 v6, 0x4

    if-ne v15, v6, :cond_22d

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1f4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1d7 .. :try_end_1f4} :catch_2bd
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1d7 .. :try_end_1f4} :catch_2b9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d7 .. :try_end_1f4} :catch_2b4
    .catchall {:try_start_1d7 .. :try_end_1f4} :catchall_395

    .line 52
    :try_start_1f4
    array-length v15, v12

    const/4 v6, 0x0

    invoke-virtual {v5, v12, v6, v15}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 53
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzbf;
    :try_end_204
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_1f4 .. :try_end_204} :catch_20a
    .catchall {:try_start_1f4 .. :try_end_204} :catchall_208

    .line 58
    :try_start_204
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_207
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_204 .. :try_end_207} :catch_2bd
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_204 .. :try_end_207} :catch_2b9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_204 .. :try_end_207} :catch_2b4
    .catchall {:try_start_204 .. :try_end_207} :catchall_395

    goto :goto_21d

    :catchall_208
    move-exception v0

    goto :goto_229

    .line 66
    :catch_20a
    :try_start_20a
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 55
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v12, "Failed to load default event parameters from local database"

    .line 57
    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_219
    .catchall {:try_start_20a .. :try_end_219} :catchall_208

    .line 58
    :try_start_219
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v6, 0x0

    :goto_21d
    if-eqz v6, :cond_141

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {v5, v6, v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgu;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    .line 59
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_141

    .line 58
    :goto_229
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 67
    throw v0

    :cond_22d
    const/4 v6, 0x3

    if-ne v15, v6, :cond_240

    .line 59
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Skipping app launch break"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_24f

    :cond_240
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Unknown record type in local database"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :goto_24f
    move/from16 v24, v6

    move-object v3, v9

    move-object/from16 v2, v18

    move-object/from16 v5, v21

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v12, 0x1

    move v6, v0

    move-object/from16 v0, v20

    goto/16 :goto_ca

    :catch_25e
    move-exception v0

    move-object/from16 v18, v2

    move-object v9, v3

    move-object/from16 v21, v5

    goto :goto_2b5

    :catch_265
    move-object/from16 v18, v2

    move-object v9, v3

    move-object/from16 v21, v5

    goto :goto_2b9

    :catch_26b
    move-exception v0

    move-object/from16 v18, v2

    move-object v9, v3

    move-object/from16 v21, v5

    goto :goto_2be

    :cond_272
    move-object/from16 v18, v2

    move-object v9, v3

    move-object/from16 v21, v5

    const-string v0, "messages"

    const-string v2, "rowid <= ?"

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 68
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5
    :try_end_282
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_219 .. :try_end_282} :catch_2bd
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_219 .. :try_end_282} :catch_2b9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_219 .. :try_end_282} :catch_2b4
    .catchall {:try_start_219 .. :try_end_282} :catchall_395

    const/16 v17, 0x0

    :try_start_284
    aput-object v5, v3, v17

    .line 69
    invoke-virtual {v13, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 70
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 73
    :cond_29f
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 74
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2a5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_284 .. :try_end_2a5} :catch_2b1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_284 .. :try_end_2a5} :catch_355
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_284 .. :try_end_2a5} :catch_2ae
    .catchall {:try_start_284 .. :try_end_2a5} :catchall_395

    if-eqz v14, :cond_2aa

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2aa
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v7

    :catch_2ae
    move-exception v0

    goto/16 :goto_329

    :catch_2b1
    move-exception v0

    goto/16 :goto_370

    :catch_2b4
    move-exception v0

    :goto_2b5
    const/16 v17, 0x0

    goto/16 :goto_329

    :catch_2b9
    :goto_2b9
    const/16 v17, 0x0

    goto/16 :goto_355

    :catch_2bd
    move-exception v0

    :goto_2be
    const/16 v17, 0x0

    goto/16 :goto_370

    :catch_2c2
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto/16 :goto_329

    :catch_2cc
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto/16 :goto_355

    :catch_2d5
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto/16 :goto_370

    :catchall_2df
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto :goto_2f1

    :catchall_2e8
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    const/4 v8, 0x0

    :goto_2f1
    if-eqz v8, :cond_2f6

    .line 8
    :try_start_2f3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_2f6
    throw v0
    :try_end_2f7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2f3 .. :try_end_2f7} :catch_2f9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2f3 .. :try_end_2f7} :catch_354
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f3 .. :try_end_2f7} :catch_2f7
    .catchall {:try_start_2f3 .. :try_end_2f7} :catchall_2fc

    :catch_2f7
    move-exception v0

    goto :goto_328

    :catch_2f9
    move-exception v0

    goto/16 :goto_36f

    :catchall_2fc
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_397

    :catch_300
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto :goto_328

    :catch_309
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto :goto_354

    :catch_311
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    goto :goto_36f

    :catchall_31a
    move-exception v0

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto/16 :goto_397

    :catch_31f
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    const/4 v13, 0x0

    :goto_328
    const/4 v14, 0x0

    :goto_329
    if-eqz v13, :cond_334

    .line 75
    :try_start_32b
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_334

    .line 76
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_334
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z
    :try_end_344
    .catchall {:try_start_32b .. :try_end_344} :catchall_395

    if-eqz v14, :cond_349

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_349
    if-eqz v13, :cond_388

    goto :goto_362

    :catch_34c
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    const/4 v13, 0x0

    :catch_354
    :goto_354
    const/4 v14, 0x0

    :catch_355
    :goto_355
    int-to-long v2, v11

    .line 81
    :try_start_356
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_359
    .catchall {:try_start_356 .. :try_end_359} :catchall_395

    add-int/lit8 v11, v11, 0x14

    if-eqz v14, :cond_360

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_360
    if-eqz v13, :cond_388

    .line 80
    :goto_362
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_388

    :catch_366
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v5

    move/from16 v17, v9

    move-object v9, v3

    const/4 v13, 0x0

    :goto_36f
    const/4 v14, 0x0

    .line 85
    :goto_370
    :try_start_370
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z
    :try_end_380
    .catchall {:try_start_370 .. :try_end_380} :catchall_395

    if-eqz v14, :cond_385

    .line 79
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_385
    if-eqz v13, :cond_388

    goto :goto_362

    :cond_388
    :goto_388
    add-int/lit8 v10, v10, 0x1

    move-object v3, v9

    move/from16 v9, v17

    move-object/from16 v2, v18

    move-object/from16 v5, v21

    const/4 v6, 0x0

    const/4 v8, 0x5

    goto/16 :goto_22

    :catchall_395
    move-exception v0

    move-object v6, v14

    :goto_397
    if-eqz v6, :cond_39c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_39c
    if-eqz v13, :cond_3a1

    .line 80
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    :cond_3a1
    throw v0

    .line 8
    :cond_3a2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/16 v25, 0x0

    return-object v25

    :cond_3b4
    return-object v7
.end method

.method public final zzj()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgv;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_25} :catch_26

    :cond_25
    return-void

    :catch_26
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk()Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgv;->zzs(I[B)Z

    move-result v0

    return v0
.end method

.method final zzl()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    const-string v0, "google_app_measurement_local.db"

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final zzm()Z
    .registers 12

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    goto/16 :goto_99

    .line 2
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgv;->zzl()Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v1, 0x5

    move v4, v1

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_8a

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3
    :try_start_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgv;->zzh()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_23

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    goto/16 :goto_99

    .line 4
    :cond_23
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x3

    .line 5
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 6
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_3c} :catch_44
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_3c} :catch_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3c} :catch_42
    .catchall {:try_start_19 .. :try_end_3c} :catchall_40

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v6

    :catchall_40
    move-exception v0

    goto :goto_84

    :catch_42
    move-exception v7

    goto :goto_46

    :catch_44
    move-exception v7

    goto :goto_6f

    :goto_46
    if-eqz v5, :cond_51

    .line 9
    :try_start_48
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_51
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z

    if-eqz v5, :cond_81

    goto :goto_6b

    :catch_63
    int-to-long v6, v4

    .line 14
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_67
    .catchall {:try_start_48 .. :try_end_67} :catchall_40

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_81

    .line 13
    :goto_6b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_81

    .line 19
    :goto_6f
    :try_start_6f
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 15
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzgv;->zzc:Z
    :try_end_7e
    .catchall {:try_start_6f .. :try_end_7e} :catchall_40

    if-eqz v5, :cond_81

    goto :goto_6b

    :cond_81
    :goto_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :goto_84
    if-eqz v5, :cond_89

    .line 13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 20
    :cond_89
    throw v0

    .line 13
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_99
    :goto_99
    return v2
.end method

.method public final zzn(Lcom/google/android/gms/measurement/internal/zzai;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzay(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 3
    array-length v1, p1

    const/high16 v2, 0x20000

    if-le v1, v2, :cond_1e

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1e
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzo(Lcom/google/android/gms/measurement/internal/zzbf;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzay(Landroid/os/Parcelable;)[B

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1b

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Null default event parameters; not writing to database"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v1

    :cond_1b
    array-length v2, p1

    const/high16 v3, 0x20000

    if-le v2, v3, :cond_2e

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Default event parameters too long for local database. Sending directly to service"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v1

    :cond_2e
    const/4 v0, 0x4

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzp(Lcom/google/android/gms/measurement/internal/zzbh;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zza(Lcom/google/android/gms/measurement/internal/zzbh;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_24
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzs(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzq(Lcom/google/android/gms/measurement/internal/zzqb;)Z
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzqc;->zza(Lcom/google/android/gms/measurement/internal/zzqb;Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v1

    :cond_24
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgv;->zzs(I[B)Z

    move-result p1

    return p1
.end method
