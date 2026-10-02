.class final Lcom/android/billingclient/api/zzcg;
.super Lcom/google/android/gms/internal/play_billing/zzaj;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Lcom/android/billingclient/api/zzbz;

.field final zzb:Ljava/lang/Boolean;

.field final zzc:I

.field final synthetic zzd:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/zzbz;Ljava/lang/Boolean;ILcom/android/billingclient/api/zzcm;)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iput p4, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    return-void
.end method

.method private final zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    move-object v2, p5

    move p5, p4

    move-object p4, v2

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/android/billingclient/api/zzbz;->zzc(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    .line 3
    invoke-static {p1, p2}, Lcom/android/billingclient/api/zzbz;->zze(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .registers 12

    if-nez p1, :cond_1d

    .line 1
    const-string v0, "BillingClient"

    const-string v2, "Response bundle is null."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    .line 2
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbr:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_1d
    const-string v0, "RESPONSE_CODE"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "BillingClient"

    const-string v2, "Response bundle doesn\'t contain a response code"

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    .line 6
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzby:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_40
    const-string v0, "RESPONSE_CODE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    const-string v3, "RESPONSE_CODE"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "DEBUG_MESSAGE"

    const-string v5, ""

    .line 10
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    const-string v5, "RESPONSE_CODE"

    move-object v6, v4

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbz:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 12
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 13
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Response code from Phonesky: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    move-object v1, p0

    move v5, v6

    move-object v6, v2

    move-object v2, v0

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_83
    const-string v0, "BILLING_API_VERSION_KEY"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "BillingClient"

    const-string v2, "Billing API version not found in response bundle."

    .line 16
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    .line 17
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbx:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 17
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_a6
    const-string v0, "BILLING_API_VERSION_KEY"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    .line 20
    invoke-static {v3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzat(Lcom/android/billingclient/api/BillingClientImpl;I)V

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v0, v4, :cond_b8

    move v4, v5

    goto :goto_b9

    :cond_b8
    move v4, v6

    .line 21
    :goto_b9
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzaj(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    const/4 v4, 0x3

    if-lt v0, v4, :cond_c0

    goto :goto_c1

    :cond_c0
    move v5, v6

    .line 22
    :goto_c1
    invoke-static {v3, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzak(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    const-string v0, "EXPERIMENT_VALUES_KEY"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_14e

    :try_start_cc
    const-string v0, "DELEGATION_API_ENABLED_KEY"

    .line 24
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/android/billingclient/api/zzdq;->zzg(Z)V
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d6

    goto :goto_e6

    :catchall_d6
    move-exception v0

    .line 26
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading EnableDelegationApi experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_e6
    :try_start_e6
    const-string v0, "AUTO_SERVICE_RECONNECTION_SYNCHRONOUS_TIMEOUT_MS_KEY"

    .line 27
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 28
    invoke-static {v7, v8}, Lcom/android/billingclient/api/zzdq;->zzf(J)V
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_f0

    goto :goto_100

    :catchall_f0
    move-exception v0

    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading AutoServiceReconnectionSynchronousTimeoutMs experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :goto_100
    :try_start_100
    const-string v0, "AUTO_SERVICE_RECONNECTION_ASYNCHRONOUS_TIMEOUT_MS_KEY"

    .line 30
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 31
    invoke-static {v7, v8}, Lcom/android/billingclient/api/zzdq;->zzd(J)V
    :try_end_109
    .catchall {:try_start_100 .. :try_end_109} :catchall_10a

    goto :goto_11a

    :catchall_10a
    move-exception v0

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading AutoServiceReconnectionAsynchronousTimeoutMs experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :goto_11a
    :try_start_11a
    const-string v0, "AUTO_SERVICE_RECONNECTION_MAX_NUM_RETRIES_KEY"

    .line 33
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-static {v0}, Lcom/android/billingclient/api/zzdq;->zze(I)V
    :try_end_123
    .catchall {:try_start_11a .. :try_end_123} :catchall_124

    goto :goto_134

    :catchall_124
    move-exception v0

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error reading AutoServiceReconnectionMaxNumRetries experiment flag: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_134
    :try_start_134
    const-string v0, "ENABLE_DEDUPLICATE_SERVICE_DISCONNECTED_CALLBACK"

    .line 36
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 37
    invoke-static {v0}, Lcom/android/billingclient/api/zzdq;->zzh(Z)V
    :try_end_13d
    .catchall {:try_start_134 .. :try_end_13d} :catchall_13e

    goto :goto_14e

    :catchall_13e
    move-exception v0

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error reading EnableDeduplicateServiceDisconnectedCallback experiment flag: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_14e
    :goto_14e
    const-string v0, "ENABLED_SUBSCRIPTION_CLIENT_ACTIONS_KEY"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_157

    goto :goto_190

    .line 55
    :cond_157
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzce;

    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/zzce;-><init>()V

    .line 40
    invoke-static {}, Lcom/android/billingclient/api/zzev;->values()[Lcom/android/billingclient/api/zzev;

    move-result-object v3

    array-length v5, v3

    move v7, v6

    :goto_162
    if-ge v7, v5, :cond_176

    aget-object v8, v3, v7

    .line 41
    invoke-virtual {v8}, Lcom/android/billingclient/api/zzev;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_173

    .line 42
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/play_billing/zzce;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzce;

    :cond_173
    add-int/lit8 v7, v7, 0x1

    goto :goto_162

    :cond_176
    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzce;->zzc()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzal(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzcf;)V

    .line 44
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzz;

    move-result-object v2

    if-eqz v2, :cond_190

    .line 45
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzz;

    move-result-object v2

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzs(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/zzz;->zzj(Lcom/google/android/gms/internal/play_billing/zzcf;)V

    .line 39
    :cond_190
    :goto_190
    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-ge v2, v4, :cond_1b3

    const-string v0, "BillingClient"

    const-string v2, "In-app billing API version 3 is not supported on this device."

    .line 46
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    .line 47
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzb:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_1b3
    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object v3, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v5, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 50
    invoke-static {v0, v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzav(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 51
    :try_start_1c5
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    if-ne v0, v4, :cond_1cd

    .line 52
    monitor-exit v6

    return-void

    .line 53
    :cond_1cd
    monitor-exit v6
    :try_end_1ce
    .catchall {:try_start_1c5 .. :try_end_1ce} :catchall_1d7

    .line 54
    invoke-static {v2, v3, v5}, Lcom/android/billingclient/api/zzbz;->zzd(Lcom/android/billingclient/api/zzbz;ZI)V

    .line 55
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v2, v0}, Lcom/android/billingclient/api/zzbz;->zze(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :catchall_1d7
    move-exception v0

    .line 53
    :try_start_1d8
    monitor-exit v6
    :try_end_1d9
    .catchall {:try_start_1d8 .. :try_end_1d9} :catchall_1d7

    throw v0
.end method
