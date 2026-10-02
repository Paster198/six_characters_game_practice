.class public final Lcom/google/android/gms/internal/gtm/zzcf;
.super Lcom/google/android/gms/internal/gtm/zzbs;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbv;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbv;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzav;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzav;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcf;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzav;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcf;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    return-object v0
.end method

.method protected final zzd()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzr;->zzc()Lcom/google/android/gms/internal/gtm/zzav;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcf;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzav;->zzh(Lcom/google/android/gms/internal/gtm/zzav;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbr;->zzB()Lcom/google/android/gms/internal/gtm/zzft;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzft;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcf;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzav;->zzk(Ljava/lang/String;)V

    .line 5
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zzW()V

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzft;->zza:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcf;->zza:Lcom/google/android/gms/internal/gtm/zzav;

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzav;->zzl(Ljava/lang/String;)V

    :cond_29
    return-void
.end method
