.class final Lcom/google/android/gms/internal/fido/zzdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# direct methods
.method public static zza(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 3

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_15

    .line 2
    check-cast p1, Ljava/util/SortedSet;

    .line 3
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p1

    if-nez p1, :cond_1f

    sget-object p1, Lcom/google/android/gms/internal/fido/zzcq;->zza:Lcom/google/android/gms/internal/fido/zzcq;

    goto :goto_1f

    .line 5
    :cond_15
    instance-of v0, p1, Lcom/google/android/gms/internal/fido/zzda;

    if-eqz v0, :cond_24

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/fido/zzda;

    invoke-interface {p1}, Lcom/google/android/gms/internal/fido/zzda;->comparator()Ljava/util/Comparator;

    move-result-object p1

    .line 5
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method
