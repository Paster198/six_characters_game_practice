.class final Lcom/google/android/gms/internal/gtm/zzcd;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzce;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 1
    const-string v0, "google_analytics_v4.db"

    invoke-direct {p0, p2, v0, p1, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private final zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 14

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_3
    new-array v5, v0, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v5, v2

    new-array v7, v0, [Ljava/lang/String;

    aput-object p2, v7, v2

    const-string v4, "SQLITE_MASTER"

    const-string v6, "name=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    .line 1
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_1d} :catch_26
    .catchall {:try_start_3 .. :try_end_1d} :catchall_23

    if-eqz v1, :cond_22

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_22
    return p1

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_35

    :catch_26
    move-exception v0

    move-object p1, v0

    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    const-string v3, "Error querying for table"

    .line 3
    invoke-virtual {v0, v3, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_23

    if-eqz v1, :cond_34

    .line 4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_34
    return v2

    :goto_35
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5
    :cond_3a
    throw p1
.end method

.method private static final zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIMIT 0"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 4
    :try_start_26
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    :goto_2b
    array-length v2, p1

    if-ge v1, v2, :cond_36

    .line 6
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 7
    :cond_36
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_3a
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 8
    throw p1
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzg(Lcom/google/android/gms/internal/gtm/zzce;)Lcom/google/android/gms/internal/gtm/zzfo;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfo;->zzc(J)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3
    :try_start_f
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzg(Lcom/google/android/gms/internal/gtm/zzce;)Lcom/google/android/gms/internal/gtm/zzfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    const-string v1, "Opening the database failed, dropping the table and recreating it"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzce;->zzh(Lcom/google/android/gms/internal/gtm/zzce;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8
    :try_start_37
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzce;->zzg(Lcom/google/android/gms/internal/gtm/zzce;)Lcom/google/android/gms/internal/gtm/zzfo;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzfo;->zza()V
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_44} :catch_45

    return-object v0

    :catch_45
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcd;->zza:Lcom/google/android/gms/internal/gtm/zzce;

    const-string v2, "Failed to open freshly created database"

    .line 10
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    throw v0

    .line 2
    :cond_4e
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database open failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    :try_start_4
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_a} :catch_23

    const/16 v1, 0x9

    if-ge v0, v1, :cond_f

    return-void

    :cond_f
    new-instance v0, Ljava/io/File;

    .line 4
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    return-void

    :catch_23
    const-string p1, "Invalid version number"

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12

    .line 5
    const-string v0, "hits2"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzcd;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_15

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzce;->zzi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_68

    .line 6
    :cond_15
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzcd;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v7, "hit_id"

    aput-object v7, v1, v6

    const-string v7, "hit_string"

    aput-object v7, v1, v5

    const-string v7, "hit_time"

    aput-object v7, v1, v3

    const-string v7, "hit_url"

    aput-object v7, v1, v2

    move v7, v6

    :goto_2c
    if-ge v7, v4, :cond_55

    .line 7
    aget-object v8, v1, v7

    .line 8
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    .line 9
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Database hits2 is missing required column: "

    if-eqz v1, :cond_49

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 19
    :cond_49
    new-instance v0, Ljava/lang/String;

    .line 9
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4e
    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    :cond_55
    const-string v1, "hit_app_id"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ce

    if-nez v1, :cond_68

    .line 12
    const-string v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER"

    .line 13
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 15
    :cond_68
    :goto_68
    const-string v0, "properties"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzcd;->zza(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzcd;->zzb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const-string v7, "app_uid"

    aput-object v7, v1, v6

    const-string v7, "cid"

    aput-object v7, v1, v5

    const-string v5, "tid"

    aput-object v5, v1, v3

    const-string v3, "params"

    aput-object v3, v1, v2

    const-string v2, "adid"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    const-string v3, "hits_count"

    aput-object v3, v1, v2

    :goto_90
    if-ge v6, v0, :cond_b9

    .line 17
    aget-object v2, v1, v6

    .line 18
    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b6

    .line 19
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Database properties is missing required column: "

    if-eqz v1, :cond_ad

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    .line 4
    :cond_ad
    new-instance v0, Ljava/lang/String;

    .line 19
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b2
    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b6
    add-int/lit8 v6, v6, 0x1

    goto :goto_90

    .line 20
    :cond_b9
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c0

    return-void

    .line 21
    :cond_c0
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database properties table has extra columns"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c8
    const-string v0, "CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;"

    .line 22
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_ce
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database hits2 has extra columns"

    invoke-direct {p1, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
