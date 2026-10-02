.class Llow/moe/PurchaseHandler$1;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler;-><init>(Landroid/app/Activity;Z)V
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

    .line 185
    iput-object p1, p0, Llow/moe/PurchaseHandler$1;->this$0:Llow/moe/PurchaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 188
    iget-object v0, p0, Llow/moe/PurchaseHandler$1;->this$0:Llow/moe/PurchaseHandler;

    sget v1, Llow/moe/PurchaseHandler;->BILLINGSTATUS_MISSING:I

    invoke-virtual {v0, v1}, Llow/moe/PurchaseHandler;->setBillingStatus(I)V

    return-void
.end method
