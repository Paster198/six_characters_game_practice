.class public final Lcom/google/android/gms/analytics/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/analytics/zzk;

.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private zzc:Z

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private final zzj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzh;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/analytics/zzh;->zza:Lcom/google/android/gms/analytics/zzk;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zza:Lcom/google/android/gms/analytics/zzk;

    iget-object v0, p1, Lcom/google/android/gms/analytics/zzh;->zzb:Lcom/google/android/gms/common/util/Clock;

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzb:Lcom/google/android/gms/common/util/Clock;

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzh;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzd:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzh;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zze:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzh;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzf:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzh;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzg:J

    iget-wide v0, p1, Lcom/google/android/gms/analytics/zzh;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzh:J

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/gms/analytics/zzh;->zzk:Ljava/util/List;

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzk:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzh;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzj;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/zzj;->zzc(Lcom/google/android/gms/analytics/zzj;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_6a
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/zzk;Lcom/google/android/gms/common/util/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzh;->zza:Lcom/google/android/gms/analytics/zzk;

    iput-object p2, p0, Lcom/google/android/gms/analytics/zzh;->zzb:Lcom/google/android/gms/common/util/Clock;

    const-wide/32 p1, 0x1b7740

    iput-wide p1, p0, Lcom/google/android/gms/analytics/zzh;->zzg:J

    const-wide p1, 0xb43e9400L

    iput-wide p1, p0, Lcom/google/android/gms/analytics/zzh;->zzh:J

    new-instance p1, Ljava/util/HashMap;

    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzh;->zzk:Ljava/util/List;

    return-void
.end method

.method private static zzn(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/zzj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/analytics/zzj;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 2
    instance-of v0, p0, Ljava/lang/InstantiationException;

    if-nez v0, :cond_33

    .line 4
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    if-nez v0, :cond_2b

    .line 6
    instance-of v0, p0, Ljava/lang/ReflectiveOperationException;

    if-eqz v0, :cond_25

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Linkage exception"

    .line 8
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType default constructor is not accessible"

    .line 5
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dataType doesn\'t have default constructor"

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzd:J

    return-wide v0
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/zzj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzj;

    if-nez v0, :cond_13

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/analytics/zzh;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-object v0
.end method

.method public final zzc(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/analytics/zzj;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/analytics/zzj;

    return-object p1
.end method

.method final zzd()Lcom/google/android/gms/analytics/zzk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zza:Lcom/google/android/gms/analytics/zzk;

    return-object v0
.end method

.method public final zze()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/analytics/zzj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzj:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/analytics/zzt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzk:Ljava/util/List;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/analytics/zzj;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/analytics/zzj;

    if-ne v1, v2, :cond_17

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzj;->zzc(Lcom/google/android/gms/analytics/zzj;)V

    return-void

    .line 3
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final zzh()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzh;->zzi:Z

    return-void
.end method

.method final zzi()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzf:J

    iget-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzd:J

    goto :goto_1b

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/zzh;->zzd:J

    :goto_1b
    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/zzh;->zzc:Z

    return-void
.end method

.method public final zzj(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/analytics/zzh;->zze:J

    return-void
.end method

.method public final zzk()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zza:Lcom/google/android/gms/analytics/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzk;->zzm()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    .line 1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/zzr;->zzk(Lcom/google/android/gms/analytics/zzh;)V

    return-void
.end method

.method final zzl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzh;->zzi:Z

    return v0
.end method

.method public final zzm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zzh;->zzc:Z

    return v0
.end method
