.class final Lcom/google/android/gms/internal/gtm/zzvu;
.super Lcom/google/android/gms/internal/gtm/zzvy;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# static fields
.field private static final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzvu;->zza:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzvy;-><init>(Lcom/google/android/gms/internal/gtm/zzvx;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzvt;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzvy;-><init>(Lcom/google/android/gms/internal/gtm/zzvx;)V

    return-void
.end method

.method private static zzf(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzxy;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzvs;

    if-eqz v1, :cond_16

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvr;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/gtm/zzvr;-><init>(I)V

    goto :goto_2a

    .line 5
    :cond_16
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzws;

    if-eqz v1, :cond_25

    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzvh;

    if-eqz v1, :cond_25

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvh;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/gtm/zzvh;->zzd(I)Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    goto :goto_2a

    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_2a
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzxy;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v0

    .line 6
    :cond_2e
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzvu;->zza:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/gtm/zzxy;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v1

    .line 13
    :cond_4b
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzxt;

    if-eqz v1, :cond_66

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzvr;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/gtm/zzvr;-><init>(I)V

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzxt;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzvr;->size()I

    move-result p3

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/internal/gtm/zzsj;->addAll(ILjava/util/Collection;)Z

    .line 17
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/gtm/zzxy;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v1

    .line 18
    :cond_66
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzws;

    if-eqz v1, :cond_85

    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzvh;

    if-eqz v1, :cond_85

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzvh;

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzvh;->zzc()Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_85

    .line 20
    :cond_78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gtm/zzvh;->zzd(I)Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object p3

    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxy;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object p3

    :cond_85
    :goto_85
    return-object v0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/gtm/zzvu;->zzf(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Ljava/lang/Object;J)V
    .registers 7

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxy;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzvs;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvs;->zze()Lcom/google/android/gms/internal/gtm/zzvs;

    move-result-object v0

    goto :goto_36

    .line 7
    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzvu;->zza:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_31

    .line 5
    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzws;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzvh;

    if-eqz v1, :cond_32

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzvh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->zzc()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->zzb()V

    :cond_31
    :goto_31
    return-void

    .line 6
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 7
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/gtm/zzxy;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxy;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/gtm/zzvu;->zzf(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1d

    if-lez v2, :cond_1d

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1d
    if-lez v1, :cond_20

    move-object p2, v0

    .line 6
    :cond_20
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/gtm/zzxy;->zzs(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
