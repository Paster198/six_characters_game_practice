.class final Lcom/google/android/gms/measurement/internal/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhm;Z)V
    .registers 3

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzb:Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhm;->zza(Lcom/google/android/gms/measurement/internal/zzhm;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzX(Z)V

    return-void
.end method
