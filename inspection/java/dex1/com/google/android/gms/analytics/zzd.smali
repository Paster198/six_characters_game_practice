.class public final Lcom/google/android/gms/analytics/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method public static zza(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(I)Ljava/lang/String;
    .registers 2

    const-string v0, "cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(I)Ljava/lang/String;
    .registers 2

    const-string v0, "cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zze(I)Ljava/lang/String;
    .registers 2

    const-string v0, "cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzf(I)Ljava/lang/String;
    .registers 2

    const-string v0, "cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&il"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzh(I)Ljava/lang/String;
    .registers 2

    const-string v0, "il"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(I)Ljava/lang/String;
    .registers 2

    const-string v0, "pi"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&pr"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(I)Ljava/lang/String;
    .registers 2

    const-string v0, "pr"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzl(I)Ljava/lang/String;
    .registers 2

    const-string v0, "&promo"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzm(I)Ljava/lang/String;
    .registers 2

    const-string v0, "promo"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzn(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-gtz p1, :cond_a

    const-string p1, "index out of range for prefix"

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzfa;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    .line 2
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xb

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
