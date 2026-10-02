.class public final Lcom/google/android/gms/internal/measurement/zzhp;
.super Lcom/google/android/gms/internal/measurement/zzlz;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzip;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhq;->zzf()Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzc()I

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzj(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzk(Lcom/google/android/gms/internal/measurement/zzhq;Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzm(Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzn(Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzo(Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzp(Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzh(D)Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhq;->zzq(Lcom/google/android/gms/internal/measurement/zzhq;D)V

    return-object p0
.end method

.method public final zzi(J)Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhq;->zzr(Lcom/google/android/gms/internal/measurement/zzhq;J)V

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzs(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhp;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhq;->zzt(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
