.class final Lcom/google/android/gms/measurement/internal/zzle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzlw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlw;J)V
    .registers 4

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzle;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzle;->zzb:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzle;->zzb:Lcom/google/android/gms/measurement/internal/zzlw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzaW()Lcom/google/android/gms/measurement/internal/zzhe;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhe;->zzd()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v2

    const-string v3, "Resetting analytics data (FE)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhc;->zza(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzf;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjq;->zzg()V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Lcom/google/android/gms/measurement/internal/zzon;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzon;->zza()V

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzlw;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzJ()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzc:Lcom/google/android/gms/measurement/internal/zzhp;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzle;->zza:J

    .line 12
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzjq;->zzu:Lcom/google/android/gms/measurement/internal/zzio;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzm()Lcom/google/android/gms/measurement/internal/zzht;

    move-result-object v5

    .line 14
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhr;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_59

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzq:Lcom/google/android/gms/measurement/internal/zzhr;

    .line 15
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    :cond_59
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzk:Lcom/google/android/gms/measurement/internal/zzhp;

    const-wide/16 v7, 0x0

    .line 16
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzl:Lcom/google/android/gms/measurement/internal/zzhp;

    .line 17
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzA()Z

    move-result v4

    if-nez v4, :cond_72

    .line 20
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzht;->zzn(Z)V

    :cond_72
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzr:Lcom/google/android/gms/measurement/internal/zzhr;

    .line 21
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzhr;->zzb(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzs:Lcom/google/android/gms/measurement/internal/zzhp;

    .line 22
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhp;->zzb(J)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzht;->zzt:Lcom/google/android/gms/measurement/internal/zzho;

    .line 23
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzho;->zzb(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzO()V

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzv()Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zza:Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza()V

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/zzlw;->zzc:Z

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzu()Lcom/google/android/gms/measurement/internal/zzny;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzny;->zzE(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
