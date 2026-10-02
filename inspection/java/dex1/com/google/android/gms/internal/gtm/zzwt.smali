.class final Lcom/google/android/gms/internal/gtm/zzwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzwt;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/gtm/zzwy;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwt;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzwt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzwt;->zza:Lcom/google/android/gms/internal/gtm/zzwt;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwt;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwc;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzwc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwt;->zzb:Lcom/google/android/gms/internal/gtm/zzwy;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/gtm/zzwt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzwt;->zza:Lcom/google/android/gms/internal/gtm/zzwt;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzwt;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzwx;

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzwt;->zzb:Lcom/google/android/gms/internal/gtm/zzwy;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/gtm/zzwy;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "schema"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwt;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwx;

    if-nez p1, :cond_28

    return-object v1

    :cond_28
    return-object p1

    :cond_29
    return-object v1
.end method
