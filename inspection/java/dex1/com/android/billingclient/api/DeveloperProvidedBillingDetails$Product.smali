.class public Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Product"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzdo;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "productId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    const-string p2, "productType"

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    const-string p2, "offerToken"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne p2, v0, :cond_21

    const/4 p1, 0x0

    :cond_21
    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    return v2
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{id: %s, type: %s, offer token: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
