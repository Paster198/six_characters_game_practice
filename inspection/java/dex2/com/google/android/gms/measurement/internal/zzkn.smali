.class public final synthetic Lcom/google/android/gms/measurement/internal/zzkn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzly;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzlw;

.field public final synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzpa;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzlw;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzpa;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzpa;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Lcom/google/android/gms/measurement/internal/zzpa;

    const/16 p5, 0xc8

    if-eq p2, p5, :cond_14

    const/16 p5, 0xcc

    if-eq p2, p5, :cond_14

    const/16 p5, 0x130

    if-ne p2, p5, :cond_2e

    move p2, p5

    :cond_14
    if-nez p3, :cond_2e

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    iget-wide v0, p4, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p5, "[sgtm] Upload succeeded for row_id"

    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzme;->zzb:Lcom/google/android/gms/measurement/internal/zzme;

    goto :goto_69

    .line 23
    :cond_2e
    iget-object p5, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p5

    .line 5
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzhe;->zzk()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p5

    iget-wide v0, p4, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "[sgtm] Upload failed for row_id. response, exception"

    .line 8
    invoke-virtual {p5, v2, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzhc;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzgi;->zzt:Lcom/google/android/gms/measurement/internal/zzgg;

    const/4 p5, 0x0

    .line 10
    invoke-virtual {p3, p5}, Lcom/google/android/gms/measurement/internal/zzgg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 11
    check-cast p3, Ljava/lang/String;

    const-string p5, ","

    invoke-virtual {p3, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzme;->zzd:Lcom/google/android/gms/measurement/internal/zzme;

    goto :goto_69

    :cond_67
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzme;->zzc:Lcom/google/android/gms/measurement/internal/zzme;

    .line 3
    :goto_69
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p5, p1, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object p5

    .line 14
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzag;

    iget-wide v1, p4, Lcom/google/android/gms/measurement/internal/zzpa;->zza:J

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzme;->zza()I

    move-result v3

    iget-wide v4, p4, Lcom/google/android/gms/measurement/internal/zzpa;->zzf:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(JIJ)V

    .line 16
    invoke-virtual {p5, v0}, Lcom/google/android/gms/measurement/internal/zzny;->zzZ(Lcom/google/android/gms/measurement/internal/zzag;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhe;->zzj()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "[sgtm] Updated status for row_id"

    invoke-virtual {p1, p5, p4, p2}, Lcom/google/android/gms/measurement/internal/zzhc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    monitor-enter p3

    .line 21
    :try_start_95
    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 23
    monitor-exit p3

    return-void

    :catchall_9d
    move-exception v0

    move-object p1, v0

    monitor-exit p3
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_9d

    throw p1
.end method
