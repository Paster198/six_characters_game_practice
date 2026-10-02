.class final Lcom/android/billingclient/api/zzcd;
.super Lcom/google/android/gms/internal/play_billing/zzaf;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

.field final zzb:Lcom/android/billingclient/api/zzdd;

.field final zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaf;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzcd;->zzb:Lcom/android/billingclient/api/zzdd;

    iput p3, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-nez p1, :cond_1e

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzcd;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzak:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 2
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 3
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 1
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 4
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    .line 5
    :cond_1e
    const-string v2, "BillingClient"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v3}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    if-eqz v3, :cond_58

    const-string p1, "getBillingConfig() failed. Response code: "

    .line 8
    invoke-static {v3, p1}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 11
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 12
    invoke-static {v3, v0, p1, v1, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v3, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 13
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 14
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    .line 15
    :cond_58
    const-string v3, "BILLING_CONFIG"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_84

    const-string p1, "getBillingConfig() returned a bundle with neither an error nor a billing config response"

    .line 16
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    .line 17
    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    iget-object v2, p0, Lcom/android/billingclient/api/zzcd;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzal:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 18
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 19
    invoke-static {v3, v0, p1, v1, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v3, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 20
    invoke-interface {v2, v0, v3}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 21
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    .line 22
    :cond_84
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_88
    new-instance v3, Lcom/android/billingclient/api/BillingConfig;

    .line 23
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/BillingConfig;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 24
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_96} :catch_97

    return-void

    :catch_97
    move-exception p1

    const-string v3, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    .line 25
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcd;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzam:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 26
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 27
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 28
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzcd;->zzc:I

    .line 26
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcd;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 29
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method
