.class final Lcom/google/android/gms/internal/play_billing/zzid;
.super Lcom/google/android/gms/internal/play_billing/zzii;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzii;-><init>(Lcom/google/android/gms/internal/play_billing/zzih;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzj()Z

    move-result v0

    if-nez v0, :cond_5f

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzc()I

    move-result v1

    if-ge v0, v1, :cond_31

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzie;->zza()Lcom/google/android/gms/internal/play_billing/zzgg;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzgg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/zzgg;->zze()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 9
    :cond_5f
    invoke-super {p0}, Lcom/google/android/gms/internal/play_billing/zzii;->zza()V

    return-void
.end method
