.class final Lcom/android/billingclient/api/zzdm;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method public static zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;
    .registers 12

    .line 1
    const-string v0, "BILLING_RESULT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2
    :try_start_8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_49

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zzc([B)Lcom/google/android/gms/internal/play_billing/zzeq;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzeq;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 7
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_34

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    invoke-static {p0, v0, p3, p2, p4}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-object v0

    :cond_34
    const-string v1, "RESPONSE_DATA"

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_48

    const-string p0, "delegateToBackendAsync returned a bundle with neither an error nor response data"

    .line 10
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaW:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 11
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p0, v0, p3, p2, p4}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    :cond_48
    return-object v0

    .line 2
    :cond_49
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Billing result is null"

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    move-object p0, v0

    .line 16
    const-string v0, "Failed parsing BillingResult."

    .line 12
    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaV:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 13
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 14
    invoke-static {p0}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    move v4, p2

    move-object v3, p3

    move v5, p4

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    return-object v2

    :cond_67
    move v4, p2

    move-object v3, p3

    move v5, p4

    .line 11
    const-string p0, "delegateToBackendAsync does not contain a billing result in the response"

    .line 15
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaU:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 16
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-object p1
.end method
