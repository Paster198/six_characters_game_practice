.class abstract Lcom/google/android/gms/internal/fido/zzce;
.super Lcom/google/android/gms/internal/fido/zzcf;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzcf;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzce;->zzf()Lcom/google/android/gms/internal/fido/zzcd;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fido/zzcd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzce;->zzf()Lcom/google/android/gms/internal/fido/zzcd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcd;->zzc()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzcy;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzce;->zzf()Lcom/google/android/gms/internal/fido/zzcd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcd;->size()I

    move-result v0

    return v0
.end method

.method abstract zzf()Lcom/google/android/gms/internal/fido/zzcd;
.end method

.method final zzg()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
