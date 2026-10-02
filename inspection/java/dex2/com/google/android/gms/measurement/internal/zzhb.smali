.class final Lcom/google/android/gms/measurement/internal/zzhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/Object;

.field final synthetic zzd:Ljava/lang/Object;

.field final synthetic zze:Ljava/lang/Object;

.field final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzhe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhe;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzd:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zze:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzf:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzf:Lcom/google/android/gms/measurement/internal/zzhe;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzhe;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjr;->zzy()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Lcom/google/android/gms/measurement/internal/zzhe;)C

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzam;->zzD()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v2, 0x43

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzt(Lcom/google/android/gms/measurement/internal/zzhe;C)V

    goto :goto_31

    .line 7
    :cond_29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzaV()Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v2, 0x63

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzt(Lcom/google/android/gms/measurement/internal/zzhe;C)V

    .line 6
    :cond_31
    :goto_31
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(Lcom/google/android/gms/measurement/internal/zzhe;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_4a

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzam;->zzj()J

    const-wide/32 v2, 0x1d0da

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhe;->zzs(Lcom/google/android/gms/measurement/internal/zzhe;J)V

    :cond_4a
    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zza:I

    const-string v3, "01VDIWEA?"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zza(Lcom/google/android/gms/measurement/internal/zzhe;)C

    move-result v3

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(Lcom/google/android/gms/measurement/internal/zzhe;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzc:Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zzd:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzhb;->zze:Ljava/lang/Object;

    const/4 v9, 0x1

    .line 12
    invoke-static {v9, v0, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhe;->zzo(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "2"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_90

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_90
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzb:Lcom/google/android/gms/measurement/internal/zzhq;

    if-eqz v0, :cond_99

    const-wide/16 v3, 0x1

    .line 15
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhq;->zzb(Ljava/lang/String;J)V

    :cond_99
    return-void

    .line 16
    :cond_9a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->zzr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Persisted config not initialized. Not logging error/warn"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
