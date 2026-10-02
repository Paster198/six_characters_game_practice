.class final Lcom/google/android/gms/internal/gtm/zzwf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwe;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzwd;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzwe;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_19

    .line 4
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzwe;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1b

    :goto_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static final zzb(Ljava/lang/Object;)Z
    .registers 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzwe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzwe;->zze()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static final zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzwe;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwe;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzwe;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzwe;->zze()Z

    move-result v0

    if-nez v0, :cond_14

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzwe;->zzb()Lcom/google/android/gms/internal/gtm/zzwe;

    move-result-object p0

    .line 6
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzwe;->zzd(Lcom/google/android/gms/internal/gtm/zzwe;)V

    :cond_17
    return-object p0
.end method
