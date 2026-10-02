.class final Lcom/google/android/gms/tagmanager/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzax;


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/tagmanager/zzbc;

.field private final zze:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "value"

    const-string v1, "expires"

    const-string v2, "datalayer"

    const-string v3, "ID"

    const-string v4, "key"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    .line 1
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbe;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfz;->zza()Lcom/google/android/gms/internal/gtm/zzfw;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/gtm/zzfw;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzc:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zze:Lcom/google/android/gms/common/util/Clock;

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbc;

    const-string v1, "google_tagmanager.db"

    .line 3
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzbc;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzbe;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzc:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zze()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbe;->zza:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/tagmanager/zzbe;)Ljava/util/List;
    .registers 13

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzk(J)V

    const-string v0, "Error opening database for loadSerialized."

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_17

    goto :goto_4b

    :cond_17
    const/4 v2, 0x2

    .line 17
    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "key"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const-string v2, "value"

    const/4 v11, 0x1

    aput-object v2, v3, v11

    const-string v2, "datalayer"

    const-string v8, "ID"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_a7

    .line 5
    :goto_31
    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_48

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbd;

    .line 6
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzbd;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_a2

    goto :goto_31

    .line 7
    :cond_48
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3
    :goto_4b
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tagmanager/zzbd;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzau;

    .line 11
    iget-object v4, v2, Lcom/google/android/gms/tagmanager/zzbd;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/tagmanager/zzbd;->zzb:[B

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 12
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6b
    .catchall {:try_start_48 .. :try_end_6b} :catchall_a7

    const/4 v2, 0x0

    .line 13
    :try_start_6c
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_71} :catch_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6c .. :try_end_71} :catch_89
    .catchall {:try_start_6c .. :try_end_71} :catchall_7f

    .line 14
    :try_start_71
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_91
    .catch Ljava/lang/ClassNotFoundException; {:try_start_71 .. :try_end_75} :catch_8a
    .catchall {:try_start_71 .. :try_end_75} :catchall_7c

    .line 15
    :try_start_75
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    .line 16
    :cond_78
    :goto_78
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_97
    .catchall {:try_start_75 .. :try_end_7b} :catchall_a7

    goto :goto_97

    :catchall_7c
    move-exception v0

    move-object v2, v6

    goto :goto_80

    :catchall_7f
    move-exception v0

    :goto_80
    if-eqz v2, :cond_85

    .line 15
    :try_start_82
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 16
    :cond_85
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_88} :catch_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_a7

    .line 18
    :catch_88
    :try_start_88
    throw v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_a7

    :catch_89
    move-object v6, v2

    :catch_8a
    if-eqz v6, :cond_78

    .line 15
    :try_start_8c
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_78

    :catch_90
    move-object v6, v2

    :catch_91
    if-eqz v6, :cond_78

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_96} :catch_97
    .catchall {:try_start_8c .. :try_end_96} :catchall_a7

    goto :goto_78

    .line 11
    :catch_97
    :goto_97
    :try_start_97
    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/tagmanager/zzau;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_a7

    goto :goto_54

    .line 17
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V

    return-object v1

    :catchall_a2
    move-exception v0

    .line 7
    :try_start_a3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    throw v0
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a7

    :catchall_a7
    move-exception v0

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V

    .line 19
    throw v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/tagmanager/zzbe;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Error opening database for clearKeysWithPrefix."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x2

    :try_start_a
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".%"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "datalayer"

    const-string v3, "key = ? OR key LIKE ?"

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    .line 4
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cleared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_41} :catch_47
    .catchall {:try_start_a .. :try_end_41} :catchall_45

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V

    return-void

    :catchall_45
    move-exception p1

    goto :goto_84

    :catch_47
    move-exception v0

    .line 6
    :try_start_48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error deleting entries with key prefix: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_48 .. :try_end_80} :catchall_45

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V

    return-void

    :goto_84
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V

    .line 8
    throw p1
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/tagmanager/zzbe;Ljava/util/List;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzbe;->zzl(Ljava/util/List;J)V

    return-void
.end method

.method private final zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbc;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 2
    :catch_7
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzj()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzd:Lcom/google/android/gms/tagmanager/zzbc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbc;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method private final zzk(J)V
    .registers 5

    const-string v0, "Error opening database for deleteOlderThan."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    :try_start_a
    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "datalayer"

    const-string p2, "expires <= ?"

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x21

    .line 3
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Deleted "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expired items"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_38} :catch_39

    return-void

    :catch_39
    const-string p1, "Error deleting old entries."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzl(Ljava/util/List;J)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tagmanager/zzbd;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/tagmanager/zzbe;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzbe;->zzk(J)V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v4, "Error opening database for getNumStoredEntries."

    .line 4
    invoke-direct {v1, v4}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_181

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_1c

    :cond_1a
    :goto_1a
    move v7, v6

    goto :goto_44

    .line 20
    :cond_1c
    :try_start_1c
    const-string v7, "SELECT COUNT(*) from datalayer"

    .line 5
    invoke-virtual {v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_22} :catch_38
    .catchall {:try_start_1c .. :try_end_22} :catchall_35

    .line 6
    :try_start_22
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 7
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_2c} :catch_39
    .catchall {:try_start_22 .. :try_end_2c} :catchall_179

    long-to-int v7, v7

    goto :goto_2f

    :cond_2e
    move v7, v6

    :goto_2f
    if-eqz v4, :cond_44

    .line 9
    :try_start_31
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_181

    goto :goto_44

    :catchall_35
    move-exception v0

    goto/16 :goto_17b

    :catch_38
    move-object v4, v5

    .line 21
    :catch_39
    :try_start_39
    const-string v7, "Error getting numStoredEntries"

    .line 8
    invoke-static {v7}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_179

    if-eqz v4, :cond_1a

    .line 9
    :try_start_40
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1a

    :cond_44
    :goto_44
    add-int/lit16 v7, v7, -0x7d0

    add-int/2addr v7, v0

    if-lez v7, :cond_137

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Error opening database for peekEntryIds."

    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_181

    if-nez v8, :cond_57

    goto :goto_bc

    :cond_57
    const/4 v0, 0x1

    .line 28
    :try_start_58
    new-array v10, v0, [Ljava/lang/String;

    const-string v0, "ID"

    aput-object v0, v10, v6

    const-string v0, "ID"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v9, "datalayer"

    const-string v11, "%s ASC"

    .line 13
    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 15
    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_78
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_58 .. :try_end_78} :catch_9a
    .catchall {:try_start_58 .. :try_end_78} :catchall_97

    .line 16
    :try_start_78
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 17
    :cond_7e
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_8d} :catch_95
    .catchall {:try_start_78 .. :try_end_8d} :catchall_12f

    if-nez v0, :cond_7e

    :cond_8f
    if-eqz v7, :cond_bc

    .line 20
    :goto_91
    :try_start_91
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_181

    goto :goto_bc

    :catch_95
    move-exception v0

    goto :goto_9c

    :catchall_97
    move-exception v0

    goto/16 :goto_131

    :catch_9a
    move-exception v0

    move-object v7, v5

    .line 29
    :goto_9c
    :try_start_9c
    const-string v8, "Error in peekEntries fetching entryIds: "

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_b1

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 29
    :cond_b1
    new-instance v0, Ljava/lang/String;

    .line 19
    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_9c .. :try_end_b9} :catchall_12f

    if-eqz v7, :cond_bc

    goto :goto_91

    .line 22
    :cond_bc
    :goto_bc
    :try_start_bc
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "DataLayer store full, deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries to make room."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 23
    invoke-virtual {v7, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzb(Ljava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    .line 24
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_137

    array-length v4, v0

    if-nez v4, :cond_eb

    goto :goto_137

    .line 36
    :cond_eb
    const-string v6, "Error opening database for deleteEntries."

    .line 25
    invoke-direct {v1, v6}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-eqz v6, :cond_137

    const-string v7, "%s in (%s)"

    const-string v8, "ID"

    const-string v9, ","

    const-string v10, "?"

    .line 26
    invoke-static {v4, v10}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 27
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_10b
    .catchall {:try_start_bc .. :try_end_10b} :catchall_181

    :try_start_10b
    const-string v7, "datalayer"

    .line 28
    invoke-virtual {v6, v7, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10b .. :try_end_110} :catch_111
    .catchall {:try_start_10b .. :try_end_110} :catchall_181

    goto :goto_137

    .line 38
    :catch_111
    :try_start_111
    const-string v4, "Error deleting entries "

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_126

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12b

    .line 10
    :cond_126
    new-instance v0, Ljava/lang/String;

    .line 29
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    goto :goto_137

    :catchall_12f
    move-exception v0

    move-object v5, v7

    :goto_131
    if-eqz v5, :cond_136

    .line 20
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_136
    throw v0

    :cond_137
    :goto_137
    add-long v2, v2, p2

    .line 24
    const-string v0, "Error opening database for writeEntryToDatabase."

    .line 30
    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzbe;->zzi(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_142

    goto :goto_174

    .line 31
    :cond_142
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_146
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_174

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/tagmanager/zzbd;

    new-instance v7, Landroid/content/ContentValues;

    .line 32
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "expires"

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "key"

    .line 34
    iget-object v9, v6, Lcom/google/android/gms/tagmanager/zzbd;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "value"

    .line 35
    iget-object v6, v6, Lcom/google/android/gms/tagmanager/zzbd;->zzb:[B

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "datalayer"

    .line 36
    invoke-virtual {v0, v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_173
    .catchall {:try_start_111 .. :try_end_173} :catchall_181

    goto :goto_146

    .line 37
    :cond_174
    :goto_174
    :try_start_174
    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_186

    monitor-exit p0

    return-void

    :catchall_179
    move-exception v0

    move-object v5, v4

    :goto_17b
    if-eqz v5, :cond_180

    .line 9
    :try_start_17d
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 10
    :cond_180
    throw v0
    :try_end_181
    .catchall {:try_start_17d .. :try_end_181} :catchall_181

    :catchall_181
    move-exception v0

    .line 37
    :try_start_182
    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzbe;->zzj()V

    .line 38
    throw v0

    :catchall_186
    move-exception v0

    monitor-exit p0
    :try_end_188
    .catchall {:try_start_182 .. :try_end_188} :catchall_186

    throw v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzbb;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzbb;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/tagmanager/zzaw;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzba;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzba;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Lcom/google/android/gms/tagmanager/zzaw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Ljava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tagmanager/zzau;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/zzau;

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbd;

    .line 3
    iget-object v3, v1, Lcom/google/android/gms/tagmanager/zzau;->zza:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzau;->zzb:Ljava/lang/Object;

    .line 4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v5, 0x0

    .line 5
    :try_start_21
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_41
    .catchall {:try_start_21 .. :try_end_26} :catchall_37

    .line 6
    :try_start_26
    invoke-virtual {v6, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_42
    .catchall {:try_start_26 .. :try_end_2d} :catchall_34

    .line 8
    :goto_2d
    :try_start_2d
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 9
    :cond_30
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_45

    goto :goto_45

    :catchall_34
    move-exception p1

    move-object v5, v6

    goto :goto_38

    :catchall_37
    move-exception p1

    :goto_38
    if-eqz v5, :cond_3d

    .line 8
    :try_start_3a
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 9
    :cond_3d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_40} :catch_40

    .line 11
    :catch_40
    throw p1

    :catch_41
    move-object v6, v5

    :catch_42
    if-eqz v6, :cond_30

    goto :goto_2d

    .line 3
    :catch_45
    :goto_45
    invoke-direct {v2, v3, v5}, Lcom/google/android/gms/tagmanager/zzbd;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzbe;->zzb:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzaz;

    .line 10
    invoke-direct {v1, p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzaz;-><init>(Lcom/google/android/gms/tagmanager/zzbe;Ljava/util/List;J)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
