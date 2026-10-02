.class Llow/moe/PurchaseHandler$8;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llow/moe/PurchaseHandler;


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler;)V
    .registers 2

    .line 349
    iput-object p1, p0, Llow/moe/PurchaseHandler$8;->this$0:Llow/moe/PurchaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 352
    iget-object v0, p0, Llow/moe/PurchaseHandler$8;->this$0:Llow/moe/PurchaseHandler;

    invoke-virtual {v0}, Llow/moe/PurchaseHandler;->notifyPurchaseCancelled()V

    return-void
.end method
