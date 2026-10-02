.class public final Lcom/google/android/gms/internal/play_billing/zzp;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field zza:Ljava/lang/Object;

.field zzb:Lcom/google/android/gms/internal/play_billing/zzt;

.field private zzc:Lcom/google/android/gms/internal/play_billing/zzv;

.field private zzd:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzv;->zze()Lcom/google/android/gms/internal/play_billing/zzv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzc:Lcom/google/android/gms/internal/play_billing/zzv;

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzb:Lcom/google/android/gms/internal/play_billing/zzt;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzt;->isDone()Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zza:Ljava/lang/Object;

    .line 2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzt;->zzc(Ljava/lang/Throwable;)Z

    :cond_22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzd:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzc:Lcom/google/android/gms/internal/play_billing/zzv;

    if-eqz v0, :cond_2e

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzo;->zzd(Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method final zza()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzb:Lcom/google/android/gms/internal/play_billing/zzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzc:Lcom/google/android/gms/internal/play_billing/zzv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzo;->zzd(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzb:Lcom/google/android/gms/internal/play_billing/zzt;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzt;->zza(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    if-eqz v0, :cond_19

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzb:Lcom/google/android/gms/internal/play_billing/zzt;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzp;->zzc:Lcom/google/android/gms/internal/play_billing/zzv;

    :cond_19
    return v0
.end method
