.class public final Lcom/google/android/gms/tagmanager/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field static zza:I

.field static final zzb:Lcom/google/android/gms/tagmanager/zzbg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbg;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzbg;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    return-void
.end method

.method public static zza(Ljava/lang/String;)V
    .registers 2

    const-string v0, "GoogleTagManager"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "GoogleTagManager"

    .line 1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static zzc(Ljava/lang/String;)V
    .registers 2

    const-string v0, "GoogleTagManager"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "GoogleTagManager"

    .line 1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
