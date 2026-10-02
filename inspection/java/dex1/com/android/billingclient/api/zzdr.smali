.class final Lcom/android/billingclient/api/zzdr;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/android/billingclient/api/zzdd;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

.field private final zzc:Lcom/android/billingclient/api/zzdt;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzdt;

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/zzdt;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    return-void
.end method

.method private final zzo(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzku;->zza(Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 5
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    .line 6
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzp(Lcom/google/android/gms/internal/play_billing/zzjp;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzb(Lcom/google/android/gms/internal/play_billing/zzjp;)Lcom/google/android/gms/internal/play_billing/zzku;

    iget-object p1, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkw;

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    .line 5
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzjl;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/zzdr;->zzo(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdr;->zza(Lcom/google/android/gms/internal/play_billing/zzjl;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_billing/zzjl;IJ)V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1a

    goto :goto_29

    .line 2
    :cond_1a
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzke;

    .line 3
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zze(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 5
    :goto_29
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzo(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception p1

    .line 4
    const-string p2, "BillingLogger"

    const-string p3, "Unable to log."

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjl;->zze()Lcom/google/android/gms/internal/play_billing/zzkt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 3
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/play_billing/zzko;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzko;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzd(Lcom/google/android/gms/internal/play_billing/zzko;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjl;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_25

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    goto :goto_36

    .line 9
    :cond_25
    iget-object p4, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 6
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzke;

    .line 7
    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zze(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 9
    :goto_36
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzo(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception p1

    .line 8
    const-string p2, "BillingLogger"

    const-string p3, "Unable to log."

    .line 10
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/play_billing/zzjl;IJZ)V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjl;->zze()Lcom/google/android/gms/internal/play_billing/zzkt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 4
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzko;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzko;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzd(Lcom/google/android/gms/internal/play_billing/zzko;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjl;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_38

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    goto :goto_49

    .line 10
    :cond_38
    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzke;

    .line 8
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zze(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 10
    :goto_49
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzo(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception p1

    .line 9
    const-string p2, "BillingLogger"

    const-string p3, "Unable to log."

    .line 11
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/play_billing/zzjp;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/zzdr;->zzp(Lcom/google/android/gms/internal/play_billing/zzjp;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/play_billing/zzjp;I)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdr;->zzf(Lcom/google/android/gms/internal/play_billing/zzjp;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p1

    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/play_billing/zzjp;JZ)V
    .registers 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjp;->zzc()Lcom/google/android/gms/internal/play_billing/zzkt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 3
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/play_billing/zzko;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzko;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjn;->zzc(Lcom/google/android/gms/internal/play_billing/zzko;)Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjp;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_25

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    goto :goto_36

    .line 9
    :cond_25
    iget-object p4, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 6
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzke;

    .line 7
    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zze(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 9
    :goto_36
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzp(Lcom/google/android/gms/internal/play_billing/zzjp;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception p1

    .line 8
    const-string p2, "BillingLogger"

    const-string p3, "Unable to log."

    .line 10
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/play_billing/zzjx;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc(Lcom/google/android/gms/internal/play_billing/zzjx;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzj(Lcom/android/billingclient/api/BillingResult;J)V
    .registers 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zza()Lcom/google/android/gms/internal/play_billing/zzka;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzka;->zze(I)Lcom/google/android/gms/internal/play_billing/zzka;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjz;->zze:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzka;->zza(Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzka;

    if-eqz p1, :cond_24

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzka;->zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzka;

    .line 8
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object p1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_31

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    goto :goto_42

    .line 15
    :cond_31
    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzke;

    .line 10
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zze(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 12
    :goto_42
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzku;->zzd(Lcom/google/android/gms/internal/play_billing/zzka;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 15
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_53
    .catchall {:try_start_0 .. :try_end_53} :catchall_54

    return-void

    :catchall_54
    move-exception p1

    .line 11
    const-string p2, "BillingLogger"

    const-string p3, "Unable to log."

    .line 16
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzk(J)V
    .registers 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zza()Lcom/google/android/gms/internal/play_billing/zzka;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzka;->zze(I)Lcom/google/android/gms/internal/play_billing/zzka;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzf:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzka;->zza(Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzka;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_20

    iget-object p1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    goto :goto_31

    .line 12
    :cond_20
    iget-object v2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzke;

    .line 7
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zze(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 9
    :goto_31
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzku;->zze(Lcom/google/android/gms/internal/play_billing/zzkd;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 12
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception p1

    .line 8
    const-string p2, "BillingLogger"

    const-string v0, "Unable to log."

    .line 13
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/play_billing/zzld;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zza()Lcom/google/android/gms/internal/play_billing/zzka;

    move-result-object v1

    const-string v2, "ProxyBillingBroadcastReceiver"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzka;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzka;

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzka;->zze(I)Lcom/google/android/gms/internal/play_billing/zzka;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzka;->zzd(Lcom/google/android/gms/internal/play_billing/zzld;)Lcom/google/android/gms/internal/play_billing/zzka;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzd(Lcom/google/android/gms/internal/play_billing/zzka;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/play_billing/zzlg;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzq(Lcom/google/android/gms/internal/play_billing/zzlg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/play_billing/zzlk;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkw;->zza()Lcom/google/android/gms/internal/play_billing/zzku;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzp(Lcom/google/android/gms/internal/play_billing/zzkg;)Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzku;->zzr(Lcom/google/android/gms/internal/play_billing/zzlk;)Lcom/google/android/gms/internal/play_billing/zzku;

    iget-object p1, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkw;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzdt;->zza(Lcom/google/android/gms/internal/play_billing/zzkw;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception p1

    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
