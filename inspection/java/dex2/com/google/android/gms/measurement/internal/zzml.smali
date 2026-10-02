.class final Lcom/google/android/gms/measurement/internal/zzml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzmo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmo;J)V
    .registers 4

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Lcom/google/android/gms/measurement/internal/zzmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzml;->zzb:Lcom/google/android/gms/measurement/internal/zzmo;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzd()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzml;->zza:J

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzd;->zzf(J)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Lcom/google/android/gms/measurement/internal/zzmh;

    return-void
.end method
