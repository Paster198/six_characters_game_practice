.class final Lcom/google/android/gms/tagmanager/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzy;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzal;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzal;Lcom/google/android/gms/tagmanager/zzah;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzai;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzai;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzal;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzai;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzal;->zzg(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzec;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzec;->zza()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzai;->zza:Lcom/google/android/gms/tagmanager/zzal;

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzal;->zzi(Lcom/google/android/gms/tagmanager/zzal;J)V

    :cond_13
    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzai;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzal;->zzo(Ljava/lang/String;)V

    return-void
.end method
