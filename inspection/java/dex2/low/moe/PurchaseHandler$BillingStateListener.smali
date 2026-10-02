.class Llow/moe/PurchaseHandler$BillingStateListener;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llow/moe/PurchaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillingStateListener"
.end annotation


# instance fields
.field private reconnectBackOffDelay:J

.field final synthetic this$0:Llow/moe/PurchaseHandler;


# direct methods
.method private constructor <init>(Llow/moe/PurchaseHandler;)V
    .registers 4

    .line 43
    iput-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 45
    iput-wide v0, p0, Llow/moe/PurchaseHandler$BillingStateListener;->reconnectBackOffDelay:J

    return-void
.end method

.method synthetic constructor <init>(Llow/moe/PurchaseHandler;Llow/moe/PurchaseHandler$1;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Llow/moe/PurchaseHandler$BillingStateListener;-><init>(Llow/moe/PurchaseHandler;)V

    return-void
.end method

.method static synthetic lambda$onBillingSetupFinished$0(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .registers 2

    if-eqz p1, :cond_e

    .line 76
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingConfig;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    .line 77
    sget-object p1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    if-eqz p1, :cond_e

    .line 78
    sget-object p1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    iput-object p0, p1, Llow/moe/AppActivity;->queriedCountryCode:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method private scheduleReconnectTimer()V
    .registers 5

    .line 50
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 52
    :try_start_5
    new-instance v1, Llow/moe/PurchaseHandler$BillingStateListener$1;

    invoke-direct {v1, p0, v0}, Llow/moe/PurchaseHandler$BillingStateListener$1;-><init>(Llow/moe/PurchaseHandler$BillingStateListener;Ljava/util/Timer;)V

    iget-wide v2, p0, Llow/moe/PurchaseHandler$BillingStateListener;->reconnectBackOffDelay:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 59
    iget-wide v0, p0, Llow/moe/PurchaseHandler$BillingStateListener;->reconnectBackOffDelay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Llow/moe/PurchaseHandler$BillingStateListener;->reconnectBackOffDelay:J
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method


# virtual methods
.method synthetic lambda$onBillingSetupFinished$1$low-moe-PurchaseHandler$BillingStateListener(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 8

    .line 111
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_74

    .line 118
    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    .line 119
    iget-object p2, p0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    iput-object p1, p2, Llow/moe/PurchaseHandler;->lastFetchedProductDetailsList:Ljava/util/List;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, ""

    move-object v0, p2

    move-object v1, v0

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    .line 122
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    .line 125
    const-string v4, "arcaea_memory100"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object p2, v2

    goto :goto_16

    .line 127
    :cond_38
    const-string v4, "arcaea_memory500"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move-object v0, v2

    goto :goto_16

    .line 129
    :cond_42
    const-string v4, "arcaea_memory1000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v1, v2

    goto :goto_16

    .line 133
    :cond_4c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_69

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_69

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_69

    .line 137
    sget-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance v2, Llow/moe/PurchaseHandler$BillingStateListener$2;

    invoke-direct {v2, p0, v1, v0, p2}, Llow/moe/PurchaseHandler$BillingStateListener$2;-><init>(Llow/moe/PurchaseHandler$BillingStateListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 145
    :cond_69
    sget-object p1, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance p2, Llow/moe/PurchaseHandler$BillingStateListener$3;

    invoke-direct {p2, p0}, Llow/moe/PurchaseHandler$BillingStateListener$3;-><init>(Llow/moe/PurchaseHandler$BillingStateListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 155
    :cond_74
    sget-object p2, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance v0, Llow/moe/PurchaseHandler$BillingStateListener$4;

    invoke-direct {v0, p0, p1}, Llow/moe/PurchaseHandler$BillingStateListener$4;-><init>(Llow/moe/PurchaseHandler$BillingStateListener;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .registers 1

    .line 173
    invoke-direct {p0}, Llow/moe/PurchaseHandler$BillingStateListener;->scheduleReconnectTimer()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 5

    .line 70
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_94

    const-wide/16 v0, 0x1f4

    .line 72
    iput-wide v0, p0, Llow/moe/PurchaseHandler$BillingStateListener;->reconnectBackOffDelay:J

    .line 74
    iget-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    # getter for: Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {p1}, Llow/moe/PurchaseHandler;->access$000(Llow/moe/PurchaseHandler;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/GetBillingConfigParams;->newBuilder()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;->build()Lcom/android/billingclient/api/GetBillingConfigParams;

    move-result-object v0

    new-instance v1, Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const-string v0, "arcaea_memory100"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "arcaea_memory500"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v0, "arcaea_memory1000"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "inapp"

    .line 94
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 99
    :cond_5f
    iget-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    # getter for: Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {p1}, Llow/moe/PurchaseHandler;->access$000(Llow/moe/PurchaseHandler;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    const-string v1, "fff"

    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_79

    .line 104
    iget-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    sget v0, Llow/moe/PurchaseHandler;->BILLINGSTATUS_GPLAYNEEDSUPDATE:I

    invoke-virtual {p1, v0}, Llow/moe/PurchaseHandler;->setBillingStatus(I)V

    return-void

    .line 106
    :cond_79
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 110
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    # getter for: Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {v0}, Llow/moe/PurchaseHandler;->access$000(Llow/moe/PurchaseHandler;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Llow/moe/PurchaseHandler$BillingStateListener$$ExternalSyntheticLambda1;-><init>(Llow/moe/PurchaseHandler$BillingStateListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void

    .line 167
    :cond_94
    invoke-direct {p0}, Llow/moe/PurchaseHandler$BillingStateListener;->scheduleReconnectTimer()V

    return-void
.end method
