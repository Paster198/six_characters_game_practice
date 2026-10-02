.class final Lcom/google/android/gms/measurement/internal/zzjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzqb;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzr;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zza:Lcom/google/android/gms/measurement/internal/zzqb;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzc:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzc:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpv;->zzL()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zza:Lcom/google/android/gms/measurement/internal/zzqb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzqb;->zza()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzqb;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzag(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzb:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzc(Lcom/google/android/gms/measurement/internal/zzjp;)Lcom/google/android/gms/measurement/internal/zzpv;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzpv;->zzas(Lcom/google/android/gms/measurement/internal/zzqb;Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method
