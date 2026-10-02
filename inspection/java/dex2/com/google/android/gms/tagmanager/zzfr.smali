.class final Lcom/google/android/gms/tagmanager/zzfr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .registers 3

    const-string v0, ""

    .line 1
    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final getLogLevel()I
    .registers 5

    sget v0, Lcom/google/android/gms/tagmanager/zzdh;->zza:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    const/4 v3, 0x4

    if-eq v0, v3, :cond_10

    const/4 v3, 0x5

    if-eq v0, v3, :cond_f

    return v2

    :cond_f
    return v1

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final info(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final setLogLevel(I)V
    .registers 2

    const-string p1, "GA uses GTM logger. Please use TagManager.setLogLevel(int) instead."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void
.end method
