.class public final Lcom/google/android/gms/tagmanager/zzcx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcx;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_b

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "http://hostname/?"

    if-eqz v0, :cond_1c

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    .line 3
    :cond_1c
    new-instance p0, Ljava/lang/String;

    .line 2
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_21
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcx;->zzb:Ljava/lang/String;

    if-nez v0, :cond_28

    const-class v0, Lcom/google/android/gms/tagmanager/zzcx;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/tagmanager/zzcx;->zzb:Ljava/lang/String;

    if-nez v1, :cond_23

    const-string v1, "gtm_install_referrer"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1f

    const-string v1, "referrer"

    const-string v2, ""

    .line 2
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/tagmanager/zzcx;->zzb:Ljava/lang/String;

    goto :goto_23

    .line 4
    :cond_1f
    const-string p0, ""

    sput-object p0, Lcom/google/android/gms/tagmanager/zzcx;->zzb:Ljava/lang/String;

    .line 3
    :cond_23
    :goto_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    :goto_28
    sget-object p0, Lcom/google/android/gms/tagmanager/zzcx;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/tagmanager/zzcx;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "conv"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/zzcx;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    sget-object v1, Lcom/google/android/gms/tagmanager/zzcx;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gtm_click_referrers"

    .line 4
    invoke-static {p0, v1, v0, p1}, Lcom/google/android/gms/tagmanager/zzfg;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public static zzd(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/google/android/gms/tagmanager/zzcx;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/google/android/gms/tagmanager/zzcx;->zzb:Ljava/lang/String;

    .line 1
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method static zze(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "gtm_install_referrer"

    const-string v1, "referrer"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/tagmanager/zzfg;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/tagmanager/zzcx;->zzc(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
