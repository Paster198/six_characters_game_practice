.class final Lcom/google/android/gms/tagmanager/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzc;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zza;->zza:Lcom/google/android/gms/tagmanager/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zza;->zza:Lcom/google/android/gms/tagmanager/zzd;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzd;->zza(Lcom/google/android/gms/tagmanager/zzd;)Landroid/content/Context;

    move-result-object v0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_a} :catch_2c
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_a} :catch_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_1e
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_a} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 4
    const-string v1, "Unknown exception. Could not get the Advertising Id Info."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_12
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zza;->zza:Lcom/google/android/gms/tagmanager/zzd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzd;->zze()V

    const-string v1, "GooglePlayServicesNotAvailableException getting Advertising Id Info"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_1e
    move-exception v0

    .line 6
    const-string v1, "IOException getting Ad Id Info"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_25
    move-exception v0

    .line 7
    const-string v1, "GooglePlayServicesRepairableException getting Advertising Id Info"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :catch_2c
    move-exception v0

    .line 1
    const-string v1, "IllegalStateException getting Advertising Id Info"

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzdh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    const/4 v0, 0x0

    return-object v0
.end method
