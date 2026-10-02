.class Llow/moe/PurchaseHandler$BillingStateListener$3;
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


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler$BillingStateListener;)V
    .registers 2

    .line 145
    iput-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener$3;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 148
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener$3;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    iget-object v0, v0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    sget v1, Llow/moe/PurchaseHandler;->BILLINGSTATUS_PROBLEM:I

    invoke-virtual {v0, v1}, Llow/moe/PurchaseHandler;->setBillingStatus(I)V

    return-void
.end method
