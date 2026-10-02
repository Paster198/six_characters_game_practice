.class final Lcom/google/android/gms/internal/play_billing/zzis;
.super Lcom/google/android/gms/internal/play_billing/zziq;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zziq;-><init>()V

    return-void
.end method

.method static final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzir;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzgp;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzf()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    :cond_10
    return-object v0
.end method
