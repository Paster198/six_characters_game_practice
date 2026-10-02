.class Lcom/google/android/gms/internal/play_billing/zzii;
.super Ljava/util/AbstractMap;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private zza:[Ljava/lang/Object;

.field private zzb:I

.field private zzc:Ljava/util/Map;

.field private zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/play_billing/zzig;

.field private zzf:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzf:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzih;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzf:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/play_billing/zzii;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    return p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/play_billing/zzii;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzm(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzii;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/play_billing/zzii;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/play_billing/zzii;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    return-object p0
.end method

.method private final zzl(Lcom/google/android/gms/internal/play_billing/zzgg;)I
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_1f

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzie;->zza()Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/play_billing/zzgg;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1b

    add-int/lit8 v0, v0, 0x1

    neg-int p1, v0

    return p1

    :cond_1b
    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    if-gt v2, v1, :cond_3e

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    .line 2
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzie;->zza()Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/play_billing/zzgg;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_38

    add-int/lit8 v1, v0, -0x1

    goto :goto_1f

    :cond_38
    if-lez v3, :cond_3d

    add-int/lit8 v2, v0, 0x1

    goto :goto_1f

    :cond_3d
    return v0

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    neg-int p1, v2

    return p1
.end method

.method private final zzm(I)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    .line 2
    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzie;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p1, 0x1

    .line 3
    invoke-static {v1, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_57

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzn()Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzie;

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, p0, v5, v4}, Lcom/google/android/gms/internal/play_billing/zzie;-><init>(Lcom/google/android/gms/internal/play_billing/zzii;Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V

    .line 6
    aput-object v3, v1, v2

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_57
    return-object v0
.end method

.method private final zzn()Ljava/util/SortedMap;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 4
    move-object v1, v0

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzf:Ljava/util/Map;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 5
    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private final zzo()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzd:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1a
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgg;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzl(Lcom/google/android/gms/internal/play_billing/zzgg;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zze:Lcom/google/android/gms/internal/play_billing/zzig;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzig;-><init>(Lcom/google/android/gms/internal/play_billing/zzii;Lcom/google/android/gms/internal/play_billing/zzih;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zze:Lcom/google/android/gms/internal/play_billing/zzig;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zze:Lcom/google/android/gms/internal/play_billing/zzig;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzii;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzii;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->size()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzii;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4e

    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    if-ne v2, v4, :cond_41

    move v4, v3

    :goto_21
    if-ge v4, v2, :cond_35

    .line 5
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/play_billing/zzii;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/play_billing/zzii;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    return v3

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_35
    if-eq v2, v1, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_40
    return v0

    .line 7
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzii;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4e
    return v3
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgg;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzl(Lcom/google/android/gms/internal/play_billing/zzgg;)I

    move-result v0

    if-ltz v0, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    .line 3
    aget-object p1, p1, v0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzie;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v1, v0, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_21
    return v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzii;->zzf(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgg;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzl(Lcom/google/android/gms/internal/play_billing/zzgg;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzm(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zza()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzd:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_17

    .line 6
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2
    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzf:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzf:Ljava/util/Map;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 5
    :goto_2c
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzf:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzd:Z

    :cond_31
    return-void
.end method

.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    return v0
.end method

.method public final zzd()Ljava/lang/Iterable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzl(Lcom/google/android/gms/internal/play_billing/zzgg;)I

    move-result v0

    if-ltz v0, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    .line 3
    aget-object p1, p1, v0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzie;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_14
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzo()V

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    const/16 v2, 0x10

    if-nez v1, :cond_21

    new-array v1, v2, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-lt v0, v2, :cond_2f

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzn()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2f
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    if-ne v1, v2, :cond_4c

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    const/16 v2, 0xf

    .line 7
    aget-object v1, v1, v2

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzie;

    iput v2, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzn()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzie;->zza()Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzie;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    .line 9
    array-length v3, v1

    rsub-int/lit8 v3, v0, 0xf

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzie;

    .line 10
    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzie;-><init>(Lcom/google/android/gms/internal/play_billing/zzii;Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzg(I)Ljava/util/Map$Entry;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzb:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zza:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzie;

    return-object p1

    .line 1
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final zzj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzii;->zzd:Z

    return v0
.end method
