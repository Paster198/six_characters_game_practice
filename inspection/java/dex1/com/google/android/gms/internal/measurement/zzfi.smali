.class public final Lcom/google/android/gms/internal/measurement/zzfi;
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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfj;->zzd()Lcom/google/android/gms/internal/measurement/zzfj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;-><init>(Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfj;->zza()I

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfi;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zzi(Lcom/google/android/gms/internal/measurement/zzfj;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(ILcom/google/android/gms/internal/measurement/zzfl;)Lcom/google/android/gms/internal/measurement/zzfi;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzbe()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfj;->zzj(Lcom/google/android/gms/internal/measurement/zzfj;ILcom/google/android/gms/internal/measurement/zzfl;)V

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/measurement/zzfl;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfj;->zze(I)Lcom/google/android/gms/internal/measurement/zzfl;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi;->zza:Lcom/google/android/gms/internal/measurement/zzmd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfj;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
