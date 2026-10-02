.class final Lcom/google/android/gms/measurement/internal/zzok;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:J

.field final zzb:J

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzol;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzok;->zzc:Lcom/google/android/gms/measurement/internal/zzol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzok;->zza:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzok;->zzb:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzok;->zzc:Lcom/google/android/gms/measurement/internal/zzol;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzol;->zza:Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzaX()Lcom/google/android/gms/measurement/internal/zzil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzoj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzoj;-><init>(Lcom/google/android/gms/measurement/internal/zzok;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method
