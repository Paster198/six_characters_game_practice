.class final Lcom/android/billingclient/api/zzbr;
.super Landroid/os/ResultReceiver;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;

.field final synthetic zzb:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V
    .registers 4

    .line 1
    iput-object p3, p0, Lcom/android/billingclient/api/zzbr;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbr;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    if-eqz p1, :cond_49

    if-nez p2, :cond_18

    iget-object p1, p0, Lcom/android/billingclient/api/zzbr;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    iget-object p2, p0, Lcom/android/billingclient/api/zzbr;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;

    .line 2
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzau:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzao(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    :cond_18
    const-string p1, "BillingClient"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    const-string p1, "INTERNAL_LOG_ERROR_REASON"

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/android/billingclient/api/zzbr;->zzb:Lcom/android/billingclient/api/BillingClientImpl;

    if-eqz p1, :cond_30

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object p1

    goto :goto_32

    .line 12
    :cond_30
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    :goto_32
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const-string v3, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 7
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    sget v3, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    const/16 v4, 0x10

    .line 9
    invoke-static {p1, v4, v2, p2, v3}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaq(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjl;)V

    :cond_49
    iget-object p1, p0, Lcom/android/billingclient/api/zzbr;->zza:Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;

    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    .line 12
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;->onAlternativeBillingOnlyInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
