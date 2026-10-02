.class public final synthetic Lcom/android/billingclient/api/zzbt;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/android/billingclient/api/zzbv;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/zzbv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzbt;->zza:Lcom/android/billingclient/api/zzbv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzbt;->zza:Lcom/android/billingclient/api/zzbv;

    :try_start_2
    iget-object v0, v0, Lcom/android/billingclient/api/zzbv;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzj(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingClientStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Exception calling onBillingServiceDisconnected."

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
