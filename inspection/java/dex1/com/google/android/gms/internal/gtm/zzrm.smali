.class public final Lcom/google/android/gms/internal/gtm/zzrm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzsb;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzsb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gtm/zzsb;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzrm;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrm;->zzb:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzrm;->zzd:Lcom/google/android/gms/common/util/Clock;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzrm;->zzc:Lcom/google/android/gms/internal/gtm/zzsb;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrm;->zze:Ljava/util/Map;

    return-void
.end method
