.class public final Lcom/google/android/gms/internal/play_billing/zzka;
.super Lcom/google/android/gms/internal/play_billing/zzgl;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzkc;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb()Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzka;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzka;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzc(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzka;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzka;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzju;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zze(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzju;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzka;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzka;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkd;

    const-string v0, "ProxyBillingBroadcastReceiver"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzf(Lcom/google/android/gms/internal/play_billing/zzkd;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/play_billing/zzld;)Lcom/google/android/gms/internal/play_billing/zzka;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzka;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzld;)V

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/play_billing/zzka;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzka;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzh(Lcom/google/android/gms/internal/play_billing/zzkd;I)V

    return-object p0
.end method
