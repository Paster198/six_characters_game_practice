.class Llow/moe/PurchaseHandler$5;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler;->consumeAsync(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 4

    .line 305
    sget-object p2, Llow/moe/PurchaseHandler;->sActivity:Landroid/app/Activity;

    new-instance v0, Llow/moe/PurchaseHandler$5$1;

    invoke-direct {v0, p0, p1}, Llow/moe/PurchaseHandler$5$1;-><init>(Llow/moe/PurchaseHandler$5;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
