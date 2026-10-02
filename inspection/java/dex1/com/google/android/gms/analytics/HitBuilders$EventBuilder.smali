.class public Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder<",
        "Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    const-string v0, "&t"

    const-string v1, "event"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    return-void
.end method


# virtual methods
.method public final bridge synthetic addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addImpression(Lcom/google/android/gms/analytics/ecommerce/Product;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->addPromotion(Lcom/google/android/gms/analytics/ecommerce/Promotion;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .registers 3

    const-string v0, "&ea"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .registers 3

    const-string v0, "&ec"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setCustomMetric(IF)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .registers 3

    const-string v0, "&el"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setNewSession()Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setNonInteraction(Z)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setNonInteraction(Z)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public final bridge synthetic setPromotionAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setPromotionAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .registers 4

    const-string v0, "&ev"

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method
