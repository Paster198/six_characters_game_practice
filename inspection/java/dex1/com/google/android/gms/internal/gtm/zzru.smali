.class public final Lcom/google/android/gms/internal/gtm/zzru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzrw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzro;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzc:Ljava/lang/String;

.field private zzd:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzru;->zza:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzb:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzc:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzd:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzrt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zza:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzb:Ljava/util/Map;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzc:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzrs;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrs;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzb:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzc:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzd:I

    const/4 v5, 0x0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzrs;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/internal/gtm/zzrr;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzro;)Lcom/google/android/gms/internal/gtm/zzru;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzro;->zzc()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzb;->zzbB:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfv;->zzn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzb:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzb:Ljava/util/Map;

    .line 5
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_2c
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzrw;)Lcom/google/android/gms/internal/gtm/zzru;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzru;->zza:Ljava/util/List;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/gtm/zzru;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzd:I

    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzru;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzru;->zzc:Ljava/lang/String;

    return-object p0
.end method
