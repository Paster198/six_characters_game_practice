.class final Lcom/google/android/gms/internal/gtm/zzby;
.super Lcom/google/android/gms/internal/gtm/zzcw;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzcc;Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzby;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gtm/zzcw;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzby;->zza:Lcom/google/android/gms/internal/gtm/zzcc;

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzg()Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    const-string v1, "Inactivity, disconnecting from device AnalyticsService"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbr;->zzO(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcc;->zzc()V

    return-void
.end method
