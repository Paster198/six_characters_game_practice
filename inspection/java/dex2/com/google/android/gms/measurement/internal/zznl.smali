.class final Lcom/google/android/gms/measurement/internal/zznl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzbh;

.field final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzny;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzny;ZLcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .registers 7

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zznl;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzb:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzc:Lcom/google/android/gms/measurement/internal/zzbh;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzd:Lcom/google/android/gms/measurement/internal/zzny;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzi(Lcom/google/android/gms/measurement/internal/zzny;)Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zze()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznl;->zza:Lcom/google/android/gms/measurement/internal/zzr;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzb:Z

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    goto :goto_25

    .line 5
    :cond_23
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznl;->zzc:Lcom/google/android/gms/measurement/internal/zzbh;

    .line 4
    :goto_25
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzny;->zzP(Lcom/google/android/gms/measurement/internal/zzgl;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzy(Lcom/google/android/gms/measurement/internal/zzny;)V

    return-void
.end method
