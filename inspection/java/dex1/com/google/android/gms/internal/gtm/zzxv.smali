.class final Lcom/google/android/gms/internal/gtm/zzxv;
.super Lcom/google/android/gms/internal/gtm/zzxx;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzxx;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;J)D
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxx;->zzk(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb(Ljava/lang/Object;J)F
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxx;->zzj(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;JZ)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/gtm/zzxy;->zzb:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxy;->zzi(Ljava/lang/Object;JZ)V

    return-void

    .line 3
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxy;->zzj(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;JB)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/gtm/zzxy;->zzb:Z

    if-eqz v0, :cond_8

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxy;->zzk(Ljava/lang/Object;JB)V

    return-void

    .line 3
    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxy;->zzl(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;JD)V
    .registers 12

    .line 1
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzxx;->zzo(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;JF)V
    .registers 5

    .line 1
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/gtm/zzxx;->zzn(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;J)Z
    .registers 5

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/gtm/zzxy;->zzb:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxy;->zzt(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3
    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzxy;->zzu(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
