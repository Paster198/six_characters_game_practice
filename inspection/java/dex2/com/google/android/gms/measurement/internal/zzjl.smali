.class final Lcom/google/android/gms/measurement/internal/zzjl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbh;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-string v0, "_r"

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zzc:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzL()V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzv()Lcom/google/android/gms/measurement/internal/zzmc;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzmc;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzio;->zzP()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zza:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 5
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzjl;->zzb:Ljava/lang/String;

    .line 6
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    const-string v7, "_iap"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_4a

    const-string v7, "_iapx"

    .line 8
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Generating a payload for this event is not available. package_name, event_name"

    .line 194
    invoke-virtual {v0, v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    :cond_4a
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb()Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v7

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v9

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzaw;->zzH()V

    .line 12
    :try_start_57
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzl(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_7b

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v10, [B
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_530

    .line 16
    :goto_73
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    return-object v0

    .line 18
    :cond_7b
    :try_start_7b
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzaJ()Z

    move-result v11

    if-nez v11, :cond_93

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v10, [B

    goto :goto_73

    .line 21
    :cond_93
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhx;->zzz()Lcom/google/android/gms/internal/measurement/zzhw;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzar(I)Lcom/google/android/gms/internal/measurement/zzhw;

    const-string v12, "android"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzan(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b1

    .line 23
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzI(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 24
    :cond_b1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzE()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c8

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzE()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 26
    :cond_c8
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_df

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 28
    :cond_df
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v12

    const-wide/32 v14, -0x80000000

    cmp-long v12, v12, v14

    if-eqz v12, :cond_f2

    .line 29
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zze()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzM(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 30
    :cond_f2
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzq()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhw;->zzai(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 31
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzo()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhw;->zzZ(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzH()Ljava/lang/String;

    move-result-object v12

    .line 33
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzA()Ljava/lang/String;

    move-result-object v13

    .line 34
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_112

    .line 35
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzhw;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_11b

    .line 36
    :cond_112
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11b

    .line 37
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzhw;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 38
    :cond_11b
    :goto_11b
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzw()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/internal/measurement/zzhw;->zzay(J)Lcom/google/android/gms/internal/measurement/zzhw;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzmc;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 39
    invoke-virtual {v12, v6}, Lcom/google/android/gms/measurement/internal/zzpv;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v12

    .line 40
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzhw;->zzW(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v3

    if-eqz v3, :cond_156

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/gms/measurement/internal/zzam;->zzy(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 43
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v12, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v3

    if-eqz v3, :cond_156

    .line 44
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_156

    .line 45
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzY(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 46
    :cond_156
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzjx;->zzp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzT(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 47
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v12, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzaI()Z

    move-result v3

    if-eqz v3, :cond_1c9

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpv;->zzw()Lcom/google/android/gms/measurement/internal/zzoa;

    move-result-object v3

    .line 49
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v12}, Lcom/google/android/gms/measurement/internal/zzoa;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjx;)Landroid/util/Pair;

    move-result-object v3

    .line 50
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzaI()Z

    move-result v5

    if-eqz v5, :cond_1c9

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    .line 51
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_185
    .catchall {:try_start_7b .. :try_end_185} :catchall_530

    if-nez v5, :cond_1c9

    .line 52
    :try_start_187
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-wide v13, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    .line 53
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 54
    invoke-static {v5, v13}, Lcom/google/android/gms/measurement/internal/zzmc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzas(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;
    :try_end_198
    .catch Ljava/lang/SecurityException; {:try_start_187 .. :try_end_198} :catch_1a8
    .catchall {:try_start_187 .. :try_end_198} :catchall_530

    .line 57
    :try_start_198
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_1c9

    .line 58
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzal(Z)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_1c9

    :catch_1a8
    move-exception v0

    .line 191
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v8, v10, [B
    :try_end_1be
    .catchall {:try_start_198 .. :try_end_1be} :catchall_530

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 16
    :goto_1c0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    goto/16 :goto_52f

    .line 58
    :cond_1c9
    :goto_1c9
    :try_start_1c9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 61
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzX(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 64
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzbb;->zza()J

    move-result-wide v13

    long-to-int v5, v13

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaz(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzg()Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaD(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;
    :try_end_1fa
    .catchall {:try_start_1c9 .. :try_end_1fa} :catchall_530

    :try_start_1fa
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    .line 69
    invoke-virtual {v12, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21f

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-wide v12, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    .line 72
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzmc;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;
    :try_end_21f
    .catch Ljava/lang/SecurityException; {:try_start_1fa .. :try_end_21f} :catch_514
    .catchall {:try_start_1fa .. :try_end_21f} :catchall_530

    .line 77
    :cond_21f
    :try_start_21f
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_236

    .line 78
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzag(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 79
    :cond_236
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v13

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v5

    .line 81
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzaw;->zzE(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 82
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_248
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_261

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzqd;

    const-string v15, "_lte"

    .line 83
    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25f

    goto :goto_262

    :cond_25f
    const/4 v8, 0x0

    goto :goto_248

    :cond_261
    const/4 v14, 0x0

    :goto_262
    const-wide/16 v22, 0x0

    if-eqz v14, :cond_26a

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    if-nez v8, :cond_28b

    :cond_26a
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzqd;

    const-string v14, "auto"

    const-string v15, "_lte"

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 84
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    .line 85
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    .line 86
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/measurement/internal/zzqd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 87
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v8

    .line 89
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzaw;->zzai(Lcom/google/android/gms/measurement/internal/zzqd;)Z

    .line 90
    :cond_28b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/android/gms/internal/measurement/zzio;

    move v12, v10

    .line 91
    :goto_292
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2cc

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzio;->zze()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v13

    .line 93
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzqd;->zzc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/zzin;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzin;

    .line 94
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-wide v14, v14, Lcom/google/android/gms/measurement/internal/zzqd;->zzd:J

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzin;->zzg(J)Lcom/google/android/gms/internal/measurement/zzin;

    .line 95
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v14

    .line 96
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzqd;

    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzqd;->zze:Ljava/lang/Object;

    invoke-virtual {v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzqa;->zzx(Lcom/google/android/gms/internal/measurement/zzin;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzio;

    aput-object v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_292

    .line 98
    :cond_2cc
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzmc;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 99
    invoke-virtual {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/zzpv;->zzQ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzhw;)V

    .line 100
    invoke-virtual {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/zzpv;->zzaa(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzhw;)V

    .line 101
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhf;->zzb(Lcom/google/android/gms/measurement/internal/zzbh;)Lcom/google/android/gms/measurement/internal/zzhf;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 102
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzhf;->zzd:Landroid/os/Bundle;

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v15

    .line 104
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zzk(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    .line 105
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzO(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v13

    .line 107
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v15

    .line 108
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzf(Ljava/lang/String;)I

    move-result v15

    .line 109
    invoke-virtual {v13, v8, v15}, Lcom/google/android/gms/measurement/internal/zzqf;->zzQ(Lcom/google/android/gms/measurement/internal/zzhf;I)V

    const-string v8, "_c"

    move-object v15, v11

    const-wide/16 v10, 0x1

    .line 110
    invoke-virtual {v14, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 112
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v13, "Marking in-app purchase as real-time"

    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v14, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_o"

    .line 114
    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzc:Ljava/lang/String;

    invoke-virtual {v14, v8, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    move-wide/from16 v17, v10

    .line 116
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzM()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_348

    .line 117
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    const-string v10, "_dbg"

    .line 118
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v14, v10, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v8

    .line 120
    invoke-virtual {v8, v14, v0, v11}, Lcom/google/android/gms/measurement/internal/zzqf;->zzS(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_348
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    move-object v8, v7

    .line 122
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zza:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaw;->zzs(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    if-nez v0, :cond_391

    move-object v10, v5

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbd;

    move-object v11, v14

    move-object v0, v15

    .line 123
    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    const-wide/16 v10, 0x0

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    const-wide/16 v12, 0x0

    move-object/from16 v28, v17

    const/16 v29, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v30, v18

    const/16 v18, 0x0

    const/16 v31, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v24

    move-object/from16 v24, v3

    move/from16 v3, v29

    .line 124
    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    move-wide/from16 v12, v22

    move-object/from16 v15, v28

    goto :goto_3aa

    :cond_391
    move-object/from16 v24, v3

    move-object v1, v5

    move-object/from16 v30, v9

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v25, v14

    move-object v5, v15

    const/4 v3, 0x0

    const/16 v31, 0x0

    move-object v15, v8

    .line 164
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzf:J

    .line 125
    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    .line 126
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbd;->zzc(J)Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    move-wide v12, v8

    .line 127
    :goto_3aa
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v8

    .line 128
    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzV(Lcom/google/android/gms/measurement/internal/zzbd;)V

    move-object v8, v5

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbc;

    move-object v9, v8

    move-object v8, v6

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzmc;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 129
    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzd:J

    move-object v3, v9

    move-object/from16 v14, v25

    move-object/from16 v4, v30

    move-object v9, v7

    move-object/from16 v7, v27

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object v6, v8

    move-object v7, v9

    .line 130
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zze()Lcom/google/android/gms/internal/measurement/zzhl;

    move-result-object v8

    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    .line 131
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhl;->zzm(J)Lcom/google/android/gms/internal/measurement/zzhl;

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    .line 132
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzhl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhl;

    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    .line 133
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhl;->zzl(J)Lcom/google/android/gms/internal/measurement/zzhl;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbf;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzbe;

    .line 134
    invoke-direct {v9, v5}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;)V

    .line 135
    :cond_3e1
    :goto_3e1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_406

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbe;->zza()Ljava/lang/String;

    move-result-object v10

    .line 135
    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zze()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/zzhp;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;

    .line 138
    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzbf;->zzf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3e1

    .line 139
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v12

    .line 140
    invoke-virtual {v12, v11, v10}, Lcom/google/android/gms/measurement/internal/zzqa;->zzw(Lcom/google/android/gms/internal/measurement/zzhp;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzhl;->zze(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;

    goto :goto_3e1

    .line 142
    :cond_406
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn(Lcom/google/android/gms/internal/measurement/zzhl;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzia;->zza()Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v5

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzho;->zza()Lcom/google/android/gms/internal/measurement/zzhn;

    move-result-object v9

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzc:J

    .line 145
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(J)Lcom/google/android/gms/internal/measurement/zzhn;

    .line 146
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzhn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhn;

    .line 147
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzhn;)Lcom/google/android/gms/internal/measurement/zzhy;

    .line 148
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzhw;->zzao(Lcom/google/android/gms/internal/measurement/zzhy;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 149
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzh()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v32

    .line 150
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzC()Ljava/lang/String;

    move-result-object v33

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaN()Ljava/util/List;

    move-result-object v35

    .line 153
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 154
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    const/16 v38, 0x0

    .line 155
    invoke-virtual/range {v32 .. v38}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzi(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 157
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhl;->zzq()Z

    move-result v0

    if-eqz v0, :cond_45c

    .line 158
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzax(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 159
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhl;->zzc()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzab(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 160
    :cond_45c
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzs()J

    move-result-wide v7

    cmp-long v0, v7, v22

    if-eqz v0, :cond_467

    .line 161
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzap(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 162
    :cond_467
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzu()J

    move-result-wide v9

    cmp-long v5, v9, v22

    if-eqz v5, :cond_473

    .line 163
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaq(J)Lcom/google/android/gms/internal/measurement/zzhw;

    goto :goto_478

    :cond_473
    if-eqz v0, :cond_478

    .line 164
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaq(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 165
    :cond_478
    :goto_478
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzL()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrd;->zzb()Z

    .line 167
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    .line 168
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzgi;->zzaL:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 169
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v5

    if-eqz v5, :cond_490

    if-eqz v0, :cond_490

    .line 170
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 171
    :cond_490
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzP()V

    .line 172
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzP(I)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 173
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    const-wide/32 v7, 0x1d0da

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaB(J)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 175
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaA(J)Lcom/google/android/gms/internal/measurement/zzhw;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzhw;->zzau(Z)Lcom/google/android/gms/internal/measurement/zzhw;

    .line 178
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzaF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/zzpv;->zzN(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzhw;)V

    .line 179
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/measurement/zzht;->zzc(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzht;

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zzf()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzau(J)V

    .line 181
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhw;->zze()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzas(J)V

    .line 182
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    const/4 v3, 0x0

    .line 183
    invoke-virtual {v0, v4, v3, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zzT(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 184
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzS()V
    :try_end_4e3
    .catchall {:try_start_21f .. :try_end_4e3} :catchall_530

    .line 16
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 186
    :try_start_4ea
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzpv;->zzA()Lcom/google/android/gms/measurement/internal/zzqa;

    move-result-object v0

    .line 187
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzko;->zzcd()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzqa;->zzB([B)[B

    move-result-object v0
    :try_end_4fc
    .catch Ljava/io/IOException; {:try_start_4ea .. :try_end_4fc} :catch_4fd

    return-object v0

    :catch_4fd
    move-exception v0

    .line 17
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 188
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    .line 190
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v31

    goto :goto_52f

    :catch_514
    move-exception v0

    .line 17
    :try_start_515
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    new-array v8, v3, [B
    :try_end_52b
    .catchall {:try_start_515 .. :try_end_52b} :catchall_530

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    goto/16 :goto_1c0

    :goto_52f
    return-object v8

    :catchall_530
    move-exception v0

    .line 37
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzoz;->zzg:Lcom/google/android/gms/measurement/internal/zzpv;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzj()Lcom/google/android/gms/measurement/internal/zzaw;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzL()V

    .line 191
    throw v0
.end method
