.class public final Lcom/google/android/gms/internal/gtm/zzfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzfw;

.field private static volatile zzb:Lcom/google/android/gms/internal/gtm/zzfw;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzfy;-><init>(Lcom/google/android/gms/internal/gtm/zzfx;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfz;->zza:Lcom/google/android/gms/internal/gtm/zzfw;

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzfz;->zzb:Lcom/google/android/gms/internal/gtm/zzfw;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzfw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfz;->zzb:Lcom/google/android/gms/internal/gtm/zzfw;

    return-object v0
.end method
