.class Llow/moe/PurchaseHandler$BillingStateListener$2;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler$BillingStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llow/moe/PurchaseHandler$BillingStateListener;

.field final synthetic val$finalMemories1000Price:Ljava/lang/String;

.field final synthetic val$finalMemories100Price:Ljava/lang/String;

.field final synthetic val$finalMemories500Price:Ljava/lang/String;


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler$BillingStateListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    iput-object p2, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->val$finalMemories1000Price:Ljava/lang/String;

    iput-object p3, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->val$finalMemories500Price:Ljava/lang/String;

    iput-object p4, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->val$finalMemories100Price:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 140
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    iget-object v0, v0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    iget-object v1, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->val$finalMemories1000Price:Ljava/lang/String;

    iget-object v2, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->val$finalMemories500Price:Ljava/lang/String;

    iget-object v3, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->val$finalMemories100Price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Llow/moe/PurchaseHandler;->setIAPPrices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener$2;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    iget-object v0, v0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    sget v1, Llow/moe/PurchaseHandler;->BILLINGSTATUS_OK:I

    invoke-virtual {v0, v1}, Llow/moe/PurchaseHandler;->setBillingStatus(I)V

    return-void
.end method
