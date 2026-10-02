.class public final Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lorg/json/JSONObject;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zza:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzb:Lorg/json/JSONObject;

    const-string p1, "products"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_32

    const/4 v1, 0x0

    .line 4
    :goto_1a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2f

    new-instance v3, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;

    const/4 v4, 0x0

    .line 6
    invoke-direct {v3, v2, v4}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzdo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_32
    iput-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzc:Ljava/util/List;

    const-string p1, "originalExternalTransactionId"

    .line 7
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzd:Ljava/lang/String;

    const-string p1, "externalTransactionToken"

    .line 8
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzb:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1
.end method


# virtual methods
.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUri()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "linkUri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalExternalTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzc:Ljava/util/List;

    return-object v0
.end method
