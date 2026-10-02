.class Llow/moe/PurchaseHandler$BillingStateListener$1;
.super Ljava/util/TimerTask;
.source "PurchaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler$BillingStateListener;->scheduleReconnectTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llow/moe/PurchaseHandler$BillingStateListener;

.field final synthetic val$reconnectTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Llow/moe/PurchaseHandler$BillingStateListener;Ljava/util/Timer;)V
    .registers 3

    .line 52
    iput-object p1, p0, Llow/moe/PurchaseHandler$BillingStateListener$1;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    iput-object p2, p0, Llow/moe/PurchaseHandler$BillingStateListener$1;->val$reconnectTimer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 55
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener$1;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    iget-object v0, v0, Llow/moe/PurchaseHandler$BillingStateListener;->this$0:Llow/moe/PurchaseHandler;

    # getter for: Llow/moe/PurchaseHandler;->billingClient:Lcom/android/billingclient/api/BillingClient;
    invoke-static {v0}, Llow/moe/PurchaseHandler;->access$000(Llow/moe/PurchaseHandler;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Llow/moe/PurchaseHandler$BillingStateListener$1;->this$1:Llow/moe/PurchaseHandler$BillingStateListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 56
    iget-object v0, p0, Llow/moe/PurchaseHandler$BillingStateListener$1;->val$reconnectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
