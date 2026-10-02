.class final Lcom/android/billingclient/api/zzdx;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

.field final zzb:Lcom/android/billingclient/api/zzdd;

.field final zzc:I


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzdd;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/billingclient/api/zzdx;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    iput p3, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    return-void
.end method

.method private final zza(Lcom/android/billingclient/api/BillingResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzdx;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaR:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    .line 2
    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget v3, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    .line 1
    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-void

    :cond_14
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method


# virtual methods
.method public final onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .registers 12

    if-nez p1, :cond_17

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    .line 2
    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget v3, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    .line 1
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    .line 3
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/zzdx;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 4
    :cond_17
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    iget v2, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    .line 6
    const-string v3, "GetBillingConfigDelegateToBackendCallback"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/android/billingclient/api/zzdm;->zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_6f

    :try_start_2d
    const-string v1, "RESPONSE_DATA"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_47

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzed;->zzb([B)Lcom/google/android/gms/internal/play_billing/zzed;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzed;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingConfig;->forCountryCode(Ljava/lang/String;)Lcom/android/billingclient/api/BillingConfig;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_41} :catch_4f

    iget-object v1, p0, Lcom/android/billingclient/api/zzdx;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    .line 16
    invoke-interface {v1, v0, p1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    .line 7
    :cond_47
    :try_start_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response data is null"

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v0

    move-object p1, v0

    .line 17
    const-string v0, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    .line 11
    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 12
    sget-object v5, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    .line 13
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v7

    iget v8, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    .line 14
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    .line 15
    invoke-direct {p0, v5}, Lcom/android/billingclient/api/zzdx;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 17
    :cond_6f
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzdx;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
