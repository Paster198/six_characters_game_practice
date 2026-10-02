.class public final Lcom/google/android/gms/internal/play_billing/zzle;
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

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzlf;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlg;->zzb()Lcom/google/android/gms/internal/play_billing/zzlg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgl;-><init>(Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzle;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzle;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzlg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzju;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzlg;->zzc(Lcom/google/android/gms/internal/play_billing/zzlg;Lcom/google/android/gms/internal/play_billing/zzju;)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/play_billing/zzle;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzle;->zza:Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzlg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzlg;->zze(Lcom/google/android/gms/internal/play_billing/zzlg;J)V

    return-object p0
.end method
