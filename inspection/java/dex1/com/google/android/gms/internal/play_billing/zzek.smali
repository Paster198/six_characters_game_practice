.class public final Lcom/google/android/gms/internal/play_billing/zzek;
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

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzeo;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzel;->zzb()Lcom/google/android/gms/internal/play_billing/zzel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzek;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzek;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzev;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzel;->zzc(Lcom/google/android/gms/internal/play_billing/zzel;Lcom/google/android/gms/internal/play_billing/zzev;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzek;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzek;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzev;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzel;->zze(Lcom/google/android/gms/internal/play_billing/zzel;Lcom/google/android/gms/internal/play_billing/zzev;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/play_billing/zzek;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzek;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzel;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzel;->zzf(Lcom/google/android/gms/internal/play_billing/zzel;I)V

    return-object p0
.end method
