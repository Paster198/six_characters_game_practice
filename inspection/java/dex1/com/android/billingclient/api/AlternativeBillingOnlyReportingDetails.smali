.class public final Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final externalTransactionToken:Ljava/lang/String;


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

    const-string p1, "externalTransactionToken"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;->externalTransactionToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;->externalTransactionToken:Ljava/lang/String;

    return-object v0
.end method
