.class public final Lcom/google/android/gms/measurement/internal/zzoa;
.super Lcom/google/android/gms/measurement/internal/zzpg;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field public final zza:Lcom/google/android/gms/measurement/internal/zzhp;

.field public final zzb:Lcom/google/android/gms/measurement/internal/zzhp;

.field public final zzc:Lcom/google/android/gms/measurement/internal/zzhp;

.field public final zzd:Lcom/google/android/gms/measurement/internal/zzhp;

.field public final zze:Lcom/google/android/gms/measurement/internal/zzhp;

.field public final zzf:Lcom/google/android/gms/measurement/internal/zzhp;

.field private final zzh:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzpv;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzpg;-><init>(Lcom/google/android/gms/measurement/internal/zzpv;)V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzh:Ljava/util/Map;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zza:Lcom/google/android/gms/measurement/internal/zzhp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_delete_stale_batch"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzb:Lcom/google/android/gms/measurement/internal/zzhp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzd:Lcom/google/android/gms/measurement/internal/zzhp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zze:Lcom/google/android/gms/measurement/internal/zzhp;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhp;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzf:Lcom/google/android/gms/measurement/internal/zzhp;

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzh:Ljava/util/Map;

    .line 4
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zznz;

    if-eqz v4, :cond_2e

    iget-wide v5, v4, Lcom/google/android/gms/measurement/internal/zznz;->zzc:J

    cmp-long v5, v2, v5

    if-ltz v5, :cond_20

    goto :goto_2e

    .line 16
    :cond_20
    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zznz;->zza:Ljava/lang/String;

    iget-boolean v0, v4, Lcom/google/android/gms/measurement/internal/zznz;->zzb:Z

    new-instance v1, Landroid/util/Pair;

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    .line 7
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zza:Lcom/google/android/gms/measurement/internal/zzgg;

    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)J

    move-result-wide v5

    add-long/2addr v5, v2

    const/4 v7, 0x0

    .line 8
    :try_start_3e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_46} :catch_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_6d

    :catch_47
    move-exception v1

    goto :goto_95

    :catch_49
    const/4 v1, 0x0

    if-eqz v4, :cond_6d

    .line 23
    :try_start_4c
    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zznz;->zzc:J

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzgi;->zzb:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 11
    invoke-virtual {v10, p1, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzk(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v2, v2, v8

    if-gez v2, :cond_6d

    new-instance v1, Landroid/util/Pair;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zznz;->zza:Ljava/lang/String;

    iget-boolean v3, v4, Lcom/google/android/gms/measurement/internal/zznz;->zzb:Z

    .line 12
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_6d
    :goto_6d
    if-nez v1, :cond_7b

    .line 9
    new-instance v1, Landroid/util/Pair;

    const-string v2, "00000000-0000-0000-0000-000000000000"

    .line 13
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 14
    :cond_7b
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    new-instance v3, Lcom/google/android/gms/measurement/internal/zznz;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-direct {v3, v2, v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zznz;-><init>(Ljava/lang/String;ZJ)V

    goto :goto_a9

    .line 22
    :cond_8b
    new-instance v3, Lcom/google/android/gms/measurement/internal/zznz;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-direct {v3, v0, v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zznz;-><init>(Ljava/lang/String;ZJ)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_94} :catch_47

    goto :goto_a9

    .line 12
    :goto_95
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Unable to get advertising id"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zznz;

    .line 19
    invoke-direct {v3, v0, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zznz;-><init>(Ljava/lang/String;ZJ)V

    .line 15
    :goto_a9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoa;->zzh:Ljava/util/Map;

    .line 20
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zznz;->zza:Ljava/lang/String;

    iget-boolean v1, v3, Lcom/google/android/gms/measurement/internal/zznz;->zzb:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected final zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)Landroid/util/Pair;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoa;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance p1, Landroid/util/Pair;

    const/4 p2, 0x0

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final zzf(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    if-eqz p2, :cond_e

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoa;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_10

    .line 4
    :cond_e
    const-string p1, "00000000-0000-0000-0000-000000000000"

    .line 3
    :goto_10
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzqf;->zzI()Ljava/security/MessageDigest;

    move-result-object p2

    if-nez p2, :cond_18

    const/4 p1, 0x0

    return-object p1

    :cond_18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {v1, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%032X"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
