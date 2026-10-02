.class public final Lcom/google/android/gms/internal/gtm/zzfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method public static zza(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 1
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    return-wide v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/gtm/zzfb;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzaw;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_10
    new-instance v0, Ljava/net/URI;

    const-string v2, "?"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    .line 15
    :cond_23
    new-instance p1, Ljava/lang/String;

    .line 4
    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/HttpUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_31} :catch_a5

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzaw;-><init>()V

    const-string v0, "utm_content"

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzp(Ljava/lang/String;)V

    const-string v0, "utm_medium"

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzu(Ljava/lang/String;)V

    const-string v0, "utm_campaign"

    .line 8
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzv(Ljava/lang/String;)V

    const-string v0, "utm_source"

    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzw(Ljava/lang/String;)V

    const-string v0, "utm_term"

    .line 10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzt(Ljava/lang/String;)V

    const-string v0, "utm_id"

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzs(Ljava/lang/String;)V

    const-string v0, "anid"

    .line 12
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzo(Ljava/lang/String;)V

    const-string v0, "gclid"

    .line 13
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzr(Ljava/lang/String;)V

    const-string v0, "dclid"

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzq(Ljava/lang/String;)V

    const-string v0, "aclid"

    .line 15
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzaw;->zzn(Ljava/lang/String;)V

    return-object p1

    :catch_a5
    move-exception p1

    .line 4
    const-string v0, "No valid campaign data found"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static zzc(Z)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq v0, p0, :cond_6

    const-string p0, "0"

    return-object p0

    :cond_6
    const-string p0, "1"

    return-object p0
.end method

.method public static zzd(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "-"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    const-string p0, "MD5"

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    .line 1
    :try_start_6
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_a} :catch_e

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    return-object v1

    :catch_e
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzf(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_65

    aget-object v4, p0, v3

    const-string v5, "="

    const/4 v6, 0x3

    .line 4
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v8, :cond_53

    .line 6
    aget-object v9, v4, v2

    aget-object v10, v4, v8

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2a

    move-object v10, v7

    goto :goto_2c

    :cond_2a
    aget-object v10, v4, v8

    :goto_2c
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v6, :cond_62

    .line 7
    aget-object v5, v4, v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    aget-object v5, v4, v8

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 8
    aget-object v5, v4, v8

    const/4 v6, 0x2

    aget-object v8, v4, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4d

    goto :goto_4f

    :cond_4d
    aget-object v7, v4, v6

    :goto_4f
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_53
    if-ne v5, v8, :cond_62

    .line 9
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_62

    .line 10
    aget-object v4, v4, v2

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_65
    return-object v0
.end method

.method public static zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static zzh(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzfs;->zzg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzi(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 2
    iget-boolean p1, p0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1a

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1c

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    :catch_1c
    :cond_1c
    return v0
.end method

.method public static zzj(DLjava/lang/String;)Z
    .registers 11

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_43

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_e

    goto :goto_43

    .line 1
    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_39

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v1

    :goto_1c
    if-ltz v0, :cond_3a

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v5, v5, 0x6

    const v7, 0xfffffff

    and-int/2addr v5, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v6, 0xe

    add-int/2addr v5, v6

    shr-int/lit8 v6, v5, 0x15

    const/high16 v7, 0xfe00000

    and-int/2addr v7, v5

    if-eqz v7, :cond_36

    and-int/lit8 v6, v6, 0x7f

    xor-int/2addr v5, v6

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_39
    move v5, v4

    :cond_3a
    rem-int/lit16 v5, v5, 0x2710

    int-to-double v5, v5

    mul-double/2addr p0, v2

    cmpl-double p0, v5, p0

    if-ltz p0, :cond_43

    return v4

    :cond_43
    :goto_43
    return v1
.end method
