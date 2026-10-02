.class public final Lcom/google/android/gms/measurement/internal/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzaw;

.field private final zzb:Ljava/lang/String;

.field private zzc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzb:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzc:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;J)V
    .registers 7

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzb:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 3
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 p3, -0x1

    .line 4
    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzc(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzau;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .registers 21

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzau;->zzb:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v8, v13

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzau;->zzc:J

    .line 2
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v8, v14

    const-string v7, "app_id = ? and rowid > ?"

    const-string v12, "1000"

    :try_start_1c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzaw;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "raw_events"

    const/4 v0, 0x6

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v6, v13

    const-string v0, "name"

    aput-object v0, v6, v14

    const-string v0, "timestamp"

    aput-object v0, v6, v3

    const-string v0, "metadata_fingerprint"

    const/4 v9, 0x3

    aput-object v0, v6, v9

    const-string v0, "data"

    const/4 v10, 0x4

    aput-object v0, v6, v10

    const-string v0, "realtime"

    const/4 v11, 0x5

    aput-object v0, v6, v11

    move/from16 v16, v11

    const-string v11, "rowid"

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v10

    const/4 v10, 0x0

    move/from16 v15, v16

    move/from16 v14, v17

    move/from16 v3, v18

    .line 4
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_56
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_56} :catch_dd
    .catchall {:try_start_1c .. :try_end_56} :catchall_da

    .line 5
    :try_start_56
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 6
    :goto_5c
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 7
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 8
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v18, 0x1

    cmp-long v0, v10, v18

    if-nez v0, :cond_70

    const/4 v10, 0x1

    goto :goto_71

    :cond_70
    move v10, v13

    .line 9
    :goto_71
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzau;->zzc:J

    cmp-long v5, v6, v11

    if-lez v5, :cond_7d

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzau;->zzc:J
    :try_end_7d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_7d} :catch_d7
    .catchall {:try_start_56 .. :try_end_7d} :catchall_d4

    .line 10
    :cond_7d
    :try_start_7d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zze()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zzqa;->zzp(Lcom/google/android/gms/internal/measurement/zzng;[B)Lcom/google/android/gms/internal/measurement/zzng;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhl;
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_87} :catch_ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7d .. :try_end_87} :catch_d7
    .catchall {:try_start_7d .. :try_end_87} :catchall_d4

    const/4 v12, 0x1

    .line 14
    :try_start_88
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_90

    const-string v5, ""

    .line 15
    :cond_90
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzhl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhl;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhl;->zzm(J)Lcom/google/android/gms/internal/measurement/zzhl;

    move v11, v5

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzat;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    move v12, v11

    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(JJZLcom/google/android/gms/internal/measurement/zzhm;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    :catch_ad
    move-exception v0

    const/4 v12, 0x2

    .line 23
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v5

    const-string v6, "Data loss. Failed to merge raw event. appId"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzau;->zzb:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 13
    invoke-virtual {v5, v6, v7, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :goto_c6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_cd

    goto :goto_f7

    :cond_cd
    const/4 v13, 0x0

    goto :goto_5c

    .line 18
    :cond_cf
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_d3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_88 .. :try_end_d3} :catch_d7
    .catchall {:try_start_88 .. :try_end_d3} :catchall_d4

    goto :goto_f7

    :catchall_d4
    move-exception v0

    move-object v15, v4

    goto :goto_fe

    :catch_d7
    move-exception v0

    move-object v15, v4

    goto :goto_df

    :catchall_da
    move-exception v0

    const/4 v15, 0x0

    goto :goto_fe

    :catch_dd
    move-exception v0

    const/4 v15, 0x0

    :goto_df
    :try_start_df
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzau;->zza:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Data loss. Error querying raw events batch. appId"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzau;->zzb:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 21
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f6
    .catchall {:try_start_df .. :try_end_f6} :catchall_fd

    move-object v4, v15

    :goto_f7
    if-eqz v4, :cond_fc

    .line 22
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_fc
    return-object v2

    :catchall_fd
    move-exception v0

    :goto_fe
    if-eqz v15, :cond_103

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 23
    :cond_103
    throw v0
.end method
