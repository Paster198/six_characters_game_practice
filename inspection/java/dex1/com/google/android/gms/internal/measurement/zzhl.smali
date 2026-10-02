.class public final Lcom/google/android/gms/internal/measurement/zzhl;
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhm;->zzf()Lcom/google/android/gms/internal/measurement/zzhm;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzb()I

    move-result v0

    return v0
.end method

.method public final zzb()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzj(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzk(Lcom/google/android/gms/internal/measurement/zzhm;Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzk(Lcom/google/android/gms/internal/measurement/zzhm;Lcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzm(Lcom/google/android/gms/internal/measurement/zzhm;)V

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzn(Lcom/google/android/gms/internal/measurement/zzhm;I)V

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzo(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzj(ILcom/google/android/gms/internal/measurement/zzhp;)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhq;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzp(Lcom/google/android/gms/internal/measurement/zzhm;ILcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzk(ILcom/google/android/gms/internal/measurement/zzhq;)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzp(Lcom/google/android/gms/internal/measurement/zzhm;ILcom/google/android/gms/internal/measurement/zzhq;)V

    return-object p0
.end method

.method public final zzl(J)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzq(Lcom/google/android/gms/internal/measurement/zzhm;J)V

    return-object p0
.end method

.method public final zzm(J)Lcom/google/android/gms/internal/measurement/zzhl;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhm;->zzr(Lcom/google/android/gms/internal/measurement/zzhm;J)V

    return-object p0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/measurement/zzhq;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhm;->zzg(I)Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object p1

    return-object p1
.end method

.method public final zzo()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzp()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzi()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhm;->zzu()Z

    move-result v0

    return v0
.end method
