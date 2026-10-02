.class public Lcom/android/billingclient/api/ProductDetails$PricingPhases;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PricingPhases"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_22

    const/4 v1, 0x0

    .line 2
    :goto_b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1f

    new-instance v3, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 4
    invoke-direct {v3, v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPricingPhaseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails$PricingPhase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->zza:Ljava/util/List;

    return-object v0
.end method
