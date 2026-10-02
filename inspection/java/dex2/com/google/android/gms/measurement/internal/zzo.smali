.class final Lcom/google/android/gms/measurement/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzcy;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzcy;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzw()Lcom/google/android/gms/measurement/internal/zzqf;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzI()Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzqf;->zzT(Lcom/google/android/gms/internal/measurement/zzcy;Z)V

    return-void
.end method
