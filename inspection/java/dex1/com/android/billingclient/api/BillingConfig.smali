.class public final Lcom/android/billingclient/api/BillingConfig;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final countryCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "countryCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingConfig;->countryCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/BillingConfig;->countryCode:Ljava/lang/String;

    return-void
.end method

.method static forCountryCode(Ljava/lang/String;)Lcom/android/billingclient/api/BillingConfig;
    .registers 3

    new-instance v0, Lcom/android/billingclient/api/BillingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/billingclient/api/BillingConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingConfig;->countryCode:Ljava/lang/String;

    return-object v0
.end method
