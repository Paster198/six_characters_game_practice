.class Llow/moe/PurchaseHandler$3;
.super Ljava/lang/Object;
.source "PurchaseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llow/moe/PurchaseHandler;->beginPurchase(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 238
    sget-object v0, Llow/moe/PurchaseHandler;->sHandler:Llow/moe/PurchaseHandler;

    invoke-virtual {v0}, Llow/moe/PurchaseHandler;->notifyPurchaseFailed()V

    return-void
.end method
