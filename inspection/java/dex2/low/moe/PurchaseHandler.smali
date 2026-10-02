.class public Llow/moe/PurchaseHandler;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llow/moe/PurchaseHandler$BillingStateListener;
    }
.end annotation


# static fields
.field static BILLINGSTATUS_GPLAYNEEDSUPDATE:I = 0x5

.field static BILLINGSTATUS_MISSING:I = 0x2

.field static BILLINGSTATUS_OK:I = 0x0

.field static BILLINGSTATUS_PROBLEM:I = 0x1

.field static sActivity:Landroid/app/Activity;

.field static sHandler:Llow/moe/PurchaseHandler;


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private billingStateListener:Llow/moe/PurchaseHandler$BillingStateListener;

.field lastFetchedProductDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    sput-object p0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    .line 182
    sput-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    if-eqz p2, :cond_12

    .line 185
    new-instance p2, Llow/moe/PurchaseHandler$1;

    invoke-direct {p2, p0}, Llow/moe/PurchaseHandler$1;-><init>(Llow/moe/PurchaseHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 191
    :cond_12
    invoke-virtual {p0}, Llow/moe/PurchaseHandler;->initJVMPurchaseManager()V

    .line 194
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 196
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 198
    new-instance p1, Llow/moe/PurchaseHandler$BillingStateListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Llow/moe/PurchaseHandler$BillingStateListener;-><init>(Llow/moe/PurchaseHandler;Llow/moe/PurchaseHandler$1;)V

    iput-object p1, p0, Llow/moe/PurchaseHandler;->billingStateListener:Llow/moe/PurchaseHandler$BillingStateListener;

    .line 199
    iget-object p2, p0, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic access$000(Llow/moe/PurchaseHandler;)Lcom/android/billingclient/api/BillingClient;
    .registers 1

    .line 29
    iget-object p0, p0, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static beginPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 205
    sget-object v0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object v0, v0, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object v0, v0, Llow/moe/PurchaseHandler;->lastFetchedProductDetailsList:Ljava/util/List;

    if-eqz v0, :cond_69

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    .line 210
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_5e

    .line 216
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p0

    .line 224
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p0

    .line 226
    sget-object p1, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object p1, p1, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    sget-object v0, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, p0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void

    .line 228
    :cond_5e
    sget-object p0, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance p1, Llow/moe/PurchaseHandler$2;

    invoke-direct {p1}, Llow/moe/PurchaseHandler$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 235
    :cond_69
    sget-object p0, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance p1, Llow/moe/PurchaseHandler$3;

    invoke-direct {p1}, Llow/moe/PurchaseHandler$3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static consumeAsync(Ljava/lang/String;I)V
    .registers 3

    .line 291
    sget-object p1, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object p1, p1, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 292
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 293
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p0

    .line 295
    sget-object p1, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object p1, p1, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Llow/moe/PurchaseHandler$5;

    invoke-direct {v0}, Llow/moe/PurchaseHandler$5;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    :cond_24
    return-void
.end method

.method public static queryPurchaseHistory()V
    .registers 3

    .line 251
    sget-object v0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object v0, v0, Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Llow/moe/PurchaseHandler$4;

    invoke-direct {v2}, Llow/moe/PurchaseHandler$4;-><init>()V

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method


# virtual methods
.method handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 4

    .line 317
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 321
    sget-object v0, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance v1, Llow/moe/PurchaseHandler$6;

    invoke-direct {v1, p0, p1}, Llow/moe/PurchaseHandler$6;-><init>(Llow/moe/PurchaseHandler;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 327
    :cond_12
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    .line 333
    sget-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance v0, Llow/moe/PurchaseHandler$7;

    invoke-direct {v0, p0}, Llow/moe/PurchaseHandler$7;-><init>(Llow/moe/PurchaseHandler;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_23
    return-void
.end method

.method native initJVMPurchaseManager()V
.end method

.method native notifyPurchaseCancelled()V
.end method

.method native notifyPurchaseDeferred()V
.end method

.method native notifyPurchaseFailed()V
.end method

.method native notifyPurchaseNeedsComplete()V
.end method

.method native notifyPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method native notifyQueryPurchasesComplete([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method native notifyQueryPurchasesFailed()V
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 345
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 346
    invoke-virtual {p0, p2}, Llow/moe/PurchaseHandler;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_c

    :cond_1c
    return-void

    .line 348
    :cond_1d
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2f

    .line 349
    sget-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance p2, Llow/moe/PurchaseHandler$8;

    invoke-direct {p2, p0}, Llow/moe/PurchaseHandler$8;-><init>(Llow/moe/PurchaseHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 354
    :cond_2f
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_41

    .line 356
    sget-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance p2, Llow/moe/PurchaseHandler$9;

    invoke-direct {p2, p0}, Llow/moe/PurchaseHandler$9;-><init>(Llow/moe/PurchaseHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 363
    :cond_41
    sget-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance p2, Llow/moe/PurchaseHandler$10;

    invoke-direct {p2, p0}, Llow/moe/PurchaseHandler$10;-><init>(Llow/moe/PurchaseHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method native setBillingStatus(I)V
.end method

.method native setIAPPrices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
