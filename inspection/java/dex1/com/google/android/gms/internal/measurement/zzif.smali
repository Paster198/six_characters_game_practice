.class public final Lcom/google/android/gms/internal/measurement/zzif;
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzim;->zzc()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzih;)Lcom/google/android/gms/internal/measurement/zzif;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzim;->zze(Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzih;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzif;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzim;->zzh(Lcom/google/android/gms/internal/measurement/zzim;I)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/measurement/zzif;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzif;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzim;->zzi(Lcom/google/android/gms/internal/measurement/zzim;I)V

    return-object p0
.end method
