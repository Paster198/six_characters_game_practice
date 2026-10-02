.class final Lcom/google/android/gms/tagmanager/zzdw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcd;


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Lcom/google/android/gms/tagmanager/zzdv;

.field private volatile zzc:Lcom/google/android/gms/tagmanager/zzbk;

.field private final zzd:Landroid/content/Context;

.field private final zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:Lcom/google/android/gms/common/util/Clock;

.field private final zzh:I

.field private final zzi:Lcom/google/android/gms/tagmanager/zzez;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "hit_url"

    const-string v1, "hit_first_send_time"

    const-string v2, "gtm_hits"

    const-string v3, "hit_id"

    const-string v4, "hit_time"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    .line 1
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdw;->zza:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzez;Landroid/content/Context;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzd:Landroid/content/Context;

    const-string p3, "gtm_urls.db"

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzdw;->zze:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzi:Lcom/google/android/gms/tagmanager/zzez;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzg:Lcom/google/android/gms/common/util/Clock;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzdv;

    .line 3
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/tagmanager/zzdv;-><init>(Lcom/google/android/gms/tagmanager/zzdw;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzb:Lcom/google/android/gms/tagmanager/zzdv;

    new-instance p1, Lcom/google/android/gms/tagmanager/zzfj;

    new-instance p3, Lcom/google/android/gms/tagmanager/zzdu;

    .line 4
    invoke-direct {p3, p0}, Lcom/google/android/gms/tagmanager/zzdu;-><init>(Lcom/google/android/gms/tagmanager/zzdw;)V

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzfj;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzfi;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzc:Lcom/google/android/gms/tagmanager/zzbk;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzf:J

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzh:I

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/tagmanager/zzdw;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzd:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/tagmanager/zzdw;)Lcom/google/android/gms/common/util/Clock;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzg:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/tagmanager/zzdw;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/tagmanager/zzdw;->zze:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzg()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdw;->zza:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/tagmanager/zzdw;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzdw;->zzl(J)V

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/tagmanager/zzdw;JJ)V
    .registers 8

    const-string v0, "Error opening database for getNumStoredHits."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    .line 2
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_first_send_time"

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x1

    :try_start_18
    new-array p3, p3, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, p3, v2

    const-string p4, "gtm_hits"

    const-string v2, "hit_id=?"

    invoke-virtual {v0, p4, v1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_28} :catch_29

    return-void

    :catch_29
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p4, 0x45

    .line 5
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzdw;->zzl(J)V

    return-void
.end method

.method private final zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzb:Lcom/google/android/gms/tagmanager/zzdv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdv;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

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

.method private final zzl(J)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzj([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 27

    move-object/from16 v1, p0

    const-string v0, "%s ASC"

    sget-object v2, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v3, "GTM Dispatch running..."

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzc:Lcom/google/android/gms/tagmanager/zzbk;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/zzbk;->zzb()Z

    move-result v2

    if-eqz v2, :cond_213

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Error opening database for peekHits"

    .line 4
    invoke-direct {v1, v3}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v3, "hit_first_send_time"

    const/4 v13, 0x2

    const-string v15, "hit_id"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2b

    move v14, v5

    move v13, v6

    goto/16 :goto_1ab

    :cond_2b
    const/4 v7, 0x3

    .line 44
    :try_start_2c
    new-array v7, v7, [Ljava/lang/String;

    aput-object v15, v7, v5

    const-string v8, "hit_time"

    aput-object v8, v7, v6

    aput-object v3, v7, v13

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v8
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3a} :catch_185
    .catchall {:try_start_2c .. :try_end_3a} :catchall_181

    move v9, v5

    :try_start_3b
    const-string v5, "gtm_hits"

    .line 5
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x28

    .line 6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_47} :catch_17d
    .catchall {:try_start_3b .. :try_end_47} :catchall_181

    move v8, v6

    move-object v6, v7

    const/4 v7, 0x0

    move v10, v8

    const/4 v8, 0x0

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v14, v17

    move/from16 v13, v18

    .line 7
    :try_start_56
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_5a} :catch_17b
    .catchall {:try_start_56 .. :try_end_5a} :catchall_181

    :try_start_5a
    new-instance v6, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5f} :catch_175
    .catchall {:try_start_5a .. :try_end_5f} :catchall_16e

    .line 9
    :try_start_5f
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_65
    new-instance v19, Lcom/google/android/gms/tagmanager/zzca;

    .line 10
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/4 v2, 0x2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-direct/range {v19 .. v25}, Lcom/google/android/gms/tagmanager/zzca;-><init>(JJJ)V

    move-object/from16 v2, v19

    .line 11
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_80} :catch_169
    .catchall {:try_start_5f .. :try_end_80} :catchall_16e

    if-nez v2, :cond_65

    :cond_82
    if-eqz v5, :cond_87

    .line 14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_87
    move-object v7, v6

    const/4 v2, 0x2

    :try_start_89
    new-array v6, v2, [Ljava/lang/String;

    aput-object v15, v6, v14

    const-string v2, "hit_url"

    aput-object v2, v6, v13

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v2
    :try_end_95
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_95} :catch_111
    .catchall {:try_start_89 .. :try_end_95} :catchall_10b

    move-object v8, v5

    :try_start_96
    const-string v5, "gtm_hits"

    .line 16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_96 .. :try_end_a0} :catch_106
    .catchall {:try_start_96 .. :try_end_a0} :catchall_102

    move-object v2, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    .line 18
    :try_start_a9
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a9 .. :try_end_ad} :catch_100
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_fe

    .line 19
    :try_start_ad
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_f2

    move v0, v14

    .line 20
    :cond_b4
    move-object v4, v5

    check-cast v4, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    if-lez v4, :cond_cf

    .line 22
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tagmanager/zzca;

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/tagmanager/zzca;->zzd(Ljava/lang/String;)V

    goto :goto_ea

    .line 23
    :cond_cf
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tagmanager/zzca;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzca;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "HitString for hitId %d too large.  Hit will be deleted."

    .line 24
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    :goto_ea
    add-int/lit8 v0, v0, 0x1

    .line 26
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_f0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ad .. :try_end_f0} :catch_fc
    .catchall {:try_start_ad .. :try_end_f0} :catchall_f9

    if-nez v4, :cond_b4

    :cond_f2
    if-eqz v5, :cond_1ab

    .line 32
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1ab

    :catchall_f9
    move-exception v0

    goto/16 :goto_163

    :catch_fc
    move-exception v0

    goto :goto_117

    :catchall_fe
    move-exception v0

    goto :goto_10e

    :catch_100
    move-exception v0

    goto :goto_115

    :catchall_102
    move-exception v0

    move-object/from16 v16, v8

    goto :goto_10e

    :catch_106
    move-exception v0

    move-object v2, v7

    move-object/from16 v16, v8

    goto :goto_115

    :catchall_10b
    move-exception v0

    move-object/from16 v16, v5

    :goto_10e
    move-object/from16 v5, v16

    goto :goto_163

    :catch_111
    move-exception v0

    move-object/from16 v16, v5

    move-object v2, v7

    :goto_115
    move-object/from16 v5, v16

    .line 15
    :goto_117
    :try_start_117
    const-string v4, "Error in peekHits fetching hit url: "

    .line 27
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12c

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_131

    .line 13
    :cond_12c
    new-instance v0, Ljava/lang/String;

    .line 27
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_131
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v14

    :goto_13e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/tagmanager/zzca;

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/tagmanager/zzca;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_158

    if-eqz v4, :cond_157

    goto :goto_15c

    :cond_157
    move v4, v13

    .line 31
    :cond_158
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15b
    .catchall {:try_start_117 .. :try_end_15b} :catchall_f9

    goto :goto_13e

    :cond_15c
    :goto_15c
    if-eqz v5, :cond_161

    .line 32
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_161
    move-object v2, v0

    goto :goto_1ab

    :goto_163
    if-eqz v5, :cond_168

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_168
    throw v0

    :catch_169
    move-exception v0

    move-object/from16 v16, v5

    move-object v2, v6

    goto :goto_178

    :catchall_16e
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v14, v16

    goto/16 :goto_20d

    :catch_175
    move-exception v0

    move-object/from16 v16, v5

    :goto_178
    move-object/from16 v5, v16

    goto :goto_189

    :catch_17b
    move-exception v0

    goto :goto_188

    :catch_17d
    move-exception v0

    move v13, v6

    move v14, v9

    goto :goto_188

    :catchall_181
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_20d

    :catch_185
    move-exception v0

    move v14, v5

    move v13, v6

    :goto_188
    const/4 v5, 0x0

    .line 43
    :goto_189
    :try_start_189
    const-string v4, "Error in peekHits fetching hitIds: "

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_19e

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a3

    .line 42
    :cond_19e
    new-instance v0, Ljava/lang/String;

    .line 13
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_1a6
    .catchall {:try_start_189 .. :try_end_1a6} :catchall_20b

    if-eqz v5, :cond_1ab

    .line 14
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_1ab
    :goto_1ab
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1be

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v2, "...nothing to dispatch"

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzi:Lcom/google/android/gms/tagmanager/zzez;

    .line 36
    invoke-virtual {v0, v13}, Lcom/google/android/gms/tagmanager/zzez;->zza(Z)V

    return-void

    :cond_1be
    iget-object v0, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzc:Lcom/google/android/gms/tagmanager/zzbk;

    .line 37
    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzbk;->zza(Ljava/util/List;)V

    const-string v0, "Error opening database for getNumStoredHits."

    .line 38
    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-nez v4, :cond_1cc

    goto :goto_213

    :cond_1cc
    const/4 v2, 0x2

    :try_start_1cd
    new-array v6, v2, [Ljava/lang/String;

    aput-object v15, v6, v14

    aput-object v3, v6, v13

    const-string v5, "gtm_hits"

    const-string v7, "hit_first_send_time=0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 39
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1cd .. :try_end_1df} :catch_1ec
    .catchall {:try_start_1cd .. :try_end_1df} :catchall_1e9

    .line 40
    :try_start_1df
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_1e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1df .. :try_end_1e3} :catch_1ed
    .catchall {:try_start_1df .. :try_end_1e3} :catchall_203

    if-eqz v2, :cond_1f5

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1f5

    :catchall_1e9
    move-exception v0

    const/4 v14, 0x0

    goto :goto_205

    :catch_1ec
    const/4 v2, 0x0

    .line 25
    :catch_1ed
    :try_start_1ed
    const-string v0, "Error getting num untried hits"

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_1f2
    .catchall {:try_start_1ed .. :try_end_1f2} :catchall_203

    if-nez v2, :cond_1ff

    move v5, v14

    :cond_1f5
    :goto_1f5
    if-lez v5, :cond_213

    .line 44
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzff;->zzg()Lcom/google/android/gms/tagmanager/zzff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzff;->zza()V

    return-void

    .line 42
    :cond_1ff
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_203
    move-exception v0

    move-object v14, v2

    :goto_205
    if-eqz v14, :cond_20a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_20a
    throw v0

    :catchall_20b
    move-exception v0

    move-object v14, v5

    :goto_20d
    if-eqz v14, :cond_212

    .line 14
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 15
    :cond_212
    throw v0

    :cond_213
    :goto_213
    return-void
.end method

.method public final zzb(JLjava/lang/String;)V
    .registers 22

    move-object/from16 v1, p0

    const-string v0, "hit_id"

    iget-object v2, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzf:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    const-string v5, "gtm_hits"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v4, :cond_19

    goto :goto_4a

    .line 16
    :cond_19
    iput-wide v2, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzf:J

    const-string v2, "Error opening database for deleteStaleHits."

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-object v3, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    new-array v8, v6, [Ljava/lang/String;

    const-wide v9, -0x9a7ec800L

    add-long/2addr v3, v9

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    const-string v3, "HIT_TIME < ?"

    invoke-virtual {v2, v5, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzi:Lcom/google/android/gms/tagmanager/zzez;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdw;->zzc()I

    move-result v3

    if-nez v3, :cond_46

    move v3, v6

    goto :goto_47

    :cond_46
    move v3, v7

    :goto_47
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/zzez;->zza(Z)V

    .line 6
    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzdw;->zzc()I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzh:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v6

    const/4 v3, 0x0

    if-lez v2, :cond_f6

    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "Error opening database for peekHitIds."

    .line 8
    invoke-direct {v1, v8}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    if-nez v9, :cond_63

    goto :goto_c1

    .line 27
    :cond_63
    :try_start_63
    new-array v11, v6, [Ljava/lang/String;

    aput-object v0, v11, v7

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v10, "gtm_hits"

    const-string v6, "%s ASC"

    .line 9
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 11
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_7f} :catch_9d
    .catchall {:try_start_63 .. :try_end_7f} :catchall_9b

    .line 12
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 13
    :cond_85
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7f .. :try_end_94} :catch_99
    .catchall {:try_start_7f .. :try_end_94} :catchall_ee

    if-nez v0, :cond_85

    :cond_96
    if-eqz v2, :cond_c1

    goto :goto_be

    :catch_99
    move-exception v0

    goto :goto_9f

    :catchall_9b
    move-exception v0

    goto :goto_f0

    :catch_9d
    move-exception v0

    move-object v2, v3

    .line 28
    :goto_9f
    :try_start_9f
    const-string v6, "Error in peekHits fetching hitIds: "

    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b4

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b9

    .line 17
    :cond_b4
    new-instance v0, Ljava/lang/String;

    .line 15
    invoke-direct {v0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b9
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_9f .. :try_end_bc} :catchall_ee

    if-eqz v2, :cond_c1

    .line 16
    :goto_be
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_c1
    :goto_c1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x33

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Store full, deleting "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hits to make room."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 19
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/String;

    .line 20
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzj([Ljava/lang/String;)V

    goto :goto_f6

    :catchall_ee
    move-exception v0

    move-object v3, v2

    :goto_f0
    if-eqz v3, :cond_f5

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_f5
    throw v0

    .line 20
    :cond_f6
    :goto_f6
    const-string v0, "Error opening database for putHit"

    .line 21
    invoke-direct {v1, v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_ff

    goto :goto_125

    :cond_ff
    new-instance v2, Landroid/content/ContentValues;

    .line 22
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "hit_time"

    .line 23
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "hit_url"

    move-object/from16 v6, p3

    .line 24
    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "hit_first_send_time"

    .line 25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    :try_start_11d
    invoke-virtual {v0, v5, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, v1, Lcom/google/android/gms/tagmanager/zzdw;->zzi:Lcom/google/android/gms/tagmanager/zzez;

    .line 27
    invoke-virtual {v0, v7}, Lcom/google/android/gms/tagmanager/zzez;->zza(Z)V
    :try_end_125
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11d .. :try_end_125} :catch_126

    :goto_125
    return-void

    .line 5
    :catch_126
    const-string v0, "Error storing hit"

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method final zzc()I
    .registers 5

    const-string v0, "Error opening database for getNumStoredHits."

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    const/4 v2, 0x0

    :try_start_a
    const-string v3, "SELECT COUNT(*) from gtm_hits"

    .line 2
    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_1a} :catch_23
    .catchall {:try_start_a .. :try_end_1a} :catchall_21

    long-to-int v1, v0

    :cond_1b
    if-eqz v2, :cond_20

    .line 6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_20
    return v1

    :catchall_21
    move-exception v0

    goto :goto_2f

    :catch_23
    :try_start_23
    const-string v0, "Error getting numStoredHits"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_21

    if-nez v2, :cond_2b

    return v1

    .line 6
    :cond_2b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v1

    :goto_2f
    if-eqz v2, :cond_34

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 7
    :cond_34
    throw v0

    :cond_35
    return v1
.end method

.method final zzj([Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3e

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3e

    :cond_6
    const-string v1, "Error opening database for deleteHits."

    .line 1
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/zzdw;->zzk(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_3e

    :cond_f
    const-string v2, "?"

    .line 2
    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "HIT_ID in (%s)"

    .line 3
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_25
    const-string v2, "gtm_hits"

    .line 4
    invoke-virtual {v1, v2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdw;->zzi:Lcom/google/android/gms/tagmanager/zzez;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdw;->zzc()I

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tagmanager/zzez;->zza(Z)V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_38} :catch_39

    return-void

    :catch_39
    const-string p1, "Error deleting hits"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method
