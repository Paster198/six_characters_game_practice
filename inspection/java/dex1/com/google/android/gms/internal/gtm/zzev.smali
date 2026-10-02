.class final Lcom/google/android/gms/internal/gtm/zzev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gtm/zzcr<",
        "Lcom/google/android/gms/internal/gtm/zzew;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzbv;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzew;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzew;

    .line 1
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzew;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/gtm/zzcq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zzc(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "ga_dryRun"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzew;->zze:I

    return-void

    :cond_d
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzev;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p2

    const-string v0, "Bool xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "ga_dispatchPeriod"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    iput p2, p1, Lcom/google/android/gms/internal/gtm/zzew;->zzd:I

    return-void

    :cond_d
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzev;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p2

    const-string v0, "Int xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "ga_appName"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzew;->zza:Ljava/lang/String;

    return-void

    :cond_d
    const-string v0, "ga_appVersion"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzew;->zzb:Ljava/lang/String;

    return-void

    :cond_1a
    const-string v0, "ga_logLevel"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzev;->zzb:Lcom/google/android/gms/internal/gtm/zzew;

    iput-object p2, p1, Lcom/google/android/gms/internal/gtm/zzew;->zzc:Ljava/lang/String;

    return-void

    :cond_27
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzev;->zza:Lcom/google/android/gms/internal/gtm/zzbv;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbv;->zzm()Lcom/google/android/gms/internal/gtm/zzfb;

    move-result-object p2

    const-string v0, "String xml configuration name not recognized"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzS(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
