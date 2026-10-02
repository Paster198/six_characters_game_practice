.class final Lcom/google/android/gms/measurement/internal/zzmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzmh;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzmh;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzmo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmo;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;J)V
    .registers 7

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zze:Lcom/google/android/gms/measurement/internal/zzmo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zze:Lcom/google/android/gms/measurement/internal/zzmo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzb:Lcom/google/android/gms/measurement/internal/zzmh;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzc:Lcom/google/android/gms/measurement/internal/zzmh;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzmi;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzmo;->zzq(Lcom/google/android/gms/measurement/internal/zzmo;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzmh;Lcom/google/android/gms/measurement/internal/zzmh;J)V

    return-void
.end method
