.class public final synthetic Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Llow/moe/PurchaseHandler$BillingStateListener;


# direct methods
.method public synthetic constructor <init>(Llow/moe/PurchaseHandler$BillingStateListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda1;->f$0:Llow/moe/PurchaseHandler$BillingStateListener;

    return-void
.end method


# virtual methods
.method public final onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 4

    .line 0
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda1;->f$0:Llow/moe/PurchaseHandler$BillingStateListener;

    invoke-virtual {v0, p1, p2}, Llow/moe/PurchaseHandler$BillingStateListener;->lambda$onBillingSetupFinished$1$low-moe-PurchaseHandler$BillingStateListener(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method
