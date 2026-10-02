.class final Lcom/google/android/gms/measurement/internal/zzpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"


# instance fields
.field private zza:J

.field private zzb:Lcom/google/android/gms/internal/measurement/zzhv;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/util/Map;

.field private zze:Lcom/google/android/gms/measurement/internal/zzmf;

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(J)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzg:J

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzf:J

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzh:J

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzb:Lcom/google/android/gms/internal/measurement/zzhv;

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzi:I

    return-object p0
.end method

.method public final zzf(J)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zza:J

    return-object p0
.end method

.method public final zzg(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/measurement/internal/zzmf;)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpx;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzpz;
    .registers 16

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzpz;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zza:J

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzb:Lcom/google/android/gms/internal/measurement/zzhv;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzd:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzf:J

    iget-wide v9, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzg:J

    iget-wide v11, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzh:J

    iget v13, p0, Lcom/google/android/gms/measurement/internal/zzpx;->zzi:I

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/measurement/internal/zzpz;-><init>(JLcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzmf;JJJILcom/google/android/gms/measurement/internal/zzpy;)V

    return-object v0
.end method
