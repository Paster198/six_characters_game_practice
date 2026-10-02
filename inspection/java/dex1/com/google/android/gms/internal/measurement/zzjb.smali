.class public final Lcom/google/android/gms/internal/measurement/zzjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzjd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Landroid/net/Uri;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzje;->zza()Lcom/google/android/gms/internal/measurement/zzjd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zzjd;

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzjb;->zza:Lcom/google/android/gms/internal/measurement/zzjd;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjd;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
