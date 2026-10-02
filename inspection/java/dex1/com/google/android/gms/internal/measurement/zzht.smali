.class public final Lcom/google/android/gms/internal/measurement/zzht;
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhv;->zzd()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zza()I

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzht;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzi(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzht;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzj(Lcom/google/android/gms/internal/measurement/zzhv;Lcom/google/android/gms/internal/measurement/zzhx;)V

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzht;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zzk(Lcom/google/android/gms/internal/measurement/zzhv;)V

    return-object p0
.end method

.method public final zze(ILcom/google/android/gms/internal/measurement/zzhw;)Lcom/google/android/gms/internal/measurement/zzht;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhx;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhv;->zzm(Lcom/google/android/gms/internal/measurement/zzhv;ILcom/google/android/gms/internal/measurement/zzhx;)V

    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzn(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zzo(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/measurement/zzhx;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhv;->zze(I)Lcom/google/android/gms/internal/measurement/zzhx;

    move-result-object p1

    return-object p1
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->zzh()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
