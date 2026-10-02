.class final Lcom/android/billingclient/api/zzca;
.super Lcom/google/android/gms/internal/play_billing/zzw;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

.field final zzb:Lcom/android/billingclient/api/zzdd;

.field final zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzw;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzca;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzca;->zzb:Lcom/android/billingclient/api/zzdd;

    iput p3, p0, Lcom/android/billingclient/api/zzca;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xf

    const/4 v1, 0x0

    if-nez p1, :cond_1e

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzas:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 2
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 3
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzca;->zzc:I

    .line 1
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    .line 4
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void

    .line 5
    :cond_1e
    const-string v2, "BillingClient"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    if-eqz v3, :cond_4e

    const-string p1, "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: "

    .line 8
    invoke-static {v3, p1}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 10
    sget v3, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 11
    invoke-static {v2, v0, v4, v1, v3}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzca;->zzc:I

    .line 12
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    .line 13
    invoke-interface {p1, v4, v1}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void

    :cond_4e
    const-string v3, "CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS"

    .line 14
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_54
    new-instance v3, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;

    .line 15
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;-><init>(Ljava/lang/String;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_59} :catch_5f

    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    .line 21
    invoke-interface {p1, v4, v3}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void

    :catch_5f
    move-exception p1

    const-string v3, "Error when parsing invalid alternative billing only reporting details. \n Exception: "

    .line 16
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzat:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 17
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 18
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object v0

    iget v2, p0, Lcom/android/billingclient/api/zzca;->zzc:I

    .line 19
    invoke-interface {p1, v0, v2}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzca;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;

    .line 20
    invoke-interface {p1, v3, v1}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void
.end method
