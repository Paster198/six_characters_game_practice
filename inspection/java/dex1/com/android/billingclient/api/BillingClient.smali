.class public abstract Lcom/android/billingclient/api/BillingClient;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingClient$Builder;,
        Lcom/android/billingclient/api/BillingClient$BillingProgram;,
        Lcom/android/billingclient/api/BillingClient$ConnectionState;,
        Lcom/android/billingclient/api/BillingClient$OnPurchasesUpdatedSubResponseCode;,
        Lcom/android/billingclient/api/BillingClient$BillingResponseCode;,
        Lcom/android/billingclient/api/BillingClient$FeatureType;,
        Lcom/android/billingclient/api/BillingClient$ProductType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 3

    new-instance v0, Lcom/android/billingclient/api/BillingClient$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/zzaa;)V

    return-object v0
.end method


# virtual methods
.method public abstract acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
.end method

.method public abstract consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
.end method

.method public abstract createAlternativeBillingOnlyReportingDetailsAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
.end method

.method public abstract createBillingProgramReportingDetailsAsync(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;)V
.end method

.method public abstract createExternalOfferReportingDetailsAsync(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract endConnection()V
.end method

.method public abstract getBillingChoiceInfoAsync(Lcom/android/billingclient/api/GetBillingChoiceInfoParams;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;)V
.end method

.method public abstract getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract isAlternativeBillingOnlyAvailableAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
.end method

.method public abstract isBillingProgramAvailableAsync(ILcom/android/billingclient/api/BillingProgramAvailabilityListener;)V
.end method

.method public abstract isExternalOfferAvailableAsync(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract isReady()Z
.end method

.method public abstract launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract launchExternalLink(Landroid/app/Activity;Lcom/android/billingclient/api/LaunchExternalLinkParams;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;)V
.end method

.method public abstract queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
.end method

.method public abstract queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
.end method

.method public abstract showAlternativeBillingOnlyInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract showBillingProgramInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V
.end method

.method public abstract showExternalOfferInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showInAppMessages(Landroid/app/Activity;Lcom/android/billingclient/api/InAppMessageParams;Lcom/android/billingclient/api/InAppMessageResponseListener;)Lcom/android/billingclient/api/BillingResult;
.end method

.method public abstract startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
.end method
