.class public final Lcom/google/android/gms/measurement/internal/zzgs;
.super Lcom/google/android/gms/measurement/internal/zzg;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private final zzg:J

.field private final zzh:J

.field private zzi:Ljava/util/List;

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:J

.field private zzp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzio;JJ)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzio;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzg:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzh:J

    return-void
.end method


# virtual methods
.method protected final zzd()V
    .registers 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzh:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzg:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sdkVersion bundled with app, dynamiteVersion"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, -0x80000000

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "Unknown"

    const-string v7, "unknown"

    if-nez v2, :cond_4a

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 10
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    move-object v8, v6

    goto/16 :goto_b1

    .line 11
    :cond_4a
    :try_start_4a
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4e} :catch_4f

    goto :goto_62

    .line 74
    :catch_4f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    .line 14
    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_62
    if-nez v7, :cond_68

    .line 11
    const-string v0, "manual_install"

    move-object v7, v0

    goto :goto_71

    .line 23
    :cond_68
    const-string v0, "com.android.vending"

    .line 15
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    move-object v7, v4

    .line 11
    :cond_71
    :goto_71
    :try_start_71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 18
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 20
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_92

    .line 21
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_91} :catch_9b

    goto :goto_93

    :cond_92
    move-object v8, v6

    .line 22
    :goto_93
    :try_start_93
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_93 .. :try_end_97} :catch_98

    goto :goto_b1

    :catch_98
    move-object v0, v6

    move-object v6, v8

    goto :goto_9c

    :catch_9b
    move-object v0, v6

    .line 14
    :goto_9c
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v8

    .line 25
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v8

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    .line 26
    invoke-virtual {v8, v10, v9, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v0

    .line 10
    :goto_b1
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzd:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzb:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:I

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zze:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzf:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 28
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v7, 0x0

    .line 29
    invoke-virtual {v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_e9

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e9

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzy()Ljava/lang/String;

    move-result-object v3

    const-string v8, "am"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    move v3, v6

    goto :goto_ea

    :cond_e9
    move v3, v5

    :goto_ea
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 32
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zza()I

    move-result v9

    if-eqz v9, :cond_173

    if-eq v9, v6, :cond_165

    const/4 v6, 0x3

    if-eq v9, v6, :cond_157

    const/4 v6, 0x4

    if-eq v9, v6, :cond_149

    const/4 v6, 0x6

    if-eq v9, v6, :cond_13b

    const/4 v6, 0x7

    if-eq v9, v6, :cond_12d

    const/16 v6, 0x8

    if-eq v9, v6, :cond_11f

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzh()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "Invalid scion state in identity"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 50
    :cond_11f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled due to denied storage consent"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 48
    :cond_12d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 45
    :cond_13b
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 47
    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 43
    :cond_149
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled via the manifest"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 41
    :cond_157
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 39
    :cond_165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_180

    .line 37
    :cond_173
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v6

    .line 38
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v6

    const-string v10, "App measurement collection enabled"

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    .line 36
    :goto_180
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    if-eqz v3, :cond_18f

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzx()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    .line 54
    :cond_18f
    :try_start_18f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 55
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzA()Ljava/lang/String;

    move-result-object v6

    const-string v10, "google_app_id"

    .line 56
    invoke-static {v3, v10, v6}, Lcom/google/android/gms/measurement/internal/zzmg;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    move-object v4, v3

    :goto_1a5
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 59
    invoke-virtual {v4, v7, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v4

    if-nez v4, :cond_1db

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1db

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 62
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzio;->zzA()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1cf

    goto :goto_1d3

    .line 66
    :cond_1cf
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzig;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65
    :goto_1d3
    const-string v3, "admob_app_id"

    .line 67
    invoke-static {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzig;->zzb(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    :cond_1db
    if-nez v9, :cond_20e

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v3, "App measurement enabled for app package, google app id"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f4

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    goto :goto_1f6

    .line 83
    :cond_1f4
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 71
    :goto_1f6
    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f9
    .catch Ljava/lang/IllegalStateException; {:try_start_18f .. :try_end_1f9} :catch_1fa

    goto :goto_20e

    :catch_1fa
    move-exception v0

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzn(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Fetching Google App Id failed with exception. appId"

    .line 74
    invoke-virtual {v3, v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_20e
    :goto_20e
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v1

    const-string v3, "analytics.safelisted_events"

    .line 77
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzt(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_222

    goto :goto_253

    .line 78
    :cond_222
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_236

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v3, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_255

    .line 81
    :cond_236
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_253

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v6

    const-string v7, "safelisted event"

    .line 83
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzqf;->zzag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23a

    goto :goto_255

    .line 77
    :cond_253
    :goto_253
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    :goto_255
    if-eqz v2, :cond_262

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    return-void

    :cond_262
    iput v5, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    return-void
.end method

.method protected final zzf()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzh()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    return v0
.end method

.method final zzi()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:I

    return v0
.end method

.method final zzj()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzh:J

    return-wide v0
.end method

.method final zzk(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;
    .registers 52

    move-object/from16 v1, p0

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:I

    int-to-long v6, v0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzd:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzd:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzf:J

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    const/4 v14, 0x0

    if-nez v13, :cond_de

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v9

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 16
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 19
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzqf;->zzI()Ljava/security/MessageDigest;

    move-result-object v15

    const-wide/16 v16, -0x1

    if-nez v15, :cond_77

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Could not get MD5 instance"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    move-wide/from16 v18, v11

    :goto_74
    move-wide/from16 v9, v16

    goto :goto_db

    :cond_77
    if-eqz v13, :cond_d7

    .line 22
    :try_start_79
    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzam(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bf

    .line 23
    invoke-static {v10}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 24
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v13

    .line 25
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_8d} :catch_c4

    move-wide/from16 v18, v11

    const/16 v11, 0x40

    :try_start_91
    invoke-virtual {v0, v13, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 26
    iget-object v11, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v11, :cond_af

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v11, v11

    if-lez v11, :cond_af

    .line 29
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v14

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzr([B)J

    move-result-wide v16

    goto :goto_74

    .line 27
    :cond_af
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v10, "Could not get signatures"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V
    :try_end_bc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_bc} :catch_bd

    goto :goto_74

    :catch_bd
    move-exception v0

    goto :goto_c7

    :cond_bf
    move-wide/from16 v18, v11

    move-wide/from16 v16, v18

    goto :goto_74

    :catch_c4
    move-exception v0

    move-wide/from16 v18, v11

    .line 52
    :goto_c7
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 31
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v9

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v9

    const-string v10, "Package name not found"

    invoke-virtual {v9, v10, v0}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d9

    :cond_d7
    move-wide/from16 v18, v11

    :goto_d9
    move-wide/from16 v9, v18

    .line 21
    :goto_db
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzf:J

    goto :goto_e0

    :cond_de
    move-wide/from16 v18, v11

    :goto_e0
    move-wide v11, v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v10

    .line 34
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v13

    .line 35
    iget-boolean v13, v13, Lcom/google/android/gms/measurement/internal/zzht;->zzm:Z

    const/4 v15, 0x1

    xor-int/2addr v13, v15

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v0

    move/from16 v16, v14

    const/4 v14, 0x0

    if-nez v0, :cond_102

    :goto_fd
    move-object/from16 v21, v2

    move-object v15, v14

    goto/16 :goto_18d

    .line 38
    :cond_102
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrp;->zzb()Z

    .line 39
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 38
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzgi;->zzaG:Lcom/google/android/gms/measurement/internal/zzgg;

    .line 40
    invoke-virtual {v0, v14, v15}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_121

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v9, "Disabled IID for tests."

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_fd

    .line 41
    :cond_121
    :try_start_121
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v9, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 43
    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_12f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_121 .. :try_end_12f} :catch_150

    if-nez v0, :cond_132

    goto :goto_fd

    :cond_132
    :try_start_132
    const-string v9, "getInstance"

    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/Class;

    const-class v15, Landroid/content/Context;

    aput-object v15, v14, v16

    .line 44
    invoke-virtual {v0, v9, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 45
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    .line 46
    invoke-virtual {v9, v15, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_14e} :catch_17b

    if-nez v9, :cond_153

    :catch_150
    move-object/from16 v21, v2

    goto :goto_18c

    :cond_153
    :try_start_153
    const-string v14, "getFirebaseInstanceId"
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_155} :catch_169

    move-object/from16 v21, v2

    move/from16 v15, v16

    :try_start_159
    new-array v2, v15, [Ljava/lang/Class;

    .line 49
    invoke-virtual {v0, v14, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v15, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_167} :catch_16b

    move-object v15, v0

    goto :goto_18d

    :catch_169
    move-object/from16 v21, v2

    .line 48
    :catch_16b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzl()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    goto :goto_18c

    :catch_17b
    move-object/from16 v21, v2

    .line 90
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzm()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    :goto_18c
    const/4 v15, 0x0

    .line 37
    :goto_18d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzht;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    move-object v9, v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhp;->zza()J

    move-result-wide v2

    cmp-long v14, v2, v18

    if-nez v14, :cond_1a4

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    move-object v14, v4

    move-object/from16 v22, v5

    goto :goto_1ad

    :cond_1a4
    move-object v14, v4

    move-object/from16 v22, v5

    .line 77
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    .line 56
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 57
    :goto_1ad
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzk:I

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzam;->zzw()Z

    move-result v5

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v23

    .line 61
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    move/from16 v24, v0

    .line 62
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/zzht;->zzb()Landroid/content/SharedPreferences;

    move-result-object v0

    move-wide/from16 v25, v2

    const-string v2, "deferred_analytics_collection"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v2, v5

    move-object/from16 v5, v22

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Ljava/lang/String;

    move-result-object v22

    .line 64
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    move/from16 v23, v0

    .line 65
    const-string v0, "google_analytics_default_allow_ad_personalization_signals"

    move/from16 v27, v2

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v3

    .line 66
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    if-eq v3, v2, :cond_1ef

    const/16 v28, 0x1

    goto :goto_1f1

    :cond_1ef
    const/16 v28, 0x0

    :goto_1f1
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzg:J

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-wide/from16 v29, v2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    .line 67
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzq()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzj:Ljava/lang/String;

    if-nez v2, :cond_217

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzj:Ljava/lang/String;

    :cond_217
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzj:Ljava/lang/String;

    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v32

    move-object/from16 v33, v2

    .line 72
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v2

    move-object/from16 v32, v3

    .line 73
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v2

    if-nez v2, :cond_22f

    const/4 v2, 0x0

    goto :goto_264

    .line 74
    :cond_22f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_239

    goto :goto_25b

    .line 75
    :cond_239
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v34, v2

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    sub-long v2, v34, v2

    move-wide/from16 v34, v2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    if-eqz v2, :cond_25b

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v34, v2

    if-lez v2, :cond_25b

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    if-nez v2, :cond_25b

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()V

    .line 74
    :cond_25b
    :goto_25b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    if-nez v2, :cond_262

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()V

    :cond_262
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    .line 79
    :goto_264
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzE()Z

    move-result v3

    .line 81
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v4

    move-object/from16 v34, v2

    .line 82
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Ljava/lang/String;

    move-result-object v2

    move/from16 v35, v3

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v36

    .line 84
    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    if-nez v36, :cond_28a

    move-object/from16 v36, v5

    move-wide/from16 v2, v18

    const/4 v5, 0x0

    goto :goto_2b5

    .line 85
    :cond_28a
    :try_start_28a
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaT()Landroid/content/Context;

    move-result-object v3

    .line 86
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v3
    :try_end_292
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28a .. :try_end_292} :catch_29e

    move-object/from16 v36, v5

    const/4 v5, 0x0

    :try_start_295
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2b3

    .line 87
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_29d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_295 .. :try_end_29d} :catch_2a1

    goto :goto_2b4

    :catch_29e
    move-object/from16 v36, v5

    const/4 v5, 0x0

    .line 28
    :catch_2a1
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzi()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v3

    const-string v4, "PackageManager failed to find running app: app_id"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b3
    move v2, v5

    :goto_2b4
    int-to-long v2, v2

    .line 84
    :goto_2b5
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v16

    .line 92
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzjx;->zzb()I

    move-result v16

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v37

    .line 94
    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/measurement/internal/zzht;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/measurement/internal/zzba;->zzj()Ljava/lang/String;

    move-result-object v37

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    .line 96
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v5

    move-wide/from16 v39, v2

    .line 95
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaW:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v3, 0x0

    .line 97
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v5

    if-eqz v5, :cond_2f0

    .line 98
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzqf;->zzl()I

    move-result v5

    move-object/from16 v44, v36

    move/from16 v36, v5

    move-object/from16 v5, v44

    goto :goto_2f4

    :cond_2f0
    move-object/from16 v5, v36

    const/16 v36, 0x0

    .line 100
    :goto_2f4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zzb()Z

    move-object/from16 v41, v4

    .line 101
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v2

    if-eqz v2, :cond_30d

    .line 103
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzq()J

    move-result-wide v2

    move-wide/from16 v18, v2

    .line 105
    :cond_30d
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzs()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    const/4 v4, 0x1

    .line 108
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/zze;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzju;)V

    .line 109
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zze;->zzc()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgs;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzio;->zza:J

    move-object/from16 v17, v0

    .line 110
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    move-object/from16 v41, v2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgi;->zzaR:Lcom/google/android/gms/measurement/internal/zzgg;

    move-wide/from16 v42, v3

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_34d

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzs()Lcom/google/android/gms/measurement/internal/zzmd;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzmd;->zzi()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zza()I

    move-result v0

    goto :goto_34e

    :cond_34d
    const/4 v0, 0x0

    :goto_34e
    move-object v3, v9

    move-object v4, v14

    move v14, v10

    const-wide/32 v9, 0x1d0da

    move/from16 v2, v27

    const/16 v27, 0x0

    move/from16 v20, v2

    move-object/from16 v2, v21

    move/from16 v21, v23

    move-object/from16 v23, v28

    move-object/from16 v28, v32

    move/from16 v44, v13

    move-object/from16 v13, p1

    move-wide/from16 v45, v42

    move/from16 v43, v0

    move-object/from16 v47, v15

    move/from16 v15, v44

    move/from16 v44, v16

    move-object/from16 v16, v47

    move-object/from16 v47, v34

    move/from16 v34, v44

    move-wide/from16 v48, v39

    move-object/from16 v40, v17

    move-object/from16 v39, v41

    move-wide/from16 v41, v45

    move-wide/from16 v44, v18

    move/from16 v19, v24

    move-wide/from16 v17, v25

    move-wide/from16 v24, v29

    move-object/from16 v26, v31

    move-object/from16 v29, v33

    move-object/from16 v30, v47

    move/from16 v31, v35

    move-object/from16 v35, v37

    move-wide/from16 v32, v48

    move-wide/from16 v37, v44

    .line 114
    invoke-direct/range {v2 .. v43}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v2
.end method

.method final zzl()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzgi;->zzbp:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzx(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzgg;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v2

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method final zzm()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zza:Ljava/lang/String;

    return-object v0
.end method

.method final zzn()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zze:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zze:Ljava/lang/String;

    return-object v0
.end method

.method final zzo()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method final zzp()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzi:Ljava/util/List;

    return-object v0
.end method

.method final zzq()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzht;->zzh()Lcom/google/android/gms/measurement/internal/zzjx;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjx;->zzr(Lcom/google/android/gms/measurement/internal/zzjw;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v1

    const-string v2, "Analytics Storage consent is not granted"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_45

    :cond_24
    const/16 v1, 0x10

    .line 15
    new-array v1, v1, [B

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzqf;->zzJ()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    .line 9
    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%032x"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_45
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    if-nez v1, :cond_52

    const-string v3, "null"

    goto :goto_54

    .line 15
    :cond_52
    const-string v3, "not null"

    .line 11
    :goto_54
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Resetting session stitching token to %s"

    .line 12
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzn:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaU()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzo:J

    return-void
.end method

.method final zzr(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgs;->zzp:Ljava/lang/String;

    return v1
.end method
