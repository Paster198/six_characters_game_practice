.class public final Lcom/google/android/gms/common/util/DeviceProperties;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# static fields
.field private static zza:Ljava/lang/Boolean;

.field private static zzb:Ljava/lang/Boolean;

.field private static zzc:Ljava/lang/Boolean;

.field private static zzd:Ljava/lang/Boolean;

.field private static zze:Ljava/lang/Boolean;

.field private static zzf:Ljava/lang/Boolean;

.field private static zzg:Ljava/lang/Boolean;

.field private static zzh:Ljava/lang/Boolean;

.field private static zzi:Ljava/lang/Boolean;

.field private static zzj:Ljava/lang/Boolean;

.field private static zzk:Ljava/lang/Boolean;

.field private static zzl:Ljava/lang/Boolean;

.field private static zzm:Ljava/lang/Boolean;

.field private static zzn:Ljava/lang/Boolean;

.field private static zzo:Ljava/lang/Boolean;

.field private static zzp:Ljava/lang/Boolean;

.field private static zzq:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuto(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zze(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public static isBstar(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzo:Ljava/lang/Boolean;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.play.feature.HPE_EXPERIENCE"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    .line 2
    :cond_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzo:Ljava/lang/Boolean;

    :cond_1e
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzo:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isFoldable(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.sensor.hinge_angle"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    .line 3
    :cond_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    :cond_1e
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzd:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isLatchsky(Landroid/content/Context;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzh:Ljava/lang/Boolean;

    if-nez v0, :cond_20

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.feature.services_updater"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const-string v0, "cn.google.services"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    .line 2
    :cond_1a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzh:Ljava/lang/Boolean;

    :cond_20
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzh:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zza:Ljava/lang/Boolean;

    if-nez v0, :cond_92

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isFoldable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8c

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8b

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzd(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8b

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzk:Ljava/lang/Boolean;

    if-nez v0, :cond_32

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "org.chromium.arc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzk:Ljava/lang/Boolean;

    :cond_32
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzk:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8b

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzn:Ljava/lang/Boolean;

    if-nez v0, :cond_5a

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.feature.AMATI_EXPERIENCE"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzn:Ljava/lang/Boolean;

    :cond_5a
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzn:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isBstar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isXr(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8b

    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzq:Ljava/lang/Boolean;

    if-nez v0, :cond_82

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.desktop.gms"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzq:Ljava/lang/Boolean;

    :cond_82
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzq:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_8c

    :cond_8b
    move v1, v2

    .line 1
    :cond_8c
    :goto_8c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zza:Ljava/lang/Boolean;

    :cond_92
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zza:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPhoneGo(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_40

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3a

    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzi:Ljava/lang/Boolean;

    if-nez v1, :cond_26

    const-string v1, "activity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_26

    .line 3
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzi:Ljava/lang/Boolean;

    :cond_26
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzi:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt p0, v2, :cond_3a

    move v0, v1

    .line 1
    :cond_3a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzb:Ljava/lang/Boolean;

    :cond_40
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSevenInchTablet(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zza(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public static isSidewinder(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzc(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isTablet(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method public static isTablet(Landroid/content/res/Resources;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2
    :cond_4
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    if-nez v1, :cond_23

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v1, v2, :cond_16

    :goto_14
    move v0, v3

    goto :goto_1d

    .line 3
    :cond_16
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zza(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_14

    :cond_1d
    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    :cond_23
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzc:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTv(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzf(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public static isUserBuild()Z
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWearable(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzb(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public static isWearableWithoutPlayStore(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static isXr(Landroid/content/Context;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->zzg(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public static zza(Landroid/content/res/Resources;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    sget-object v1, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    if-nez v1, :cond_20

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 2
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1a

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_1a

    const/4 v0, 0x1

    .line 3
    :cond_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    :cond_20
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zze:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/content/pm/PackageManager;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    :cond_10
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzf:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zzc(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    :cond_14
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzg:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zzd(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    goto :goto_1f

    .line 2
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.iot"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 3
    :goto_1f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    :cond_25
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzj:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zze(Landroid/content/pm/PackageManager;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzl:Ljava/lang/Boolean;

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 v1, 0x1

    :cond_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzl:Ljava/lang/Boolean;

    :cond_1a
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzl:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zzf(Landroid/content/pm/PackageManager;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzm:Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    const-string v0, "com.google.android.tv"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    const-string v0, "android.hardware.type.television"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "android.software.leanback"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "com.google.android.feature.AMATI_EXPERIENCE"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 1
    :cond_27
    :goto_27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzm:Ljava/lang/Boolean;

    :cond_2d
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzm:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static zzg(Landroid/content/pm/PackageManager;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/DeviceProperties;->zzp:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    const-string v0, "android.software.xr.api.spatial"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzp:Ljava/lang/Boolean;

    :cond_10
    sget-object p0, Lcom/google/android/gms/common/util/DeviceProperties;->zzp:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
