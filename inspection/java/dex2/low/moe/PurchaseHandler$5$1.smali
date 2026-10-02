.class Llow/moe/PurchaseHandler$5$1;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler$5;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llow/moe/PurchaseHandler$5;

.field final synthetic val$billingResult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler$5;Lcom/android/billingclient/api/BillingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Llow/moe/PurchaseHandler$5$1;->this$0:Llow/moe/PurchaseHandler$5;

    iput-object p2, p0, Llow/moe/PurchaseHandler$5$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android_billing_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Llow/moe/PurchaseHandler$5$1;->val$billingResult:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llow/moe/AppActivity;->logToFirebase(Ljava/lang/String;)V

    return-void
.end method
