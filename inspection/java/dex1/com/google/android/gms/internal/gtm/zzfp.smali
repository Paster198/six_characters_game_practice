.class final Lcom/google/android/gms/internal/gtm/zzfp;
.super Lcom/google/android/gms/internal/gtm/zzbr;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzbr;",
        "Lcom/google/android/gms/internal/gtm/zzcr<",
        "Lcom/google/android/gms/internal/gtm/zzfr;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzfr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzfr;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzfr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/gtm/zzcq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzfr;->zzg:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "ga_autoActivityTracking"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzd:I

    return-void

    :cond_d
    const-string v0, "ga_anonymizeIp"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zze:I

    return-void

    :cond_1a
    const-string v0, "ga_reportUncaughtExceptions"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzf:I

    return-void

    :cond_27
    const-string p2, "bool configuration name not recognized"

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "ga_sessionTimeout"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzc:I

    return-void

    :cond_d
    const-string p2, "int configuration name not recognized"

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "ga_trackingId"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zza:Ljava/lang/String;

    return-void

    :cond_d
    const-string v0, "ga_sampleFrequency"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :try_start_15
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Lcom/google/android/gms/internal/gtm/zzfr;

    .line 3
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/gms/internal/gtm/zzfr;->zzb:D
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    .line 5
    const-string v0, "Error parsing ga_sampleFrequency value"

    .line 4
    invoke-virtual {p0, v0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzT(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_25
    const-string p2, "string configuration name not recognized"

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
