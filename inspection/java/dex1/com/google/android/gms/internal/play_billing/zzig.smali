.class final Lcom/google/android/gms/internal/play_billing/zzig;
.super Ljava/util/AbstractSet;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/play_billing/zzii;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzii;Lcom/google/android/gms/internal/play_billing/zzih;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzig;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->zzf(Lcom/google/android/gms/internal/play_billing/zzgg;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzii;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzif;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzif;-><init>(Lcom/google/android/gms/internal/play_billing/zzii;Lcom/google/android/gms/internal/play_billing/zzih;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzig;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzii;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzig;->zza:Lcom/google/android/gms/internal/play_billing/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzii;->size()I

    move-result v0

    return v0
.end method
