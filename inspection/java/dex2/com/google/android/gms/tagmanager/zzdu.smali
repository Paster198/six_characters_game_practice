.class final Lcom/google/android/gms/tagmanager/zzdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzfi;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdu;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tagmanager/zzca;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzca;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdu;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzca;->zzb()J

    move-result-wide v1

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdu;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdw;->zze(Lcom/google/android/gms/tagmanager/zzdw;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzdw;->zzi(Lcom/google/android/gms/tagmanager/zzdw;JJ)V

    return-void

    :cond_1e
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdu;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzdw;->zze(Lcom/google/android/gms/tagmanager/zzdw;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdu;->zza:Lcom/google/android/gms/tagmanager/zzdw;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzca;->zzb()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdw;->zzh(Lcom/google/android/gms/tagmanager/zzdw;J)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzca;->zzb()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Giving up on failed hitId: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdh;->zzb:Lcom/google/android/gms/tagmanager/zzbg;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzbg;->zzd(Ljava/lang/String;)V

    :cond_55
    return-void
.end method
