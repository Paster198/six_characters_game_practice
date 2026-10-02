.class final Lcom/google/android/gms/internal/play_billing/zzgw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final zza:Ljava/util/Map$Entry;


# direct methods
.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/android/gms/internal/play_billing/zzgy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgz;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgz;->zzc()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzhr;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgz;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/zzgz;->zza:Lcom/google/android/gms/internal/play_billing/zzhr;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzgz;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzgz;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 1
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Lazy field only supports MessageLite values."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()Lcom/google/android/gms/internal/play_billing/zzgz;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgw;->zza:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgz;

    return-object v0
.end method
