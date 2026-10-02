.class final Lcom/google/android/gms/measurement/internal/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzcy;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzl;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzc:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzl;->zze:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzl;->zze:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->zza:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzl;->zza:Lcom/google/android/gms/internal/measurement/zzcy;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzc:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzl;->zzd:Z

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzny;->zzK(Lcom/google/android/gms/internal/measurement/zzcy;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
