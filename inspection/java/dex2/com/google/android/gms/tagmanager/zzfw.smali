.class public final Lcom/google/android/gms/tagmanager/zzfw;
.super Lcom/google/android/gms/tagmanager/zzft;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Ljava/lang/String;

.field private static final zzd:Ljava/lang/String;

.field private static final zze:Ljava/lang/String;

.field private static final zzf:Ljava/lang/String;

.field private static final zzg:Ljava/lang/String;

.field private static final zzh:Ljava/lang/String;

.field private static final zzi:Ljava/lang/String;

.field private static final zzj:Ljava/lang/String;

.field private static final zzk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Ljava/util/regex/Pattern;

.field private static final zzm:Ljava/util/regex/Pattern;

.field private static zzn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzq:Lcom/google/android/gms/tagmanager/zzfs;

.field private final zzr:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zzaJ:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zza:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzb:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzb:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzm:Lcom/google/android/gms/internal/gtm/zzb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzc:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzaV:Lcom/google/android/gms/internal/gtm/zzb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzd:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzaO:Lcom/google/android/gms/internal/gtm/zzb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zze:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzaN:Lcom/google/android/gms/internal/gtm/zzb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzf:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzl:Lcom/google/android/gms/internal/gtm/zzb;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzg:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzdI:Lcom/google/android/gms/internal/gtm/zzb;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzh:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzdL:Lcom/google/android/gms/internal/gtm/zzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzi:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzb;->zzdN:Lcom/google/android/gms/internal/gtm/zzb;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzj:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "detail"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "checkout"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "checkout_option"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "click"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "add"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "remove"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "purchase"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "refund"

    aput-object v2, v0, v1

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzk:Ljava/util/List;

    const-string v0, "dimension(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzl:Ljava/util/regex/Pattern;

    const-string v0, "metric(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzm:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/tagmanager/zzfs;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/zzfs;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/tagmanager/zzfw;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/tagmanager/zzft;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzr:Lcom/google/android/gms/tagmanager/DataLayer;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzq:Lcom/google/android/gms/tagmanager/zzfs;

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzp:Ljava/util/Set;

    const-string p2, ""

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "0"

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "false"

    .line 6
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zzd(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzr:Lcom/google/android/gms/tagmanager/DataLayer;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzh(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/HashMap;

    .line 1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 2
    :cond_8
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfw;->zzm(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_14

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 4
    :cond_14
    const-string v0, "&aip"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzp:Ljava/util/Set;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-object p1
.end method

.method private static final zzi(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static final zzj(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzak;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfv;->zzg(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final zzk(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 4

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, "Cannot convert the object to Double: "

    if-eqz v0, :cond_2c

    .line 2
    :try_start_6
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    .line 9
    :cond_23
    new-instance p0, Ljava/lang/String;

    .line 3
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2c
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3b
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_42

    .line 8
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 3
    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5c

    .line 3
    :cond_57
    new-instance p0, Ljava/lang/String;

    .line 9
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5c
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final zzl(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, "Cannot convert the object to Integer: "

    if-eqz v0, :cond_2c

    .line 2
    :try_start_6
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    .line 9
    :cond_23
    new-instance p0, Ljava/lang/String;

    .line 3
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2c
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_3b

    .line 5
    check-cast p0, Ljava/lang/Double;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3b
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_42

    .line 8
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 3
    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_57

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5c

    .line 3
    :cond_57
    new-instance p0, Ljava/lang/String;

    .line 9
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5c
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final zzm(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_a
    check-cast p0, Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_39
    return-object v0
.end method

.method private static final zzn(Ljava/util/Map;)Lcom/google/android/gms/analytics/ecommerce/Product;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/analytics/ecommerce/Product;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/analytics/ecommerce/Product;-><init>()V

    const-string v1, "id"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_14
    const-string v1, "name"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_23
    const-string v1, "brand"

    .line 6
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setBrand(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_32
    const-string v1, "category"

    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_41
    const-string v1, "variant"

    .line 10
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setVariant(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_50
    const-string v1, "coupon"

    .line 12
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_5f
    const-string v1, "position"

    .line 14
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfw;->zzl(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPosition(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_72
    const-string v1, "price"

    .line 16
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfw;->zzk(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPrice(D)Lcom/google/android/gms/analytics/ecommerce/Product;

    :cond_85
    const-string v1, "quantity"

    .line 18
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzfw;->zzl(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ecommerce/Product;->setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    .line 20
    :cond_98
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a0
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_126

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/tagmanager/zzfw;->zzl:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_e7

    .line 23
    :try_start_b9
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_c1
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_c1} :catch_cd

    .line 25
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    goto :goto_a0

    .line 24
    :catch_cd
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal number in custom dimension value: "

    if-eqz v3, :cond_de

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e3

    .line 29
    :cond_de
    new-instance v2, Ljava/lang/String;

    .line 24
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e3
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    goto :goto_a0

    .line 25
    :cond_e7
    sget-object v3, Lcom/google/android/gms/tagmanager/zzfw;->zzm:Ljava/util/regex/Pattern;

    .line 26
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 28
    :try_start_f3
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_fb
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_fb} :catch_10b

    .line 30
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzfw;->zzl(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setCustomMetric(II)Lcom/google/android/gms/analytics/ecommerce/Product;

    goto :goto_a0

    .line 29
    :catch_10b
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "illegal number in custom metric value: "

    if-eqz v3, :cond_11c

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_121

    .line 24
    :cond_11c
    new-instance v2, Ljava/lang/String;

    .line 29
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_121
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    goto/16 :goto_a0

    :cond_126
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionField"

    const-string v1, "&t"

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzq:Lcom/google/android/gms/tagmanager/zzfs;

    const-string v3, "_GTM_DEFAULT_TRACKER_"

    .line 1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tagmanager/zzfs;->zza(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    const-string v3, "collect_adid"

    .line 2
    invoke-static {p1, v3}, Lcom/google/android/gms/tagmanager/zzfw;->zzj(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    sget-object v3, Lcom/google/android/gms/tagmanager/zzfw;->zzd:Ljava/lang/String;

    .line 3
    invoke-static {p1, v3}, Lcom/google/android/gms/tagmanager/zzfw;->zzj(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "name"

    const-string v5, "&cu"

    const/4 v6, 0x0

    if-eqz v3, :cond_2a1

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gms/tagmanager/zzfw;->zzg:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0, v3}, Lcom/google/android/gms/tagmanager/zzfw;->zzh(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setAll(Ljava/util/Map;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    sget-object v7, Lcom/google/android/gms/tagmanager/zzfw;->zze:Ljava/lang/String;

    .line 7
    invoke-static {p1, v7}, Lcom/google/android/gms/tagmanager/zzfw;->zzj(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzr:Lcom/google/android/gms/tagmanager/DataLayer;

    const-string v7, "ecommerce"

    .line 8
    invoke-virtual {p1, v7}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_60

    .line 10
    check-cast p1, Ljava/util/Map;

    goto :goto_61

    .line 29
    :cond_4d
    sget-object v7, Lcom/google/android/gms/tagmanager/zzfw;->zzf:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfv;->zzl(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_60

    .line 13
    check-cast p1, Ljava/util/Map;

    goto :goto_61

    :cond_60
    move-object p1, v6

    :goto_61
    if-eqz p1, :cond_299

    .line 14
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_73

    const-string v3, "currencyCode"

    .line 15
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_73
    if-eqz v3, :cond_78

    .line 16
    invoke-virtual {v1, v5, v3}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    :cond_78
    const-string v3, "impressions"

    .line 17
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    instance-of v5, v3, Ljava/util/List;

    const-string v7, "Failed to extract a product from DataLayer. "

    const-string v8, "list"

    if-eqz v5, :cond_c3

    .line 19
    check-cast v3, Ljava/util/List;

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 21
    :try_start_98
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzfw;->zzn(Ljava/util/Map;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v9

    .line 22
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v9, v5}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_a5} :catch_a6

    goto :goto_8c

    :catch_a6
    move-exception v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_ba

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_bf

    .line 126
    :cond_ba
    new-instance v5, Ljava/lang/String;

    .line 23
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_bf
    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    goto :goto_8c

    .line 24
    :cond_c3
    const-string v3, "promoClick"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v9, "promotions"

    if-eqz v5, :cond_db

    .line 25
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 26
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    goto :goto_f0

    .line 27
    :cond_db
    const-string v5, "promoView"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f0

    .line 28
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 29
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .line 26
    :cond_f0
    :goto_f0
    const-string v5, "id"

    if-eqz v6, :cond_170

    .line 30
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    :try_start_104
    new-instance v10, Lcom/google/android/gms/analytics/ecommerce/Promotion;

    .line 31
    invoke-direct {v10}, Lcom/google/android/gms/analytics/ecommerce/Promotion;-><init>()V

    .line 32
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_114

    .line 33
    invoke-virtual {v10, v11}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    .line 34
    :cond_114
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_11f

    .line 35
    invoke-virtual {v10, v11}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    :cond_11f
    const-string v11, "creative"

    .line 36
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_12c

    .line 37
    invoke-virtual {v10, v11}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setCreative(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    :cond_12c
    const-string v11, "position"

    .line 38
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_139

    .line 39
    invoke-virtual {v10, v9}, Lcom/google/android/gms/analytics/ecommerce/Promotion;->setPosition(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Promotion;

    .line 40
    :cond_139
    invoke-virtual {v1, v10}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_13c
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_13c} :catch_13d

    goto :goto_f8

    :catch_13d
    move-exception v9

    .line 41
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "Failed to extract a promotion from DataLayer. "

    if-eqz v10, :cond_153

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_158

    .line 23
    :cond_153
    new-instance v9, Ljava/lang/String;

    .line 41
    invoke-direct {v9, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_158
    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    goto :goto_f8

    .line 42
    :cond_15c
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "&promoa"

    if-eqz v3, :cond_16b

    const-string p1, "click"

    .line 43
    invoke-virtual {v1, v4, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto/16 :goto_299

    .line 77
    :cond_16b
    const-string v3, "view"

    .line 44
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    :cond_170
    sget-object v3, Lcom/google/android/gms/tagmanager/zzfw;->zzk:Ljava/util/List;

    .line 45
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_176
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_299

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 47
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v3, "products"

    .line 48
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_1cd

    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 50
    :try_start_1a8
    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzfw;->zzn(Ljava/util/Map;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v6

    .line 51
    invoke-virtual {v1, v6}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_1af
    .catch Ljava/lang/RuntimeException; {:try_start_1a8 .. :try_end_1af} :catch_1b0

    goto :goto_19c

    :catch_1b0
    move-exception v6

    .line 52
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1c4

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c9

    .line 41
    :cond_1c4
    new-instance v6, Ljava/lang/String;

    .line 52
    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1c9
    invoke-static {v6}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    goto :goto_19c

    .line 53
    :cond_1cd
    :try_start_1cd
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_272

    .line 54
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 55
    invoke-direct {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1eb

    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_1eb
    const-string v3, "affiliation"

    .line 58
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1fa

    .line 59
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_1fa
    const-string v3, "coupon"

    .line 60
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_209

    .line 61
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionCouponCode(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 62
    :cond_209
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_216

    .line 63
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setProductActionList(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_216
    const-string v3, "option"

    .line 64
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_225

    .line 65
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setCheckoutOptions(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_225
    const-string v3, "revenue"

    .line 66
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_238

    .line 67
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfw;->zzk(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionRevenue(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_238
    const-string v3, "tax"

    .line 68
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24b

    .line 69
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfw;->zzk(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionTax(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_24b
    const-string v3, "shipping"

    .line 70
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25e

    .line 71
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzfw;->zzk(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionShipping(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    :cond_25e
    const-string v3, "step"

    .line 72
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_277

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfw;->zzl(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setCheckoutStep(I)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    goto :goto_277

    .line 75
    :cond_272
    new-instance v0, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    .line 74
    invoke-direct {v0, v4}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 75
    :cond_277
    :goto_277
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    :try_end_27a
    .catch Ljava/lang/RuntimeException; {:try_start_1cd .. :try_end_27a} :catch_27b

    goto :goto_299

    :catch_27b
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "Failed to extract a product action from DataLayer. "

    if-eqz v0, :cond_291

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_296

    .line 52
    :cond_291
    new-instance p1, Ljava/lang/String;

    .line 76
    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_296
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    .line 77
    :cond_299
    :goto_299
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void

    .line 13
    :cond_2a1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzc:Ljava/lang/String;

    .line 78
    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/zzfw;->zzj(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b9

    sget-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzg:Ljava/lang/String;

    .line 79
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzfw;->zzh(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void

    :cond_2b9
    sget-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzh:Ljava/lang/String;

    .line 80
    invoke-static {p1, v0}, Lcom/google/android/gms/tagmanager/zzfw;->zzj(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_447

    .line 81
    const-string v0, "transactionId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzfw;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2cf

    const-string p1, "Cannot find transactionId in data layer."

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void

    :cond_2cf
    new-instance v7, Ljava/util/ArrayList;

    .line 83
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_2d4
    sget-object v8, Lcom/google/android/gms/tagmanager/zzfw;->zzg:Ljava/lang/String;

    .line 84
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0, v8}, Lcom/google/android/gms/tagmanager/zzfw;->zzh(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "transaction"

    .line 85
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzi:Ljava/lang/String;

    .line 86
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzak;
    :try_end_2ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d4 .. :try_end_2ed} :catch_440

    const-string v10, "&ti"

    if-eqz v9, :cond_2f6

    .line 87
    :try_start_2f1
    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzfw;->zzm(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object v0

    goto :goto_327

    .line 105
    :cond_2f6
    sget-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzn:Ljava/util/Map;

    if-nez v9, :cond_325

    new-instance v9, Ljava/util/HashMap;

    .line 88
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {v9, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transactionAffiliation"

    const-string v11, "&ta"

    .line 90
    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transactionTax"

    const-string v11, "&tt"

    .line 91
    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transactionShipping"

    const-string v11, "&ts"

    .line 92
    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transactionTotal"

    const-string v11, "&tr"

    .line 93
    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transactionCurrency"

    .line 94
    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzn:Ljava/util/Map;

    :cond_325
    sget-object v0, Lcom/google/android/gms/tagmanager/zzfw;->zzn:Ljava/util/Map;

    .line 95
    :goto_327
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_34f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/google/android/gms/tagmanager/zzfw;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v11, v9}, Lcom/google/android/gms/tagmanager/zzfw;->zzi(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32f

    .line 97
    :cond_34f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfw;->zzr:Lcom/google/android/gms/tagmanager/DataLayer;

    const-string v8, "transactionProducts"

    .line 98
    invoke-virtual {v0, v8}, Lcom/google/android/gms/tagmanager/DataLayer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35d

    goto :goto_382

    .line 99
    :cond_35d
    instance-of v6, v0, Ljava/util/List;

    if-eqz v6, :cond_438

    .line 101
    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 102
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_368
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 103
    instance-of v8, v8, Ljava/util/Map;

    if-eqz v8, :cond_377

    goto :goto_368

    :cond_377
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Each element of transactionProducts should be of type Map."

    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_37f
    move-object v6, v0

    check-cast v6, Ljava/util/List;

    :goto_382
    if-eqz v6, :cond_423

    .line 106
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_388
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_423

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 107
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3a0

    const-string p1, "Unable to send transaction item hit due to missing \'name\' field."

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zza(Ljava/lang/String;)V

    return-void

    :cond_3a0
    sget-object v8, Lcom/google/android/gms/tagmanager/zzfw;->zzg:Ljava/lang/String;

    .line 108
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0, v8}, Lcom/google/android/gms/tagmanager/zzfw;->zzh(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "item"

    .line 109
    invoke-interface {v8, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {v8, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzj:Ljava/lang/String;

    .line 111
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzak;

    if-eqz v9, :cond_3c3

    .line 112
    invoke-static {v9}, Lcom/google/android/gms/tagmanager/zzfw;->zzm(Lcom/google/android/gms/internal/gtm/zzak;)Ljava/util/Map;

    move-result-object v9

    goto :goto_3f6

    .line 122
    :cond_3c3
    sget-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzo:Ljava/util/Map;

    if-nez v9, :cond_3f4

    new-instance v9, Ljava/util/HashMap;

    .line 113
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v11, "&in"

    .line 114
    invoke-virtual {v9, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "sku"

    const-string v12, "&ic"

    .line 115
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "category"

    const-string v12, "&iv"

    .line 116
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "price"

    const-string v12, "&ip"

    .line 117
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "quantity"

    const-string v12, "&iq"

    .line 118
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "currency"

    .line 119
    invoke-virtual {v9, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzo:Ljava/util/Map;

    :cond_3f4
    sget-object v9, Lcom/google/android/gms/tagmanager/zzfw;->zzo:Ljava/util/Map;

    .line 120
    :goto_3f6
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3fe
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v8, v12, v11}, Lcom/google/android/gms/tagmanager/zzfw;->zzi(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3fe

    .line 122
    :cond_41e
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_388

    .line 123
    :cond_423
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_427
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_437

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 124
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_427

    :cond_437
    return-void

    .line 99
    :cond_438
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "transactionProducts should be of type List."

    .line 100
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_440
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f1 .. :try_end_440} :catch_440

    :catch_440
    move-exception p1

    .line 76
    const-string v0, "Unable to send transaction"

    .line 126
    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 94
    :cond_447
    const-string p1, "Ignoring unknown tag."

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdh;->zzc(Ljava/lang/String;)V

    return-void
.end method
