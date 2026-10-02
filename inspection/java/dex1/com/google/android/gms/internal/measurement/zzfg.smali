.class public final Lcom/google/android/gms/internal/measurement/zzfg;
.super Lcom/google/android/gms/internal/measurement/zzlz;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfw;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfh;->zzd()Lcom/google/android/gms/internal/measurement/zzfh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzb()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfh;->zzc()I

    move-result v0

    return v0
.end method

.method public final zzc(ILcom/google/android/gms/internal/measurement/zzfi;)Lcom/google/android/gms/internal/measurement/zzfg;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfj;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfh;->zzi(Lcom/google/android/gms/internal/measurement/zzfh;ILcom/google/android/gms/internal/measurement/zzfj;)V

    return-object p0
.end method

.method public final zzd(ILcom/google/android/gms/internal/measurement/zzfq;)Lcom/google/android/gms/internal/measurement/zzfg;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzba()Lcom/google/android/gms/internal/measurement/zzmd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfh;->zzj(Lcom/google/android/gms/internal/measurement/zzfh;ILcom/google/android/gms/internal/measurement/zzfr;)V

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzfj;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfh;->zze(I)Lcom/google/android/gms/internal/measurement/zzfj;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/measurement/zzfr;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfh;->zzf(I)Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object p1

    return-object p1
.end method
