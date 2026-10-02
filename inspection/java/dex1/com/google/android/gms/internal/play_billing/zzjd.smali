.class public final Lcom/google/android/gms/internal/play_billing/zzjd;
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

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzje;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb()Lcom/google/android/gms/internal/play_billing/zzjf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgl;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzn()V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzjd;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjf;->zze(Lcom/google/android/gms/internal/play_billing/zzjf;Ljava/lang/String;)V

    return-object p0
.end method
