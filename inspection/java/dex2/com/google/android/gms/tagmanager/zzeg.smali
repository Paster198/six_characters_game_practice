.class final Lcom/google/android/gms/tagmanager/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzse;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/gms/tagmanager/zzdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdg<",
            "Lcom/google/android/gms/internal/gtm/zzai;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzf:Lcom/google/android/gms/tagmanager/zzap;

.field private volatile zzg:Ljava/lang/String;

.field private volatile zzh:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzap;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzse;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzb:Lcom/google/android/gms/internal/gtm/zzse;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzf:Lcom/google/android/gms/tagmanager/zzap;

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "/r?id="

    if-eqz p2, :cond_21

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_21
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzg:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    if-eqz v0, :cond_2b2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zza:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2a4

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_2a4

    .line 5
    :cond_1c
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "Start loading resource from network ..."

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzf:Lcom/google/android/gms/tagmanager/zzap;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzap;->zza()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&v=a65833898"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzh:Ljava/lang/String;

    const/4 v2, 0x4

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzh:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzh:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&pv="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_8d
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzea;->zza()Lcom/google/android/gms/tagmanager/zzea;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzea;->zze()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_a5

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gtm_debug=x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzse;->zza()Lcom/google/android/gms/internal/gtm/zzsd;

    move-result-object v1

    .line 14
    :try_start_a9
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gtm/zzsd;->zza(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_ad} :catch_260
    .catch Lcom/google/android/gms/internal/gtm/zzsf; {:try_start_a9 .. :try_end_ad} :catch_ef
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_b1
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_ae

    goto :goto_10e

    :catchall_ae
    move-exception v0

    goto/16 :goto_29f

    :catch_b1
    move-exception v2

    .line 15
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error when loading resources from url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    const/4 v2, 0x2

    .line 16
    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V
    :try_end_eb
    .catchall {:try_start_b2 .. :try_end_eb} :catchall_ae

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzb()V

    return-void

    :catch_ef
    :try_start_ef
    const-string v5, "Error when loading resource for url: "

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_100

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_106

    .line 46
    :cond_100
    new-instance v6, Ljava/lang/String;

    .line 18
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_106
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    .line 19
    invoke-interface {v5, v2}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V
    :try_end_10e
    .catchall {:try_start_ef .. :try_end_10e} :catchall_ae

    .line 22
    :goto_10e
    :try_start_10e
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/gtm/zzsa;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 24
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuj;->zzb()Lcom/google/android/gms/internal/gtm/zzuj;

    move-result-object v3

    .line 25
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzai;->zzg([BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzai;

    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Successfully loaded supplemented resource: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 27
    invoke-virtual {v5, v3}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzai;->zzm()Z

    move-result v3

    if-nez v3, :cond_170

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzai;->zza()I

    move-result v3

    if-nez v3, :cond_170

    const-string v3, "No change for container: "

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzc:Ljava/lang/String;

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_165

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_16b

    .line 46
    :cond_165
    new-instance v5, Ljava/lang/String;

    .line 29
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_16b
    sget-object v5, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 30
    invoke-virtual {v5, v3}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    :cond_170
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v5, v5, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzal;->zzf(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzam;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/zzam;->zzd()V

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v5, v5, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    monitor-enter v5
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_184} :catch_223
    .catchall {:try_start_10e .. :try_end_184} :catchall_ae

    .line 32
    :try_start_184
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzai;->zzm()Z

    move-result v6

    if-nez v6, :cond_1d0

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v6, v6, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzal;->zzb(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/internal/gtm/zzai;

    move-result-object v6

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzai;->zzm()Z

    move-result v6

    if-nez v6, :cond_1b4

    const-string v2, "Current resource is null; network resource is also null"

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v2, v2, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzal;->zzf(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzam;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzam;->zzb()J

    move-result-wide v6

    check-cast v3, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v2, v3, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 36
    invoke-static {v2, v6, v7}, Lcom/google/android/gms/tagmanager/zzal;->zzi(Lcom/google/android/gms/tagmanager/zzal;J)V

    .line 37
    monitor-exit v5

    goto :goto_215

    .line 38
    :cond_1b4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzZ()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzah;

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v6, v6, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzal;->zzb(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/internal/gtm/zzai;

    move-result-object v6

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzai;->zzc()Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/gtm/zzah;->zzc(Lcom/google/android/gms/internal/gtm/zzaa;)Lcom/google/android/gms/internal/gtm/zzah;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzut;->zzA()Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzai;

    :cond_1d0
    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v6, v6, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzal;->zzc(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 41
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static {v6, v2, v7, v8, v9}, Lcom/google/android/gms/tagmanager/zzal;->zzk(Lcom/google/android/gms/tagmanager/zzal;Lcom/google/android/gms/internal/gtm/zzai;JZ)V

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v6, v6, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzal;->zza(Lcom/google/android/gms/tagmanager/zzal;)J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x3a

    .line 42
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "setting refresh time to current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 43
    invoke-virtual {v7, v6}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v6, v6, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 44
    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzal;->zzq(Lcom/google/android/gms/tagmanager/zzal;)Z

    move-result v6

    if-nez v6, :cond_214

    check-cast v3, Lcom/google/android/gms/tagmanager/zzag;

    iget-object v3, v3, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 45
    invoke-static {v3, v2}, Lcom/google/android/gms/tagmanager/zzal;->zzj(Lcom/google/android/gms/tagmanager/zzal;Lcom/google/android/gms/internal/gtm/zzai;)V

    .line 46
    :cond_214
    monitor-exit v5
    :try_end_215
    .catchall {:try_start_184 .. :try_end_215} :catchall_220

    .line 17
    :goto_215
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzb()V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "Load resource from network finished."

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    return-void

    :catchall_220
    move-exception v2

    .line 46
    :try_start_221
    monitor-exit v5
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_220

    :try_start_222
    throw v2
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_223} :catch_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_ae

    :catch_223
    move-exception v2

    .line 47
    :try_start_224
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error when parsing downloaded resources from url: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    .line 48
    invoke-interface {v0, v4}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V
    :try_end_25c
    .catchall {:try_start_224 .. :try_end_25c} :catchall_ae

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzb()V

    return-void

    .line 12
    :catch_260
    :try_start_260
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzc:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No data is retrieved from the given url: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Make sure container_id: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is correct."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    .line 21
    invoke-interface {v0, v4}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V
    :try_end_29b
    .catchall {:try_start_260 .. :try_end_29b} :catchall_ae

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzb()V

    return-void

    :goto_29f
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzsd;->zzb()V

    .line 49
    throw v0

    .line 12
    :cond_2a3
    throw v3

    .line 3
    :cond_2a4
    :goto_2a4
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    const-string v1, "...no network connectivity"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    const/4 v1, 0x1

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzdg;->zza(I)V

    return-void

    .line 29
    :cond_2b2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zza(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzg:Ljava/lang/String;

    return-void

    .line 1
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Setting CTFE URL path: "

    if-eqz v0, :cond_14

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 2
    :cond_14
    new-instance v0, Ljava/lang/String;

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_19
    sget-object v1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zza(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzg:Ljava/lang/String;

    return-void
.end method

.method final zzb(Lcom/google/android/gms/tagmanager/zzdg;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdg<",
            "Lcom/google/android/gms/internal/gtm/zzai;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zze:Lcom/google/android/gms/tagmanager/zzdg;

    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Setting previous container version: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 2
    :cond_11
    new-instance v0, Ljava/lang/String;

    .line 1
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    sget-object v1, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/zzbg;->zza(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzeg;->zzh:Ljava/lang/String;

    return-void
.end method
