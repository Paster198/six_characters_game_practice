.class public final Lcom/google/android/gms/measurement/internal/zzio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjs;


# static fields
.field private static volatile zzb:Lcom/google/android/gms/measurement/internal/zzio;


# instance fields
.field private zzA:Z

.field private zzB:Ljava/lang/Boolean;

.field private zzC:J

.field private volatile zzD:Ljava/lang/Boolean;

.field private volatile zzE:Z

.field private zzF:I

.field private zzG:I

.field private final zzH:Ljava/util/concurrent/atomic/AtomicInteger;

.field final zza:J

.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzaf;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzam;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzht;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzhe;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzil;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzop;

.field private final zzn:Lcom/google/android/gms/measurement/internal/zzqf;

.field private final zzo:Lcom/google/android/gms/measurement/internal/zzgx;

.field private final zzp:Lcom/google/android/gms/common/util/Clock;

.field private final zzq:Lcom/google/android/gms/measurement/internal/zzmo;

.field private final zzr:Lcom/google/android/gms/measurement/internal/zzlw;

.field private final zzs:Lcom/google/android/gms/measurement/internal/zzd;

.field private final zzt:Lcom/google/android/gms/measurement/internal/zzmb;

.field private final zzu:Ljava/lang/String;

.field private zzv:Lcom/google/android/gms/measurement/internal/zzgv;

.field private zzw:Lcom/google/android/gms/measurement/internal/zzny;

.field private zzx:Lcom/google/android/gms/measurement/internal/zzbb;

.field private zzy:Lcom/google/android/gms/measurement/internal/zzgs;

.field private zzz:Lcom/google/android/gms/measurement/internal/zzmd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzA:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzH:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzke;->zza:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzh:Lcom/google/android/gms/measurement/internal/zzaf;

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzgf;->zza:Lcom/google/android/gms/measurement/internal/zzaf;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzb:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zze:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzd:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzf:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzh:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zze:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzj:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzu:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzE:Z

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzki;->zzd(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzp:Lcom/google/android/gms/common/util/Clock;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzi:Ljava/lang/Long;

    if-eqz v4, :cond_4a

    .line 5
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_4e

    .line 6
    :cond_4a
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    :goto_4e
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzam;

    .line 7
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 8
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzht;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzht;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzw()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzhe;

    .line 10
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/zzhe;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzw()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 12
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzqf;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzqf;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjr;->zzw()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-direct {v4, p1, p0}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzke;Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 14
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgx;

    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/zzgx;-><init>(Lcom/google/android/gms/measurement/internal/zzgw;)V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzo:Lcom/google/android/gms/measurement/internal/zzgx;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzd;

    .line 15
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzd;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzs:Lcom/google/android/gms/measurement/internal/zzd;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzmo;

    .line 16
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzmo;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzq:Lcom/google/android/gms/measurement/internal/zzmo;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzlw;

    .line 18
    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/zzlw;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzop;

    .line 20
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzm:Lcom/google/android/gms/measurement/internal/zzop;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzmb;

    .line 22
    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzmb;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjr;->zzw()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzt:Lcom/google/android/gms/measurement/internal/zzmb;

    .line 24
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjr;->zzw()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzg:Lcom/google/android/gms/internal/measurement/zzdh;

    if-eqz v6, :cond_c7

    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c7

    goto :goto_c8

    :cond_c7
    move v0, v2

    .line 26
    :goto_c8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_111

    .line 29
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_11d

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    if-nez v2, :cond_f4

    .line 32
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzlv;

    invoke-direct {v2, v4}, Lcom/google/android/gms/measurement/internal/zzlv;-><init>(Lcom/google/android/gms/measurement/internal/zzlw;)V

    iput-object v2, v4, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    :cond_f4
    if-eqz v0, :cond_11d

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    .line 33
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzlw;->zza:Lcom/google/android/gms/measurement/internal/zzlv;

    .line 34
    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_11d

    .line 27
    :cond_111
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 36
    :cond_11d
    :goto_11d
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzio;Lcom/google/android/gms/measurement/internal/zzke;)V

    .line 37
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/measurement/internal/zzio;Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 23

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    const-string v4, "timestamp"

    const-string v5, "gad_source"

    const-string v6, "gbraid"

    const-string v7, "gclid"

    const-string v8, "deeplink"

    const-string v9, ""

    const/16 v10, 0xc8

    if-eq v0, v10, :cond_24

    const/16 v10, 0xcc

    if-eq v0, v10, :cond_24

    const/16 v10, 0x130

    if-ne v0, v10, :cond_21

    goto :goto_25

    :cond_21
    move v10, v0

    goto/16 :goto_158

    :cond_24
    move v10, v0

    :goto_25
    if-nez v2, :cond_158

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzo:Lcom/google/android/gms/measurement/internal/zzhn;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    if-eqz v3, :cond_149

    array-length v0, v3

    if-nez v0, :cond_39

    goto/16 :goto_149

    .line 4
    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 5
    :try_start_3e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Deferred Deep Link is empty."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_5c
    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v12, 0x0

    .line 13
    invoke-virtual {v3, v4, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    new-instance v3, Landroid/os/Bundle;

    .line 14
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 15
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    iget-object v15, v14, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_82

    goto/16 :goto_12a

    .line 22
    :cond_82
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    .line 17
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-wide/from16 p2, v12

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    move-object/from16 v16, v14

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12a

    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12a

    .line 23
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 24
    invoke-virtual {v3, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_ad
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b6

    .line 26
    invoke-virtual {v3, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_b6
    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_cis"

    const-string v5, "ddp"

    .line 28
    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    const-string v5, "auto"

    const-string v6, "_cmp"

    .line 29
    invoke-virtual {v2, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzlw;->zzR(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_d0
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_d0} :catch_139

    if-eqz v2, :cond_d3

    goto :goto_129

    :cond_d3
    :try_start_d3
    const-string v2, "google.analytics.deferred.deeplink.prefs"

    .line 32
    invoke-virtual {v15, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 34
    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    .line 36
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_eb
    .catch Ljava/lang/RuntimeException; {:try_start_d3 .. :try_end_eb} :catch_116
    .catch Lorg/json/JSONException; {:try_start_d3 .. :try_end_eb} :catch_139

    if-eqz v0, :cond_129

    :try_start_ed
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.google.analytics.action.DEEPLINK_ACTION"

    .line 40
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v16

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_104

    .line 41
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 42
    :cond_104
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    .line 43
    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catch_116
    move-exception v0

    move-object/from16 v2, v16

    .line 45
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_129
    :goto_129
    return-void

    .line 16
    :cond_12a
    :goto_12a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    .line 22
    invoke-virtual {v2, v3, v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_138
    .catch Lorg/json/JSONException; {:try_start_ed .. :try_end_138} :catch_139

    return-void

    :catch_139
    move-exception v0

    .line 49
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_149
    :goto_149
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Deferred Deep Link response empty."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_158
    :goto_158
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Network Request for Deferred Deep Link failed. response, exception"

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zzC(Lcom/google/android/gms/measurement/internal/zzio;Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzq()Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjr;->zzw()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzx:Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzg:Lcom/google/android/gms/internal/measurement/zzdh;

    if-nez v1, :cond_1e

    const-wide/16 v1, 0x0

    goto :goto_20

    .line 28
    :cond_1e
    iget-wide v1, v1, Lcom/google/android/gms/internal/measurement/zzdh;->zza:J

    :goto_20
    move-wide v7, v1

    .line 5
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzgs;

    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzke;->zzf:J

    move-object v4, p0

    .line 6
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzgs;-><init>(Lcom/google/android/gms/measurement/internal/zzio;JJ)V

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object v3, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzy:Lcom/google/android/gms/measurement/internal/zzgs;

    .line 8
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzgv;

    invoke-direct {p0, v4}, Lcom/google/android/gms/measurement/internal/zzgv;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object p0, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzv:Lcom/google/android/gms/measurement/internal/zzgv;

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzny;

    .line 10
    invoke-direct {p0, v4}, Lcom/google/android/gms/measurement/internal/zzny;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object p0, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzw:Lcom/google/android/gms/measurement/internal/zzny;

    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjr;->zzx()V

    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjr;->zzx()V

    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzy:Lcom/google/android/gms/measurement/internal/zzgs;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmd;

    .line 15
    invoke-direct {p1, v4}, Lcom/google/android/gms/measurement/internal/zzmd;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb()V

    iput-object p1, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzz:Lcom/google/android/gms/measurement/internal/zzmd;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()V

    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    const-wide/32 v5, 0x1d0da

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "App measurement initialized, version"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzd:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a8

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_bc

    .line 26
    :cond_a8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 32
    :cond_bc
    :goto_bc
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget p0, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzF:I

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzH:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq p0, v1, :cond_ec

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p0

    iget p1, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzF:I

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Not all components initialized"

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ec
    const/4 p0, 0x1

    iput-boolean p0, v4, Lcom/google/android/gms/measurement/internal/zzio;->zzA:Z

    return-void
.end method

.method static final zzP()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final zzQ(Lcom/google/android/gms/measurement/internal/zzf;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzS(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 3

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V
    .registers 3

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjr;->zzy()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzp(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdh;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzio;
    .registers 15

    if-eqz p1, :cond_1d

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzf:Ljava/lang/String;

    if-nez v0, :cond_1d

    :cond_a
    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzb:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzc:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzd:Ljava/lang/String;

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Landroid/os/Bundle;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzdh;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/zzdh;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v1

    .line 2
    :cond_1d
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    if-nez v0, :cond_44

    const-class v1, Lcom/google/android/gms/measurement/internal/zzio;

    monitor-enter v1

    :try_start_2e
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    if-nez v0, :cond_3e

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzke;

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdh;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    .line 6
    :cond_3e
    monitor-exit v1

    goto :goto_65

    :catchall_40
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_40

    throw p0

    :cond_44
    if-eqz p1, :cond_65

    .line 11
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Landroid/os/Bundle;

    if-eqz p0, :cond_65

    const-string p1, "dataCollectionDefaultEnabled"

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_65

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 9
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    .line 6
    :cond_65
    :goto_65
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzio;->zzb:Lcom/google/android/gms/measurement/internal/zzio;

    return-object p0
.end method


# virtual methods
.method public final zzA()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method final zzD()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method final zzE()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzF:I

    return-void
.end method

.method final zzF(Z)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    return-void
.end method

.method public final zzG(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzE:Z

    return-void
.end method

.method protected final zzH(Lcom/google/android/gms/internal/measurement/zzdh;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzaR:Lcom/google/android/gms/measurement/internal/zzgg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_23

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzs()Lcom/google/android/gms/measurement/internal/zzmd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzmd;->zzi()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzih;->zzb:Lcom/google/android/gms/internal/measurement/zzih;

    if-ne v3, v6, :cond_23

    move v3, v5

    goto :goto_24

    :cond_23
    move v3, v4

    .line 6
    :goto_24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 7
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzqf;->zzan()Z

    move-result v6

    if-nez v6, :cond_3d

    :cond_3a
    if-eqz v3, :cond_8e

    move v3, v5

    :cond_3d
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 10
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 11
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    new-instance v7, Landroid/content/IntentFilter;

    .line 12
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 13
    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 14
    invoke-virtual {v9, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 15
    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzw;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzqf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-direct {v0, v6}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    iget-object v6, v8, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    const/4 v9, 0x2

    .line 17
    invoke-static {v6, v0, v7, v9}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v6, "Registered app receiver"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    if-eqz v3, :cond_8e

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzs()Lcom/google/android/gms/measurement/internal/zzmd;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzB:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 21
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzmd;->zzj(J)V

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v6

    const-string v7, "google_analytics_default_allow_ad_storage"

    .line 24
    invoke-virtual {v1, v7, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v7

    const-string v8, "google_analytics_default_allow_analytics_storage"

    .line 25
    invoke-virtual {v1, v8, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v8

    .line 26
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    const/16 v10, -0xa

    const/16 v11, 0x1e

    if-ne v7, v9, :cond_b3

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v8, v12, :cond_c1

    .line 27
    :cond_b3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 28
    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzht;->zzq(I)Z

    move-result v12

    if-eqz v12, :cond_c1

    .line 39
    invoke-static {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzjx;->zzj(Lcom/google/android/gms/measurement/internal/zzju;Lcom/google/android/gms/measurement/internal/zzju;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v6

    goto :goto_11d

    .line 29
    :cond_c1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ed

    if-eqz v6, :cond_df

    if-eq v6, v11, :cond_df

    const/16 v7, 0xa

    if-eq v6, v7, :cond_df

    if-eq v6, v11, :cond_df

    if-eq v6, v11, :cond_df

    const/16 v7, 0x28

    if-ne v6, v7, :cond_ed

    :cond_df
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    .line 36
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzjx;

    .line 37
    invoke-direct {v7, v2, v2, v10}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    .line 38
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzlw;->zzak(Lcom/google/android/gms/measurement/internal/zzjx;Z)V

    goto :goto_11c

    :cond_ed
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 30
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v6

    if-nez v6, :cond_11c

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11c

    if-eqz p1, :cond_11c

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Landroid/os/Bundle;

    if-eqz v6, :cond_11c

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 33
    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzht;->zzq(I)Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 34
    invoke-static {v6, v11}, Lcom/google/android/gms/measurement/internal/zzjx;->zzi(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzt()Z

    move-result v7

    if-nez v7, :cond_11d

    :cond_11c
    :goto_11c
    move-object v6, v2

    :cond_11d
    :goto_11d
    if-eqz v6, :cond_128

    .line 39
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 41
    invoke-virtual {v3, v6, v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzak(Lcom/google/android/gms/measurement/internal/zzjx;Z)V

    move-object v3, v6

    :cond_128
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    .line 42
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 43
    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/zzlw;->zzaj(Lcom/google/android/gms/measurement/internal/zzjx;)V

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzba;->zza()I

    move-result v3

    const-string v7, "google_analytics_default_allow_ad_personalization_signals"

    .line 47
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v7

    if-eq v7, v9, :cond_151

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 48
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    const-string v9, "Default ad personalization consent from Manifest"

    .line 50
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_151
    const-string v7, "google_analytics_default_allow_ad_user_data"

    .line 51
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v7, v8, :cond_16d

    invoke-static {v10, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzs(II)Z

    move-result v8

    if-eqz v8, :cond_16d

    .line 68
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 69
    invoke-static {v7, v10}, Lcom/google/android/gms/measurement/internal/zzba;->zzd(Lcom/google/android/gms/measurement/internal/zzju;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    .line 70
    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    goto/16 :goto_1e8

    .line 52
    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18b

    if-eqz v3, :cond_17f

    if-ne v3, v11, :cond_18b

    .line 65
    :cond_17f
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzba;

    .line 66
    invoke-direct {p1, v2, v10, v2, v2}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v6, p1, v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    goto :goto_1e8

    .line 53
    :cond_18b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b5

    if-eqz p1, :cond_1b5

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Landroid/os/Bundle;

    if-eqz v7, :cond_1b5

    invoke-static {v11, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzs(II)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 54
    invoke-static {v7, v11}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzba;->zzk()Z

    move-result v7

    if-eqz v7, :cond_1b5

    .line 56
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 57
    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/measurement/internal/zzlw;->zzag(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    .line 58
    :cond_1b5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e8

    if-eqz p1, :cond_1e8

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zzg:Landroid/os/Bundle;

    if-eqz v3, :cond_1e8

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 60
    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzh:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1e8

    .line 61
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzba;->zzg(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1e8

    .line 62
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzdh;->zze:Ljava/lang/String;

    const-string v7, "allow_personalized_ads"

    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {v6, p1, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlw;->zzal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 70
    :cond_1e8
    :goto_1e8
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    const-string p1, "google_analytics_tcf_data_enabled"

    .line 71
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1f3

    goto :goto_1f9

    .line 72
    :cond_1f3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_213

    .line 71
    :goto_1f9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v3, "TCF client enabled."

    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 75
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzW()V

    .line 77
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzlw;->zzN()V

    .line 79
    :cond_213
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 80
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-nez v3, :cond_23c

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 81
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v9, "Persisting first open"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 84
    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 85
    :cond_23c
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 86
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/zzlw;->zzb:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzx;->zzc()V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzM()Z

    move-result v3

    if-nez v3, :cond_2d0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result p1

    if-eqz p1, :cond_49f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    const-string v0, "android.permission.INTERNET"

    .line 168
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 169
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 171
    :cond_26b
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 172
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaj(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_284

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 173
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_284
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    .line 175
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v0

    if-nez v0, :cond_2c0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()Z

    move-result v0

    if-nez v0, :cond_2c0

    .line 177
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2ac

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 180
    :cond_2ac
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzat(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_2c0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :cond_2c0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 183
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto/16 :goto_49f

    .line 88
    :cond_2d0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f4

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    if-nez v3, :cond_3cc

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3cc

    :cond_2f4
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-eqz v4, :cond_315

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 101
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzj()Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzqf;->zzav(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_345

    .line 129
    :cond_315
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 92
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzj()Ljava/lang/String;

    move-result-object v8

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "admob_app_id"

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    :goto_345
    if-eqz v4, :cond_393

    .line 104
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 105
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 106
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v4

    const-string v7, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzi()Ljava/lang/Boolean;

    move-result-object v4

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 111
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v4, :cond_372

    .line 113
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzht;->zzm(Ljava/lang/Boolean;)V

    .line 114
    :cond_372
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzi()Lcom/google/android/gms/measurement/internal/zzgv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgv;->zzj()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzw:Lcom/google/android/gms/measurement/internal/zzny;

    .line 115
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzny;->zzC()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzw:Lcom/google/android/gms/measurement/internal/zzny;

    .line 116
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzny;->zzB()V

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    .line 118
    invoke-virtual {p1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 120
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 121
    :cond_393
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "gmp_app_id"

    .line 125
    invoke-interface {v4, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p1

    if-eqz p1, :cond_3be

    .line 130
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 131
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzht;->zzl(Ljava/lang/String;)V

    goto :goto_3cc

    .line 128
    :cond_3be
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzht;->zzl(Ljava/lang/String;)V

    .line 132
    :cond_3cc
    :goto_3cc
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object p1

    .line 134
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result p1

    if-nez p1, :cond_3e3

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 136
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 137
    :cond_3e3
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 138
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 139
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzht;->zze:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzac(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 140
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    :try_start_3f7
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_404
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f7 .. :try_end_404} :catch_405

    goto :goto_42a

    .line 35
    :catch_405
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 143
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 144
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 145
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Remote config removed with active feature rollouts"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 148
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    .line 149
    :cond_42a
    :goto_42a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_450

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 150
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p1

    if-nez p1, :cond_49f

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49f

    .line 152
    :cond_450
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 153
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzo()Z

    move-result v1

    if-nez v1, :cond_46f

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzA()Z

    move-result v1

    if-nez v1, :cond_46f

    .line 156
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    xor-int/lit8 v1, p1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzn(Z)V

    :cond_46f
    if-eqz p1, :cond_479

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzH()V

    :cond_479
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzm:Lcom/google/android/gms/measurement/internal/zzop;

    .line 160
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 161
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza()V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzE(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p1

    .line 164
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 165
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzT(Landroid/os/Bundle;)V

    .line 185
    :cond_49f
    :goto_49f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 186
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result p1

    if-eqz p1, :cond_4ff

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 187
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 188
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzan()Z

    move-result p1

    if-eqz p1, :cond_4ff

    sget-object p1, Lcom/google/android/gms/measurement/internal/zzgi;->zzaw:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 189
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 190
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x1388

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzp:Lcom/google/android/gms/common/util/Clock;

    add-long/2addr v0, v2

    .line 192
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_4f7

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 193
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    const-string v2, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 196
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4f7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    .line 197
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 198
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlw;->zzab(J)V

    :cond_4ff
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 199
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 200
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzht;->zzj:Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/measurement/internal/zzhn;->zza(Z)V

    return-void
.end method

.method public final zzI()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final zzJ()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zza()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzK()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzE:Z

    return v0
.end method

.method public final zzL()Z
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected final zzM()Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzA:Z

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzB:Ljava/lang/Boolean;

    if-eqz v0, :cond_31

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzC:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_31

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzC:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_bc

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzp:Lcom/google/android/gms/common/util/Clock;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzC:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    const-string v1, "android.permission.INTERNET"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaj(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_75

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzaj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v4

    if-nez v4, :cond_73

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzC()Z

    move-result v4

    if-nez v4, :cond_73

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzqf;->zzar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 13
    invoke-static {v1, v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzat(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_75

    :cond_73
    move v1, v2

    goto :goto_76

    :cond_75
    move v1, v3

    .line 7
    :goto_76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzB:Ljava/lang/Boolean;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    const/4 v1, 0x0

    .line 17
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 18
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_b6

    :cond_b5
    move v2, v3

    .line 16
    :cond_b6
    :goto_b6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzB:Ljava/lang/Boolean;

    :cond_bc
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzB:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_c3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzN()Z
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzg:Z

    return v0
.end method

.method public final zzO()Z
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzt:Lcom/google/android/gms/measurement/internal/zzmb;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_1b4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 8
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzht;->zzd(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 9
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1a5

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto/16 :goto_1a5

    .line 12
    :cond_40
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    .line 15
    :try_start_55
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_55 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    :cond_5a
    move-object v0, v2

    :goto_5b
    if-eqz v0, :cond_196

    .line 16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_196

    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzad()Z

    move-result v5

    if-nez v5, :cond_79

    goto :goto_89

    .line 58
    :cond_79
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzqf;->zzm()I

    move-result v3

    const v5, 0x392d8

    if-lt v3, v5, :cond_13e

    .line 23
    :goto_89
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzny;->zzh()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v3

    if-eqz v3, :cond_9f

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzap;->zza:Landroid/os/Bundle;

    :cond_9f
    const/4 v3, 0x1

    if-nez v2, :cond_da

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzG:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzG:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_ad

    move v10, v3

    :cond_ad
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to retrieve DMA consent from the service, "

    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v0, v1, :cond_c2

    const-string v0, "Retrying."

    goto :goto_c4

    .line 34
    :cond_c2
    const-string v0, "Skipping."

    .line 32
    :goto_c4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " retryCount"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzG:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 34
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return v10

    :cond_da
    const/16 v5, 0x64

    .line 35
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzjx;->zzi(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v6

    const-string v7, "&gcs="

    .line 36
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjx;->zzp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v5

    const-string v6, "&dma="

    .line 38
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzh()Ljava/lang/Boolean;

    move-result-object v6

    .line 39
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzi()Ljava/lang/String;

    move-result-object v6

    .line 40
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11b

    const-string v6, "&dma_cps="

    .line 41
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_11b
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzba;->zzg(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    const-string v3, "&npa="

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Consent query parameters to Bow"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    .line 46
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    .line 47
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzp:Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v7

    const-wide/16 v11, -0x1

    add-long/2addr v7, v11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v4

    const-wide/32 v3, 0x1d0da

    .line 51
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/zzqf;->zzH(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_195

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzt:Lcom/google/android/gms/measurement/internal/zzmb;

    .line 52
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    new-instance v8, Lcom/google/android/gms/measurement/internal/zzim;

    invoke-direct {v8, p0}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjr;->zzv()V

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    .line 56
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzma;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v5

    move-object v5, v0

    .line 57
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzma;-><init>(Lcom/google/android/gms/measurement/internal/zzmb;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzly;)V

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzil;->zzp(Ljava/lang/Runnable;)V

    :cond_195
    return v10

    .line 25
    :cond_196
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v10

    .line 9
    :cond_1a5
    :goto_1a5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v10

    .line 18
    :cond_1b4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "ADID collection is disabled from Manifest. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return v10
.end method

.method public final zza()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzA()Z

    move-result v2

    if-nez v2, :cond_57

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzE:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzht;->zzi()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    return v2

    :cond_2d
    const/4 v0, 0x3

    return v0

    :cond_2f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzio;->zzh:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v0, "firebase_analytics_collection_enabled"

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzn(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    return v2

    :cond_42
    const/4 v0, 0x4

    return v0

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzD:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    return v2

    :cond_51
    const/4 v0, 0x7

    return v0

    :cond_53
    return v2

    :cond_54
    const/16 v0, 0x8

    return v0

    :cond_57
    const/4 v0, 0x1

    return v0
.end method

.method public final zzaT()Landroid/content/Context;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final zzaU()Lcom/google/android/gms/common/util/Clock;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzp:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final zzaV()Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzh:Lcom/google/android/gms/measurement/internal/zzaf;

    return-object v0
.end method

.method public final zzaW()Lcom/google/android/gms/measurement/internal/zzhe;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    return-object v0
.end method

.method public final zzaX()Lcom/google/android/gms/measurement/internal/zzil;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzd;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzs:Lcom/google/android/gms/measurement/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzQ(Lcom/google/android/gms/measurement/internal/zzf;)V

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzam;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzbb;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzx:Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzx:Lcom/google/android/gms/measurement/internal/zzbb;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzgs;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzy:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzy:Lcom/google/android/gms/measurement/internal/zzgs;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzgv;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzv:Lcom/google/android/gms/measurement/internal/zzgv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzv:Lcom/google/android/gms/measurement/internal/zzgv;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzgx;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzo:Lcom/google/android/gms/measurement/internal/zzgx;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzhe;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzk:Lcom/google/android/gms/measurement/internal/zzhe;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjr;->zzy()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzht;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzj:Lcom/google/android/gms/measurement/internal/zzht;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    return-object v0
.end method

.method final zzo()Lcom/google/android/gms/measurement/internal/zzil;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzl:Lcom/google/android/gms/measurement/internal/zzil;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzlw;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzr:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzmb;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzt:Lcom/google/android/gms/measurement/internal/zzmb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzT(Lcom/google/android/gms/measurement/internal/zzjr;)V

    return-object v0
.end method

.method public final zzs()Lcom/google/android/gms/measurement/internal/zzmd;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzz:Lcom/google/android/gms/measurement/internal/zzmd;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzQ(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzz:Lcom/google/android/gms/measurement/internal/zzmd;

    return-object v0
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzmo;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzq:Lcom/google/android/gms/measurement/internal/zzmo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzny;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzw:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzw:Lcom/google/android/gms/measurement/internal/zzny;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzop;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzm:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzS(Lcom/google/android/gms/measurement/internal/zzg;)V

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzqf;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzn:Lcom/google/android/gms/measurement/internal/zzqf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzR(Lcom/google/android/gms/measurement/internal/zzjq;)V

    return-object v0
.end method

.method public final zzx()Ljava/lang/String;
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v2

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzy()Ljava/lang/String;
    .registers 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzi:Lcom/google/android/gms/measurement/internal/zzam;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v2

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzz()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzio;->zzf:Ljava/lang/String;

    return-object v0
.end method
