.class final Lcom/android/billingclient/api/zzbv;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/play_billing/zzp;

.field final synthetic zzb:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzp;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/android/billingclient/api/zzbv;->zza:Lcom/google/android/gms/internal/play_billing/zzp;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbv;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBillingServiceDisconnected()V
    .registers 4

    .line 1
    const-string v0, "Reconnection attempt failed."

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->zza:Lcom/google/android/gms/internal/play_billing/zzp;

    .line 2
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzp;->zzb(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception v0

    .line 5
    const-string v2, "Exception setting completer."

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :goto_15
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    .line 4
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzj(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v1, Lcom/android/billingclient/api/zzbt;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzbt;-><init>(Lcom/android/billingclient/api/zzbv;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzax(Ljava/lang/Runnable;)V

    :cond_25
    return-void
.end method

.method public final onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reconnection finished with result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_17
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->zza:Lcom/google/android/gms/internal/play_billing/zzp;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzp;->zzb(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_23

    :catchall_1d
    move-exception v0

    .line 6
    const-string v2, "Exception setting completer."

    .line 4
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_23
    iget-object v0, p0, Lcom/android/billingclient/api/zzbv;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    .line 5
    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzj(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v1

    if-eqz v1, :cond_33

    new-instance v1, Lcom/android/billingclient/api/zzbu;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzbu;-><init>(Lcom/android/billingclient/api/zzbv;Lcom/android/billingclient/api/BillingResult;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzax(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method
