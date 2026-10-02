.class final Lcom/google/android/gms/tagmanager/zzem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzak;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/concurrent/ExecutorService;

.field private zzd:Lcom/google/android/gms/tagmanager/zzdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdg<",
            "Lcom/google/android/gms/internal/gtm/zzrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzem;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzem;->zzb:Ljava/lang/String;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzfz;->zza()Lcom/google/android/gms/internal/gtm/zzfw;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/gtm/zzfw;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzem;->zzc:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final declared-synchronized release()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzem;->zzc:Ljava/util/concurrent/ExecutorService;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/gtm/zzrs;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzem;->zza:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_b} :catch_114

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzem;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x42

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to load a container from the resource ID "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 4
    invoke-virtual {v5, v4}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    .line 5
    :try_start_42
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/gtm/zzsa;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_e2

    :try_start_4a
    const-string v1, "UTF-8"

    .line 7
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzcz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfv;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzrs;->zza()Lcom/google/android/gms/internal/gtm/zzru;

    move-result-object v5

    const/4 v6, 0x0

    .line 11
    :goto_62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzak;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_9f

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzro;->zzb()Lcom/google/android/gms/internal/gtm/zzrq;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzb;->zzbB:Lcom/google/android/gms/internal/gtm/zzb;

    .line 13
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/gtm/zzak;->zzk(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/gtm/zzrq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzb;->zzbp:Lcom/google/android/gms/internal/gtm/zzb;

    .line 14
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzt;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzfv;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v9

    .line 15
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/gtm/zzrq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzt;->zzd()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/gtm/zzak;->zzl(I)Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/gtm/zzrq;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzrq;->zza()Lcom/google/android/gms/internal/gtm/zzro;

    move-result-object v7

    .line 17
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/gtm/zzru;->zzb(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzru;

    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 18
    :cond_9f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzru;->zza()Lcom/google/android/gms/internal/gtm/zzrs;

    move-result-object v1
    :try_end_a3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4a .. :try_end_a3} :catch_ab
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_a3} :catch_a4
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_a3} :catch_e2

    goto :goto_b3

    .line 20
    :catch_a4
    :try_start_a4
    const-string v1, "Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    :goto_a9
    move-object v1, v0

    goto :goto_b3

    .line 29
    :catch_ab
    const-string v1, "Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format."

    sget-object v5, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 20
    invoke-virtual {v5, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zza(Ljava/lang/String;)V

    goto :goto_a9

    :goto_b3
    if-eqz v1, :cond_bd

    .line 18
    const-string v4, "The container was successfully loaded from the resource (using JSON file format)"

    sget-object v5, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 21
    invoke-virtual {v5, v4}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    return-object v1

    .line 22
    :cond_bd
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_c1} :catch_e2

    .line 23
    :try_start_c1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuj;->zzb()Lcom/google/android/gms/internal/gtm/zzuj;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/gtm/zzaa;->zzm([BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzsa;->zzb(Lcom/google/android/gms/internal/gtm/zzaa;)Lcom/google/android/gms/internal/gtm/zzrs;

    move-result-object v1

    const-string v4, "The container was successfully loaded from the resource (using binary file)"

    sget-object v5, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 25
    invoke-virtual {v5, v4}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V
    :try_end_d4
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_c1 .. :try_end_d4} :catch_dc
    .catch Lcom/google/android/gms/internal/gtm/zzrz; {:try_start_c1 .. :try_end_d4} :catch_d6
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_d4} :catch_e2

    move-object v0, v1

    goto :goto_e1

    .line 27
    :catch_d6
    :try_start_d6
    const-string v1, "The resource file is invalid. The container from the binary file is invalid"

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    goto :goto_e1

    .line 19
    :catch_dc
    const-string v1, "The resource file is corrupted. The container cannot be extracted from the binary file"

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_e1} :catch_e2

    :goto_e1
    return-object v0

    .line 2
    :catch_e2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzem;->zza:Landroid/content/Context;

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x43

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error reading the default container with resource ID "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-object v0

    .line 25
    :catch_114
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x62

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to load the container. No default container resource found with the resource ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzem;->zzc:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzek;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzek;-><init>(Lcom/google/android/gms/tagmanager/zzem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzrl;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzem;->zzc:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzel;

    .line 1
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzel;-><init>(Lcom/google/android/gms/tagmanager/zzem;Lcom/google/android/gms/internal/gtm/zzrl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/tagmanager/zzdg;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdg<",
            "Lcom/google/android/gms/internal/gtm/zzrl;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    return-void
.end method

.method final zze()Ljava/io/File;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzem;->zzb:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "resource_"

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 3
    :cond_13
    new-instance v0, Ljava/lang/String;

    .line 1
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzem;->zza:Landroid/content/Context;

    const-string v2, "google_tagmanager"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    .line 3
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method final zzf()V
    .registers 10

    const-string v0, "Error closing stream for reading resource from disk"

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    if-eqz v1, :cond_d6

    sget-object v1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v2, "Attempting to load resource from disk"

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzea;->zza()Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzea;->zze()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_24

    .line 3
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzea;->zza()Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzea;->zze()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_34

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzem;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzea;->zza()Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/zzea;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/FileInputStream;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzem;->zze()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_3d} :catch_c3

    .line 8
    :try_start_3d
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuj;->zzb()Lcom/google/android/gms/internal/gtm/zzuj;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzg(Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzrl;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzk()Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzl()Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_5a

    .line 25
    :cond_52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Resource and SupplementedResource are NULL."

    .line 20
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_5a
    :goto_5a
    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzl()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzd()Lcom/google/android/gms/internal/gtm/zzai;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzah;

    goto :goto_83

    .line 12
    :cond_6d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc()Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object v6

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzai;->zzd()Lcom/google/android/gms/internal/gtm/zzah;

    move-result-object v7

    .line 14
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/gtm/zzah;->zzc(Lcom/google/android/gms/internal/gtm/zzaa;)Lcom/google/android/gms/internal/gtm/zzah;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzah;->zza()Lcom/google/android/gms/internal/gtm/zzah;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzaa;->zzo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/gtm/zzah;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzah;

    move-object v6, v7

    .line 11
    :goto_83
    check-cast v5, Lcom/google/android/gms/tagmanager/zzae;

    iget-object v5, v5, Lcom/google/android/gms/tagmanager/zzae;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzai;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrl;->zza()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v2}, Lcom/google/android/gms/tagmanager/zzal;->zzk(Lcom/google/android/gms/tagmanager/zzal;Lcom/google/android/gms/internal/gtm/zzai;JZ)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_94} :catch_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_94} :catch_97
    .catchall {:try_start_3d .. :try_end_94} :catchall_95

    goto :goto_a1

    :catchall_95
    move-exception v2

    goto :goto_bb

    .line 18
    :catch_97
    :try_start_97
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    .line 21
    invoke-interface {v2, v3}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V

    const-string v2, "Failed to read the resource from disk. The resource is inconsistent"

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_95

    .line 18
    :goto_a1
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_b0

    goto :goto_b3

    .line 7
    :catch_a5
    :try_start_a5
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    .line 23
    invoke-interface {v2, v3}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V

    const-string v2, "Failed to read the resource from disk"

    .line 24
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_95

    goto :goto_a1

    .line 19
    :catch_b0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 18
    :goto_b3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "The Disk resource was successfully read."

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    return-void

    .line 18
    :goto_bb
    :try_start_bb
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c2

    .line 19
    :catch_bf
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    .line 25
    :goto_c2
    throw v2

    .line 28
    :catch_c3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "Failed to find the resource in the disk"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    .line 7
    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V

    return-void

    .line 16
    :cond_d0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzem;->zzd:Lcom/google/android/gms/tagmanager/zzdg;

    .line 27
    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V

    return-void

    :cond_d6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback must be set before execute"

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
