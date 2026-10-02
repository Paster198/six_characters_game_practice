.class final Lcom/google/android/gms/measurement/internal/zzoh;
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

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzoh;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzoh;->zzb:Lcom/google/android/gms/measurement/internal/zzop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoh;->zzb:Lcom/google/android/gms/measurement/internal/zzop;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzoh;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzop;->zzl(Lcom/google/android/gms/measurement/internal/zzop;J)V

    return-void
.end method
