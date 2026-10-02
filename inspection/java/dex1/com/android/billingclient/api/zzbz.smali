.class final Lcom/android/billingclient/api/zzbz;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/BillingClientImpl;

.field private final zzb:Lcom/android/billingclient/api/BillingClientStateListener;

.field private final zzc:Lcom/google/android/gms/internal/play_billing/zzbn;

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

.field private final zze:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;ILcom/android/billingclient/api/zzcm;)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzr(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p4

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc(Lcom/google/android/gms/internal/play_billing/zzbq;)Lcom/google/android/gms/internal/play_billing/zzbn;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzr(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc(Lcom/google/android/gms/internal/play_billing/zzbq;)Lcom/google/android/gms/internal/play_billing/zzbn;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzbz;->zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    iput p3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    return-void
.end method

.method public static synthetic zza(Lcom/android/billingclient/api/zzbz;)Ljava/lang/Object;
    .registers 24

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v3

    const/4 v7, 0x0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 64
    monitor-exit v2

    :goto_12
    move-object/from16 v16, v7

    goto/16 :goto_25c

    .line 2
    :cond_16
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_20

    move v8, v6

    goto :goto_21

    :cond_20
    move v8, v5

    .line 3
    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_260

    .line 4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    new-instance v2, Landroid/os/Bundle;

    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "accountName"

    .line 6
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzC(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzD(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzt(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;

    move-result-object v10

    .line 7
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 8
    invoke-static {v2, v3, v9, v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    goto :goto_47

    :cond_46
    move-object v2, v7

    :goto_47
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 9
    :try_start_4e
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzq(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzar;

    move-result-object v10

    .line 10
    monitor-exit v9
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_25d

    if-nez v10, :cond_67

    iget-object v0, v1, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 11
    invoke-static {v0, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    iget v2, v1, Lcom/android/billingclient/api/zzbz;->zze:I

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 12
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v3, v4, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    .line 13
    invoke-direct {v1, v4}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_12

    :cond_67
    iget-object v0, v1, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_71
    const-string v9, "inapp"

    const/16 v11, 0x19

    .line 15
    invoke-interface {v10, v11, v0, v9}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_254

    if-nez v9, :cond_182

    move-object v2, v1

    iget-object v1, v2, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/billingclient/api/zzet;->zzb(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/android/billingclient/api/zzet;->zzc(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/billingclient/api/zzet;->zza(Landroid/content/Context;)D

    move-result-wide v14

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 20
    invoke-static {v0}, Lcom/android/billingclient/api/zzet;->zzd(Landroid/content/Context;)J

    move-result-wide v7

    move-wide/from16 v18, v12

    move-object/from16 v0, v16

    :goto_a6
    int-to-long v11, v5

    cmp-long v11, v11, v18

    if-gtz v11, :cond_17a

    move-wide v12, v3

    .line 21
    :try_start_ac
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v0, Landroid/os/Bundle;

    .line 22
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "callingPackage"

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v20

    .line 23
    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzC(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzD(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzt(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;

    move-result-object v20
    :try_end_ce
    .catch Ljava/lang/SecurityException; {:try_start_ac .. :try_end_ce} :catch_171
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ce} :catch_12d

    move-wide/from16 v21, v7

    .line 25
    :try_start_d0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 26
    invoke-static {v0, v4, v9, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v4

    if-eqz v4, :cond_ed

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string v4, "enablePendingPurchases"

    const/4 v6, 0x1

    .line 28
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_ed
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v4
    :try_end_f1
    .catch Ljava/lang/SecurityException; {:try_start_d0 .. :try_end_f1} :catch_171
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_f1} :catch_129

    if-eqz v4, :cond_107

    :try_start_f3
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v4

    if-eqz v4, :cond_107

    const-string v4, "enablePendingPurchaseForSubscriptions"
    :try_end_ff
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_ff} :catch_171
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_ff} :catch_104

    const/4 v6, 0x1

    .line 30
    :try_start_100
    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_108

    :catch_104
    move-exception v0

    const/4 v6, 0x1

    goto :goto_127

    :cond_107
    const/4 v6, 0x1

    :goto_108
    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v0

    new-instance v0, Lcom/android/billingclient/api/zzcg;
    :try_end_113
    .catch Ljava/lang/SecurityException; {:try_start_100 .. :try_end_113} :catch_171
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_113} :catch_126

    move-object v8, v4

    move v4, v5

    const/4 v5, 0x0

    :try_start_116
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/zzcg;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/zzbz;Ljava/lang/Boolean;ILcom/android/billingclient/api/zzcm;)V
    :try_end_119
    .catch Ljava/lang/SecurityException; {:try_start_116 .. :try_end_119} :catch_124
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_122

    const/16 v9, 0x19

    .line 32
    :try_start_11b
    invoke-interface {v10, v9, v7, v8, v0}, Lcom/google/android/gms/internal/play_billing/zzar;->zzq(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzak;)V
    :try_end_11e
    .catch Ljava/lang/SecurityException; {:try_start_11b .. :try_end_11e} :catch_124
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_120

    goto/16 :goto_25c

    :catch_120
    move-exception v0

    goto :goto_133

    :catch_122
    move-exception v0

    goto :goto_131

    :catch_124
    move-exception v0

    goto :goto_173

    :catch_126
    move-exception v0

    :goto_127
    move v4, v5

    goto :goto_131

    :catch_129
    move-exception v0

    move v4, v5

    const/4 v6, 0x1

    goto :goto_131

    :catch_12d
    move-exception v0

    move v4, v5

    move-wide/from16 v21, v7

    :goto_131
    const/16 v9, 0x19

    :goto_133
    if-eqz v11, :cond_17b

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Transient error during initialize(), retrying in "

    .line 33
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :try_start_14d
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_150
    .catch Ljava/lang/InterruptedException; {:try_start_14d .. :try_end_150} :catch_162

    long-to-double v7, v12

    mul-double/2addr v7, v14

    move-object v13, v10

    move-wide/from16 v11, v21

    long-to-double v9, v11

    .line 35
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-long v7, v7

    add-int/lit8 v5, v4, 0x1

    move-wide v3, v7

    move-wide v7, v11

    move-object v10, v13

    goto/16 :goto_a6

    :catch_162
    move-exception v0

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    move/from16 v7, v17

    .line 38
    invoke-direct {v2, v0, v7, v4}, Lcom/android/billingclient/api/zzbz;->zzl(Ljava/lang/Exception;ZI)V

    goto/16 :goto_25c

    :catch_171
    move-exception v0

    move v4, v5

    :goto_173
    move/from16 v7, v17

    .line 39
    invoke-direct {v2, v0, v7, v4}, Lcom/android/billingclient/api/zzbz;->zzl(Ljava/lang/Exception;ZI)V

    goto/16 :goto_25c

    :cond_17a
    move v4, v5

    :cond_17b
    move/from16 v7, v17

    .line 36
    invoke-direct {v2, v0, v7, v4}, Lcom/android/billingclient/api/zzbz;->zzl(Ljava/lang/Exception;ZI)V

    goto/16 :goto_25c

    :cond_182
    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    move-object/from16 v16, v7

    move v7, v8

    move-object v13, v10

    const/16 v8, 0x1d

    move v10, v4

    move v9, v8

    :goto_18d
    if-lt v9, v4, :cond_1be

    :try_start_18f
    const-string v10, "BillingClient"

    const-string v11, "trying subs apiVersion: "

    .line 40
    invoke-static {v9, v11}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 41
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1a3

    const-string v10, "subs"

    .line 42
    invoke-interface {v13, v9, v0, v10}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_1a9

    .line 52
    :cond_1a3
    const-string v10, "subs"

    .line 43
    invoke-interface {v13, v9, v0, v10, v1}, Lcom/google/android/gms/internal/play_billing/zzar;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v10

    :goto_1a9
    if-nez v10, :cond_1b7

    .line 42
    const-string v11, "BillingClient"

    const-string v12, "highestLevelSupportedForSubs: "

    .line 44
    invoke-static {v9, v12}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 45
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1bf

    :cond_1b7
    add-int/lit8 v9, v9, -0x1

    goto :goto_18d

    :catch_1ba
    move-exception v0

    move v5, v7

    goto/16 :goto_250

    :cond_1be
    move v9, v5

    :goto_1bf
    iget-object v11, v2, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v12, 0x5

    if-lt v9, v12, :cond_1c6

    move v12, v6

    goto :goto_1c7

    :cond_1c6
    move v12, v5

    .line 46
    :goto_1c7
    invoke-static {v11, v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzaj(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    if-lt v9, v4, :cond_1cd

    goto :goto_1ce

    :cond_1cd
    move v6, v5

    .line 47
    :goto_1ce
    invoke-static {v11, v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzak(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    if-ge v9, v4, :cond_1dc

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzi:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v6, "BillingClient"

    const-string v9, "In-app billing API does not support subscription on this device."

    .line 48
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1dc
    :goto_1dc
    if-lt v8, v4, :cond_21c

    const-string v6, "BillingClient"

    const-string v9, "trying inapp apiVersion: "

    .line 49
    invoke-static {v8, v9}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1f2

    const-string v6, "inapp"

    .line 51
    invoke-interface {v13, v8, v0, v6}, Lcom/google/android/gms/internal/play_billing/zzar;->zzb(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_1f8

    .line 63
    :cond_1f2
    const-string v6, "inapp"

    .line 52
    invoke-interface {v13, v8, v0, v6, v1}, Lcom/google/android/gms/internal/play_billing/zzar;->zzc(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    :goto_1f8
    move v10, v6

    if-nez v10, :cond_219

    .line 53
    invoke-static {v11, v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzah(Lcom/android/billingclient/api/BillingClientImpl;I)V

    const-string v0, "BillingClient"

    invoke-static {v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHighestLevelSupportedForInApp: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21c

    :cond_219
    add-int/lit8 v8, v8, -0x1

    goto :goto_1dc

    :cond_21c
    :goto_21c
    invoke-static {v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    .line 55
    invoke-static {v11, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzat(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    if-ge v0, v4, :cond_232

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v0, "BillingClient"

    const-string v1, "In-app billing API version 3 is not supported on this device."

    .line 56
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_232
    invoke-static {v11, v10}, Lcom/android/billingclient/api/BillingClientImpl;->zzav(Lcom/android/billingclient/api/BillingClientImpl;I)V
    :try_end_235
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_235} :catch_1ba

    if-nez v10, :cond_240

    .line 59
    invoke-direct {v2, v7, v5}, Lcom/android/billingclient/api/zzbz;->zzj(ZI)V

    .line 60
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v0}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_25c

    .line 61
    :cond_240
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzb:Lcom/android/billingclient/api/BillingResult;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v5, v7

    .line 62
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    move-object v0, v2

    move-object v2, v1

    .line 63
    invoke-direct {v2, v0}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_25c

    .line 58
    :goto_250
    invoke-direct {v2, v0, v5}, Lcom/android/billingclient/api/zzbz;->zzm(Ljava/lang/Exception;Z)V

    goto :goto_25c

    :catch_254
    move-exception v0

    move-object v2, v1

    move-object/from16 v16, v7

    move v5, v8

    .line 16
    invoke-direct {v2, v0, v5}, Lcom/android/billingclient/api/zzbz;->zzm(Ljava/lang/Exception;Z)V

    :goto_25c
    return-object v16

    :catchall_25d
    move-exception v0

    .line 10
    :try_start_25e
    monitor-exit v9
    :try_end_25f
    .catchall {:try_start_25e .. :try_end_25f} :catchall_25d

    throw v0

    :catchall_260
    move-exception v0

    .line 3
    :try_start_261
    monitor-exit v2
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_260

    throw v0
.end method

.method public static synthetic zzb(Lcom/android/billingclient/api/zzbz;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    .line 3
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    return-void
.end method

.method static bridge synthetic zzd(Lcom/android/billingclient/api/zzbz;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbz;->zzj(ZI)V

    return-void
.end method

.method static bridge synthetic zze(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzh(Z)Ljava/lang/Long;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 1
    :try_start_3
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_49

    :try_start_a
    iget-object v1, p0, Lcom/android/billingclient/api/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzg()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzf()Lcom/google/android/gms/internal/play_billing/zzbn;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    monitor-exit p1

    return-object v1

    .line 3
    :cond_21
    monitor-exit p1

    return-object v0

    :catchall_23
    move-exception v1

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_23

    :try_start_25
    throw v1

    :cond_26
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_49

    :try_start_2d
    iget-object v1, p0, Lcom/android/billingclient/api/zzbz;->zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzg()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzf()Lcom/google/android/gms/internal/play_billing/zzbn;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    monitor-exit p1

    return-object v1

    .line 6
    :cond_44
    monitor-exit p1

    goto :goto_51

    :catchall_46
    move-exception v1

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_2d .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    const-string v1, "BillingClient"

    const-string v2, "Exception getting connection establishment duration."

    .line 7
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    return-object v0
.end method

.method private final zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V
    .registers 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zze(Lcom/google/android/gms/internal/play_billing/zzjs;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 5
    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    if-eqz p3, :cond_1d

    .line 6
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 7
    :cond_1d
    invoke-direct {p0, p4}, Lcom/android/billingclient/api/zzbz;->zzh(Z)Ljava/lang/Long;

    move-result-object p1

    if-eqz p4, :cond_5a

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzln;->zza()Lcom/google/android/gms/internal/play_billing/zzll;

    move-result-object p2

    iget p3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez p3, :cond_2d

    const/4 p4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p4, 0x0

    .line 9
    :goto_2e
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/play_billing/zzll;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzll;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 11
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/play_billing/zzll;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzll;

    if-eqz p1, :cond_40

    .line 12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 13
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzll;->zzc(J)Lcom/google/android/gms/internal/play_billing/zzll;

    :cond_40
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjl;->zza()Lcom/google/android/gms/internal/play_billing/zzjj;

    move-result-object p3

    .line 15
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzjj;

    const/4 p4, 0x6

    .line 16
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 17
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zze(Lcom/google/android/gms/internal/play_billing/zzll;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 19
    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaq(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjl;)V

    return-void

    .line 20
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlg;->zza()Lcom/google/android/gms/internal/play_billing/zzle;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzle;->zza(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzle;

    if-eqz p1, :cond_6a

    .line 21
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 22
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzle;->zzb(J)Lcom/google/android/gms/internal/play_billing/zzle;

    :cond_6a
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzlg;

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzdd;->zzm(Lcom/google/android/gms/internal/play_billing/zzlg;)V
    :try_end_79
    .catchall {:try_start_0 .. :try_end_79} :catchall_7a

    return-void

    :catchall_7a
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 24
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzj(ZI)V
    .registers 7

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzh(Z)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjp;->zza()Lcom/google/android/gms/internal/play_billing/zzjn;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzjn;->zze(I)Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzln;->zza()Lcom/google/android/gms/internal/play_billing/zzll;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v3, :cond_18

    const/4 v1, 0x1

    .line 4
    :cond_18
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzll;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzll;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 6
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzll;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzll;

    if-eqz v0, :cond_2a

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 8
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzll;->zzc(J)Lcom/google/android/gms/internal/play_billing/zzll;

    :cond_2a
    iget-object p2, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzjn;->zzd(Lcom/google/android/gms/internal/play_billing/zzll;)Lcom/google/android/gms/internal/play_billing/zzjn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjp;

    .line 10
    invoke-static {p2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzar(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjp;)V

    return-void

    .line 11
    :cond_39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlg;->zza()Lcom/google/android/gms/internal/play_billing/zzle;

    move-result-object p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 14
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzle;->zza(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzle;

    if-eqz v0, :cond_53

    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzle;->zzb(J)Lcom/google/android/gms/internal/play_billing/zzle;

    :cond_53
    iget-object p2, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzlg;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/zzdd;->zzm(Lcom/google/android/gms/internal/play_billing/zzlg;)V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception p1

    const-string p2, "BillingClient"

    const-string v0, "Unable to log."

    .line 19
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzk(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 2
    monitor-exit v1

    return-void

    .line 3
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_20

    :try_start_11
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 4
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    .line 3
    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingSetupFinished."

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_20
    move-exception p1

    .line 3
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method private final zzl(Ljava/lang/Exception;ZI)V
    .registers 11

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "Exception while invoking initialize AIDL method"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbB:Lcom/google/android/gms/internal/play_billing/zzjs;

    :goto_d
    move-object v3, v0

    goto :goto_20

    .line 3
    :cond_f
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbD:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_d

    .line 4
    :cond_16
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbC:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_d

    :cond_1d
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbA:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_d

    .line 5
    :goto_20
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 7
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    move-object v1, p0

    move v5, p2

    move v6, p3

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    .line 9
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzm(Ljava/lang/Exception;Z)V
    .registers 10

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaM:Lcom/google/android/gms/internal/play_billing/zzjs;

    :goto_d
    move-object v3, v0

    goto :goto_20

    .line 3
    :cond_f
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaL:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_d

    .line 4
    :cond_16
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaN:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_d

    :cond_1d
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzP:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_d

    .line 2
    :goto_20
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzP:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    move-object v4, v0

    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move v5, p2

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/zzbz;->zzi(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    .line 10
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 7

    .line 1
    const-string p1, "BillingClient"

    const-string v0, "Billing service died."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_8
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaz(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjl;->zza()Lcom/google/android/gms/internal/play_billing/zzjj;

    move-result-object v1

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbf:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zze(Lcom/google/android/gms/internal/play_billing/zzjs;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzln;->zza()Lcom/google/android/gms/internal/play_billing/zzll;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v3, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    move v4, p1

    .line 9
    :goto_33
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzll;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzll;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zze(Lcom/google/android/gms/internal/play_billing/zzll;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 13
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zza(Lcom/google/android/gms/internal/play_billing/zzjl;)V

    goto :goto_5a

    .line 19
    :cond_46
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb()Lcom/google/android/gms/internal/play_billing/zzjx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zzi(Lcom/google/android/gms/internal/play_billing/zzjx;)V
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_52

    goto :goto_5a

    :catchall_52
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_5a
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 15
    :try_start_61
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_85

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_85

    .line 16
    :cond_6f
    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 17
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaw(Lcom/android/billingclient/api/BillingClientImpl;)V

    .line 18
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_87

    :try_start_76
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 19
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_7c

    goto :goto_86

    :catchall_7c
    move-exception p1

    .line 18
    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingServiceDisconnected."

    .line 20
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 21
    :cond_85
    :goto_85
    :try_start_85
    monitor-exit v1

    :goto_86
    return-void

    :catchall_87
    move-exception p1

    .line 18
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_87

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 1
    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2
    :try_start_e
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    .line 11
    monitor-exit v1

    return-void

    .line 3
    :cond_17
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzaq;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/play_billing/zzar;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzai(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzar;)V

    .line 4
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_48

    new-instance v2, Lcom/android/billingclient/api/zzbx;

    invoke-direct {v2, p0}, Lcom/android/billingclient/api/zzbx;-><init>(Lcom/android/billingclient/api/zzbz;)V

    new-instance v5, Lcom/android/billingclient/api/zzby;

    invoke-direct {v5, p0}, Lcom/android/billingclient/api/zzby;-><init>(Lcom/android/billingclient/api/zzbz;)V

    .line 5
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzf(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;

    move-result-object v6

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 7
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p2, :cond_47

    iget p2, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzm(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 9
    invoke-static {p1, v1, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    .line 10
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzbz;->zzk(Lcom/android/billingclient/api/BillingResult;)V

    :cond_47
    return-void

    :catchall_48
    move-exception v0

    move-object p1, v0

    .line 4
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_48

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7

    .line 1
    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_8
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    .line 2
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaz(Lcom/android/billingclient/api/BillingClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjl;->zza()Lcom/google/android/gms/internal/play_billing/zzjj;

    move-result-object v1

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbe:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zze(Lcom/google/android/gms/internal/play_billing/zzjs;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzln;->zza()Lcom/google/android/gms/internal/play_billing/zzll;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v3, :cond_32

    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    move v4, p1

    .line 9
    :goto_33
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzll;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzll;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zze(Lcom/google/android/gms/internal/play_billing/zzll;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 13
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zza(Lcom/google/android/gms/internal/play_billing/zzjl;)V

    goto :goto_5a

    .line 25
    :cond_46
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlk;->zzb()Lcom/google/android/gms/internal/play_billing/zzlk;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/zzdd;->zzn(Lcom/google/android/gms/internal/play_billing/zzlk;)V
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_52

    goto :goto_5a

    :catchall_52
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_5a
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 15
    :try_start_61
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzi()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_80

    .line 16
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-eq v2, v3, :cond_7e

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-nez v2, :cond_75

    goto :goto_7e

    .line 18
    :cond_75
    iget-object v2, p0, Lcom/android/billingclient/api/zzbz;->zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd()Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzbn;->zze()Lcom/google/android/gms/internal/play_billing/zzbn;

    goto :goto_90

    .line 18
    :cond_7e
    :goto_7e
    monitor-exit v1

    goto :goto_99

    .line 23
    :cond_80
    iget-object v2, p0, Lcom/android/billingclient/api/zzbz;->zzd:Lcom/google/android/gms/internal/play_billing/zzbn;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd()Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzbn;->zze()Lcom/google/android/gms/internal/play_billing/zzbn;

    .line 20
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v2

    if-ne v2, v3, :cond_90

    .line 25
    monitor-exit v1

    goto :goto_99

    .line 21
    :cond_90
    :goto_90
    invoke-static {v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 22
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_61 .. :try_end_94} :catchall_a3

    :try_start_94
    iget-object p1, p0, Lcom/android/billingclient/api/zzbz;->zzb:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 23
    invoke-interface {p1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_9a

    :goto_99
    return-void

    :catchall_9a
    move-exception p1

    .line 22
    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingServiceDisconnected."

    .line 24
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_a3
    move-exception p1

    .line 22
    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method public final zzf()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbz;->zza:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/billingclient/api/zzbz;->zzc:Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd()Lcom/google/android/gms/internal/play_billing/zzbn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzbn;->zze()Lcom/google/android/gms/internal/play_billing/zzbn;

    .line 2
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v1
.end method

.method final zzg()Z
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/zzbz;->zze:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
