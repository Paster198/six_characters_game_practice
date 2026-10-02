.class final Lcom/google/android/gms/internal/auth/zzgt;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/auth/zzgv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzgv;Lcom/google/android/gms/internal/auth/zzgs;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzgt;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/auth/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgv;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzgv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1e

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    :cond_1d
    return v2

    :cond_1e
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgr;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzgr;-><init>(Lcom/google/android/gms/internal/auth/zzgv;Lcom/google/android/gms/internal/auth/zzgq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzgt;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgt;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgv;->size()I

    move-result v0

    return v0
.end method
