.class final Lcom/google/android/gms/tagmanager/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzdg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzdg<",
        "Lcom/google/android/gms/internal/gtm/zzai;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzal;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzal;Lcom/google/android/gms/tagmanager/zzaf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzal;->zzf(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzam;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzam;->zzc()V

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    monitor-enter p1

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzal;->isReady()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzal;->zze(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzaa;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzal;->zze(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzaa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzal;->setResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_34

    .line 8
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 5
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzal;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzal;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 6
    :cond_34
    :goto_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_45

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzal;->zzf(Lcom/google/android/gms/tagmanager/zzal;)Lcom/google/android/gms/tagmanager/zzam;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzam;->zzb()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzag;->zza:Lcom/google/android/gms/tagmanager/zzal;

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzal;->zzi(Lcom/google/android/gms/tagmanager/zzal;J)V

    return-void

    :catchall_45
    move-exception v0

    .line 6
    :try_start_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method
