.class public final Lcom/google/android/gms/internal/gtm/zzcn;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private volatile zza:Ljava/lang/String;

.field private zzb:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzcn;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcn;->zzf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzf()Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "0"

    const-string v1, "Failed to close clientId writing stream"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2
    :try_start_12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/zzr;->zza()Landroid/content/Context;

    move-result-object v3

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "ClientId should be saved from worker thread"

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_70

    const/4 v4, 0x0

    :try_start_23
    const-string v5, "Storing clientId"

    .line 5
    invoke-virtual {p0, v5, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "gaClientId"

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_43
    .catchall {:try_start_23 .. :try_end_36} :catchall_41

    if-eqz v4, :cond_40

    .line 9
    :try_start_38
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_70

    return-object v2

    :catch_3c
    move-exception v3

    .line 10
    :try_start_3d
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_70

    :cond_40
    return-object v2

    :catchall_41
    move-exception v2

    goto :goto_65

    :catch_43
    move-exception v2

    goto :goto_47

    :catch_45
    move-exception v2

    goto :goto_57

    .line 9
    :goto_47
    :try_start_47
    const-string v3, "Error writing to clientId file"

    .line 8
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_41

    if-eqz v4, :cond_64

    .line 9
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_70

    goto :goto_64

    :catch_52
    move-exception v2

    .line 10
    :goto_53
    :try_start_53
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_70

    goto :goto_64

    .line 13
    :goto_57
    :try_start_57
    const-string v3, "Error creating clientId file"

    .line 11
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_41

    if-eqz v4, :cond_64

    .line 9
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_70

    goto :goto_64

    :catch_62
    move-exception v2

    goto :goto_53

    :cond_64
    :goto_64
    return-object v0

    :goto_65
    if-eqz v4, :cond_6f

    :try_start_67
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_70

    goto :goto_6f

    :catch_6b
    move-exception v3

    .line 10
    :try_start_6c
    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_6f
    :goto_6f
    throw v2
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_70} :catch_70

    :catch_70
    move-exception v1

    .line 9
    const-string v2, "Error saving clientId file"

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzcl;-><init>(Lcom/google/android/gms/internal/gtm/zzcn;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzg(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zzb:Ljava/util/concurrent/Future;

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zzb:Ljava/util/concurrent/Future;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_4f

    if-eqz v0, :cond_4b

    .line 4
    :try_start_1b
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_23} :catch_2f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_23} :catch_24
    .catchall {:try_start_1b .. :try_end_23} :catchall_4f

    goto :goto_39

    :catch_24
    move-exception v0

    .line 6
    :try_start_25
    const-string v1, "Failed to load or generate client id"

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    goto :goto_39

    :catch_2f
    move-exception v0

    .line 9
    const-string v1, "ClientId loading or generation was interrupted"

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    .line 4
    :goto_39
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    if-nez v0, :cond_41

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    :cond_41
    const-string v0, "Loaded clientId"

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zzb:Ljava/util/concurrent/Future;

    :cond_4b
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    .line 8
    monitor-exit p0

    return-object v0

    :catchall_4f
    move-exception v0

    .line 9
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method final zzc()Ljava/lang/String;
    .registers 10

    const-string v0, "gaClientId"

    const-string v1, "Failed to close client id reading stream"

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/zzr;->zza()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ClientId should be loaded from worker thread"

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    :try_start_12
    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_16} :catch_85
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_68
    .catchall {:try_start_12 .. :try_end_16} :catchall_66

    const/16 v5, 0x24

    :try_start_18
    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 4
    invoke-virtual {v4, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v8

    if-lez v8, :cond_36

    const-string v5, "clientId file seems corrupted, deleting it."

    .line 6
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 8
    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_30} :catch_86
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_30} :catch_64
    .catchall {:try_start_18 .. :try_end_30} :catchall_78

    if-eqz v4, :cond_90

    .line 9
    :try_start_32
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_8c

    goto :goto_90

    :cond_36
    const/16 v8, 0xe

    if-ge v5, v8, :cond_4b

    .line 20
    :try_start_3a
    const-string v5, "clientId file is empty, deleting it."

    .line 11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzR(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 13
    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_45} :catch_86
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_64
    .catchall {:try_start_3a .. :try_end_45} :catchall_78

    if-eqz v4, :cond_90

    .line 9
    :try_start_47
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_8c

    goto :goto_90

    .line 14
    :cond_4b
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    new-instance v8, Ljava/lang/String;

    .line 15
    invoke-direct {v8, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v5, "Read client id from disk"

    .line 16
    invoke-virtual {p0, v5, v8}, Lcom/google/android/gms/internal/gtm/zzbr;->zzP(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_58} :catch_86
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_58} :catch_64
    .catchall {:try_start_4b .. :try_end_58} :catchall_78

    if-eqz v4, :cond_62

    .line 9
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception v0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_62
    :goto_62
    move-object v3, v8

    goto :goto_90

    :catch_64
    move-exception v5

    goto :goto_6a

    :catchall_66
    move-exception v0

    goto :goto_7a

    :catch_68
    move-exception v5

    move-object v4, v3

    .line 9
    :goto_6a
    :try_start_6a
    const-string v6, "Error reading client id file, deleting it"

    .line 17
    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_78

    if-eqz v4, :cond_90

    .line 9
    :try_start_74
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_8c

    goto :goto_90

    :catchall_78
    move-exception v0

    move-object v3, v4

    :goto_7a
    if-eqz v3, :cond_84

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception v2

    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_84
    :goto_84
    throw v0

    :catch_85
    move-object v4, v3

    :catch_86
    if-eqz v4, :cond_90

    .line 9
    :try_start_88
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzK(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_90
    :goto_90
    if-nez v3, :cond_97

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzcn;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_97
    return-object v3
.end method

.method protected final zzd()V
    .registers 1

    return-void
.end method

.method final zze()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Ljava/lang/String;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzcm;-><init>(Lcom/google/android/gms/internal/gtm/zzcn;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzg(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zzb:Ljava/util/concurrent/Future;

    .line 3
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_19

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcn;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_19
    move-exception v0

    .line 3
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
