.class public final synthetic Lcom/android/billingclient/api/zzbu;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbv;

.field public final synthetic zzb:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbv;Lcom/android/billingclient/api/BillingResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbu;->zza:Lcom/android/billingclient/api/zzbv;

    iput-object p2, p0, Lcom/android/billingclient/api/zzbu;->zzb:Lcom/android/billingclient/api/BillingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbu;->zza:Lcom/android/billingclient/api/zzbv;

    iget-object v1, p0, Lcom/android/billingclient/api/zzbu;->zzb:Lcom/android/billingclient/api/BillingResult;

    :try_start_4
    iget-object v0, v0, Lcom/android/billingclient/api/zzbv;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzj(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Exception calling onBillingSetupFinished."

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
