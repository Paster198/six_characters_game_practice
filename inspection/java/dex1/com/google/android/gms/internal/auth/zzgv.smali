.class Lcom/google/android/gms/internal/auth/zzgv;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field private final zza:I

.field private zzb:Ljava/util/List;

.field private zzc:Ljava/util/Map;

.field private zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/auth/zzgt;

.field private zzf:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/auth/zzgu;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zza:I

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzf:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/auth/zzgv;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->zzl(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/auth/zzgv;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/auth/zzgv;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/auth/zzgv;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    return-void
.end method

.method private final zzk(Ljava/lang/Comparable;)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_25

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/auth/zzgp;->zza()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_21

    add-int/lit8 v0, v0, 0x1

    neg-int p1, v0

    return p1

    :cond_21
    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    if-gt v2, v1, :cond_46

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/auth/zzgp;->zza()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_40

    add-int/lit8 v1, v0, -0x1

    goto :goto_25

    :cond_40
    if-lez v3, :cond_45

    add-int/lit8 v2, v0, 0x1

    goto :goto_25

    :cond_45
    return v0

    :cond_46
    add-int/lit8 v2, v2, 0x1

    neg-int p1, v2

    return p1
.end method

.method private final zzl(I)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgp;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzm()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/auth/zzgp;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v4, v3}, Lcom/google/android/gms/internal/auth/zzgp;-><init>(Lcom/google/android/gms/internal/auth/zzgv;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_40
    return-object p1
.end method

.method private final zzm()Ljava/util/SortedMap;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 4
    move-object v1, v0

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzf:Ljava/util/Map;

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 5
    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private final zzn()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzd:Z

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
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->zzk(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zze:Lcom/google/android/gms/internal/auth/zzgt;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/auth/zzgt;-><init>(Lcom/google/android/gms/internal/auth/zzgv;Lcom/google/android/gms/internal/auth/zzgs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zze:Lcom/google/android/gms/internal/auth/zzgt;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zze:Lcom/google/android/gms/internal/auth/zzgt;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/auth/zzgv;

    if-nez v1, :cond_d

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/auth/zzgv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgv;->size()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgv;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    return v3

    .line 5
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzb()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgv;->zzb()I

    move-result v4

    if-ne v2, v4, :cond_46

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_3a

    .line 7
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/auth/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/auth/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    return v3

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_3a
    if-eq v2, v1, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_45
    return v0

    .line 9
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgv;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgv;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->zzk(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzgp;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzb()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_18

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/auth/zzgp;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_27
    return v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->zzk(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzgv;->zzl(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public zza()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzd:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_17

    .line 6
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 2
    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzf:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2c

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzf:Ljava/util/Map;

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 5
    :goto_2c
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzf:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzd:Z

    :cond_31
    return-void
.end method

.method public final zzb()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()Ljava/lang/Iterable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgo;->zza()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->zzk(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/auth/zzgp;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzn()V

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/gms/internal/auth/zzgv;->zza:I

    .line 6
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zza:I

    if-lt v0, v1, :cond_40

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzm()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_40
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/auth/zzgv;->zza:I

    if-ne v1, v2, :cond_63

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzgp;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzgv;->zzm()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzgp;->zza()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzgp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/auth/zzgp;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgp;-><init>(Lcom/google/android/gms/internal/auth/zzgv;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzg(I)Ljava/util/Map$Entry;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final zzj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzgv;->zzd:Z

    return v0
.end method
