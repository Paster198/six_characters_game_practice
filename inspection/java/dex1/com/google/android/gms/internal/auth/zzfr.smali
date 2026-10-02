.class public final Lcom/google/android/gms/internal/auth/zzfr;
.super Ljava/util/LinkedHashMap;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzfr;


# instance fields
.field private zzb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzfr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzfr;->zza:Lcom/google/android/gms/internal/auth/zzfr;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/auth/zzfr;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzfr;->zzb:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/auth/zzfr;->zzb:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/auth/zzfr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzfr;->zza:Lcom/google/android/gms/internal/auth/zzfr;

    return-object v0
.end method

.method private static zzf(Ljava/lang/Object;)I
    .registers 3

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_12

    .line 2
    check-cast p0, [B

    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1, v0}, Lcom/google/android/gms/internal/auth/zzfa;->zzb(I[BII)I

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x1

    :cond_11
    return p0

    :cond_12
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzex;

    if-nez v0, :cond_1b

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 4
    :cond_1b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private final zzg()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzfr;->zzb:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzfr;->zzg()V

    .line 2
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_58

    check-cast p1, Ljava/util/Map;

    if-ne p0, p1, :cond_9

    goto :goto_56

    .line 2
    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    goto :goto_58

    .line 3
    :cond_14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v3, v2, [B

    if-eqz v3, :cond_4f

    instance-of v3, v1, [B

    if-eqz v3, :cond_4f

    .line 8
    check-cast v2, [B

    check-cast v1, [B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_53

    .line 7
    :cond_4f
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_53
    if-nez v1, :cond_1c

    goto :goto_58

    :cond_56
    :goto_56
    const/4 p1, 0x1

    return p1

    :cond_58
    :goto_58
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzfr;->zzf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzfr;->zzf(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_9

    :cond_28
    return v1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzfr;->zzg()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzfr;->zzg()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    .line 5
    :cond_22
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzfr;->zzg()V

    .line 2
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/auth/zzfr;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzfr;-><init>()V

    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzfr;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final zzc()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzfr;->zzb:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/auth/zzfr;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzfr;->zzg()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzfr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzfr;->putAll(Ljava/util/Map;)V

    :cond_c
    return-void
.end method

.method public final zze()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzfr;->zzb:Z

    return v0
.end method
