.class final Lcom/google/android/gms/tagmanager/zzbc;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzbe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbe;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbc;->zza:Lcom/google/android/gms/tagmanager/zzbe;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 1
    const-string v0, "google_tagmanager.db"

    invoke-direct {p0, p2, v0, p1, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_15

    .line 3
    :catch_5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbc;->zza:Lcom/google/android/gms/tagmanager/zzbe;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzd(Lcom/google/android/gms/tagmanager/zzbe;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_tagmanager.db"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_1b

    .line 3
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbv;->zza(Ljava/lang/String;)Z

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15

    const-string v0, "Error querying for table datalayer"

    .line 3
    const-string v1, "datalayer"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    new-array v6, v3, [Ljava/lang/String;

    const-string v4, "name"

    const/4 v12, 0x0

    aput-object v4, v6, v12

    new-array v8, v3, [Ljava/lang/String;

    aput-object v1, v8, v12

    const-string v5, "SQLITE_MASTER"

    const-string v7, "name=?"
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_15} :catch_8b
    .catchall {:try_start_6 .. :try_end_15} :catchall_88

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 5
    :try_start_19
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_1d} :catch_8c
    .catchall {:try_start_19 .. :try_end_1d} :catchall_88

    .line 6
    :try_start_1d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_21} :catch_86
    .catchall {:try_start_1d .. :try_end_21} :catchall_83

    if-eqz p1, :cond_26

    .line 8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_26
    if-nez v0, :cond_2a

    goto/16 :goto_94

    .line 10
    :cond_2a
    const-string p1, "SELECT * FROM datalayer WHERE 0"

    .line 11
    invoke-virtual {v4, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    :try_start_35
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_39
    array-length v2, v1

    if-ge v12, v2, :cond_44

    .line 15
    aget-object v2, v1, v12

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_7e

    add-int/lit8 v12, v12, 0x1

    goto :goto_39

    .line 16
    :cond_44
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string p1, "key"

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    const-string p1, "value"

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    const-string p1, "ID"

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    const-string p1, "expires"

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 23
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6e

    return-void

    .line 24
    :cond_6e
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database has extra columns"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_76
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database column missing"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_7e
    move-exception v0

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 17
    throw v0

    :catchall_83
    move-exception v0

    move-object v2, p1

    goto :goto_9d

    :catch_86
    move-object v2, p1

    goto :goto_8c

    :catchall_88
    move-exception v0

    move-object p1, v0

    goto :goto_9d

    :catch_8b
    move-object v4, p1

    .line 7
    :catch_8c
    :goto_8c
    :try_start_8c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_9c

    if-eqz v2, :cond_94

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_94
    :goto_94
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzbe;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_9c
    move-exception v0

    :goto_9d
    if-eqz v2, :cond_a2

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    :cond_a2
    throw v0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
