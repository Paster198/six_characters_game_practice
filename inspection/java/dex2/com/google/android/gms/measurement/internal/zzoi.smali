.class final Lcom/google/android/gms/measurement/internal/zzoi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzop;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzop;J)V
    .registers 4

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzoi;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoi;->zzb:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoi;->zzb:Lcom/google/android/gms/measurement/internal/zzop;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzoi;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzop;->zzj(Lcom/google/android/gms/measurement/internal/zzop;J)V

    return-void
.end method
