.class public final Lcom/google/android/gms/internal/gtm/zzrq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrq;->zza:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzrp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrq;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzro;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzro;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzrq;->zza:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzrq;->zzb:Lcom/google/android/gms/internal/gtm/zzak;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzro;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzrn;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrq;->zza:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzak;)Lcom/google/android/gms/internal/gtm/zzrq;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrq;->zzb:Lcom/google/android/gms/internal/gtm/zzak;

    return-object p0
.end method
