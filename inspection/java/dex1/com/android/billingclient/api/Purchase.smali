.class public Lcom/android/billingclient/api/Purchase;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/Purchase$PurchaseState;,
        Lcom/android/billingclient/api/Purchase$PendingPurchaseUpdate;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/Purchase;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/billingclient/api/Purchase;->zzb:Ljava/lang/String;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzk()Lcom/google/android/gms/internal/play_billing/zzcf;

    return-void
.end method

.method private final zza()Ljava/util/ArrayList;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    .line 2
    const-string v2, "productIds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_35

    const/4 v2, 0x0

    .line 4
    :goto_16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 5
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 6
    :cond_26
    const-string v2, "productId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 7
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/android/billingclient/api/Purchase;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/billingclient/api/Purchase;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "obfuscatedAccountId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    const-string v2, "obfuscatedProfileId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    new-instance v2, Lcom/android/billingclient/api/AccountIdentifiers;

    invoke-direct {v2, v1, v0}, Lcom/android/billingclient/api/AccountIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingPurchaseUpdate()Lcom/android/billingclient/api/Purchase$PendingPurchaseUpdate;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "pendingPurchaseUpdate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    new-instance v2, Lcom/android/billingclient/api/Purchase$PendingPurchaseUpdate;

    invoke-direct {v2, v0, v1}, Lcom/android/billingclient/api/Purchase$PendingPurchaseUpdate;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzel;)V

    return-object v2
.end method

.method public getProducts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/Purchase;->zza()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseState()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "purchaseState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    return v2

    :cond_d
    const/4 v0, 0x2

    return v0
.end method

.method public getPurchaseTime()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuantity()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "quantity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getSkus()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/Purchase;->zza()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAcknowledged()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "acknowledged"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoRenewing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "autoRenewing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zzc:Lorg/json/JSONObject;

    const-string v1, "suspended"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/billingclient/api/Purchase;->zza:Ljava/lang/String;

    const-string v1, "Purchase. Json: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
