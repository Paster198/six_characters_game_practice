.class public final Lcom/google/android/gms/measurement/internal/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# direct methods
.method static zza(Lcom/google/android/gms/measurement/internal/zzhe;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    const-string v3, "SELECT * FROM "

    if-eqz p0, :cond_ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1
    :try_start_a
    const-string v7, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const-string v6, "name"

    aput-object v6, v8, v5

    const-string v9, "name=?"

    new-array v10, v0, [Ljava/lang/String;

    aput-object v1, v10, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v6, p1

    .line 2
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_21} :catch_33
    .catchall {:try_start_a .. :try_end_21} :catchall_2f

    .line 3
    :try_start_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_25} :catch_2d
    .catchall {:try_start_21 .. :try_end_25} :catchall_e1

    if-eqz v7, :cond_2a

    .line 5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2a
    if-nez v0, :cond_48

    goto :goto_43

    :catch_2d
    move-exception v0

    goto :goto_35

    :catchall_2f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_e4

    :catch_33
    move-exception v0

    move-object v7, v4

    .line 20
    :goto_35
    :try_start_35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v9, "Error querying for table"

    .line 4
    invoke-virtual {v8, v9, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_e1

    if-eqz v7, :cond_43

    .line 5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_43
    :goto_43
    move-object/from16 v7, p3

    .line 7
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_48
    :try_start_48
    new-instance v0, Ljava/util/HashSet;

    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT 0"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_62} :catch_d5

    .line 11
    :try_start_62
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_cf

    .line 12
    :try_start_69
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v3, ","

    move-object/from16 v4, p4

    .line 14
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v7, v5

    :goto_76
    if-ge v7, v4, :cond_a2

    aget-object v8, v3, v7

    .line 15
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 16
    :cond_83
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is missing required column: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a2
    if-eqz v2, :cond_b9

    :goto_a4
    array-length v3, v2

    if-ge v5, v3, :cond_b9

    .line 17
    aget-object v3, v2, v5

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b6

    add-int/lit8 v3, v5, 0x1

    .line 18
    aget-object v3, v2, v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b6
    add-int/lit8 v5, v5, 0x2

    goto :goto_a4

    .line 19
    :cond_b9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ce

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v2, "Table has extra columns. table, columns"

    const-string v3, ", "

    .line 20
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ce
    return-void

    :catchall_cf
    move-exception v0

    move-object p1, v0

    .line 12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 13
    throw p1
    :try_end_d5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception v0

    move-object p1, v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v0, "Failed to verify columns on table that was just created"

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    throw p1

    :catchall_e1
    move-exception v0

    move-object p0, v0

    move-object v4, v7

    :goto_e4
    if-eqz v4, :cond_e9

    .line 5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_e9
    throw p0

    .line 1
    :cond_ea
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzb(Lcom/google/android/gms/measurement/internal/zzhe;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    if-eqz p0, :cond_4f

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbx;->zza()Lcom/google/android/gms/internal/measurement/zzby;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget v1, Lcom/google/android/gms/internal/measurement/zzcc;->zzb:I

    .line 2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to turn off database read permission"

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 6
    :cond_20
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v1, "Failed to turn off database write permission"

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_2f
    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to turn on database read permission for owner"

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 10
    :cond_3f
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_4e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string p1, "Failed to turn on database write permission for owner"

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_4e
    return-void

    .line 1
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Monitor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
