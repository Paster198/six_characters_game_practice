.class public final Lcom/google/android/gms/internal/measurement/zzhh;
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhi;->zzc()Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzhh;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzf(Lcom/google/android/gms/internal/measurement/zzhi;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/internal/measurement/zzhh;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzic;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzg(Lcom/google/android/gms/internal/measurement/zzhi;Lcom/google/android/gms/internal/measurement/zzic;)V

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/measurement/zzhh;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzh(Lcom/google/android/gms/internal/measurement/zzhi;Z)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhh;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhh;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhi;->zzi(Lcom/google/android/gms/internal/measurement/zzhi;Lcom/google/android/gms/internal/measurement/zzic;)V

    return-object p0
.end method
