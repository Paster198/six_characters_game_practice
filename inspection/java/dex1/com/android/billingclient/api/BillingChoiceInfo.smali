.class public final Lcom/android/billingclient/api/BillingChoiceInfo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final playBillingChoiceImageUrl:Ljava/lang/String;

.field private final playBillingLoyaltyInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingChoiceImageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingLoyaltyInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlayBillingChoiceImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingChoiceImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBillingLoyaltyInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingChoiceInfo;->playBillingLoyaltyInfo:Ljava/lang/String;

    return-object v0
.end method
