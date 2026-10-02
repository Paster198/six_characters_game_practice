.class Llow/moe/PurchaseHandler$4$2;
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


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler$4;)V
    .registers 2

    .line 279
    iput-object p1, p0, Llow/moe/PurchaseHandler$4$2;->this$0:Llow/moe/PurchaseHandler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 282
    sget-object v0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    invoke-virtual {v0}, Llow/moe/PurchaseHandler;->notifyQueryPurchasesFailed()V

    return-void
.end method
