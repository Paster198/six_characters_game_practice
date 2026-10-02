.class Llow/moe/PurchaseHandler$4$1;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler$4;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llow/moe/PurchaseHandler$4;

.field final synthetic val$receiptCipheredPayloads:Ljava/util/ArrayList;

.field final synthetic val$receipts:Ljava/util/ArrayList;

.field final synthetic val$skus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler$4;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Llow/moe/PurchaseHandler$4$1;->this$0:Llow/moe/PurchaseHandler$4;

    iput-object p2, p0, Llow/moe/PurchaseHandler$4$1;->val$skus:Ljava/util/ArrayList;

    iput-object p3, p0, Llow/moe/PurchaseHandler$4$1;->val$receipts:Ljava/util/ArrayList;

    iput-object p4, p0, Llow/moe/PurchaseHandler$4$1;->val$receiptCipheredPayloads:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 274
    sget-object v0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    iget-object v1, p0, Llow/moe/PurchaseHandler$4$1;->val$skus:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v3, p0, Llow/moe/PurchaseHandler$4$1;->val$receipts:Ljava/util/ArrayList;

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, Llow/moe/PurchaseHandler$4$1;->val$receiptCipheredPayloads:Ljava/util/ArrayList;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Llow/moe/PurchaseHandler;->notifyQueryPurchasesComplete([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
