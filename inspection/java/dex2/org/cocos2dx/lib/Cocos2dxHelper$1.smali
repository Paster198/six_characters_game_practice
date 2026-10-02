.class Lorg/cocos2dx/lib/Cocos2dxHelper$1;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 185
    invoke-static {p2}, Lcom/enhance/gameservice/IGameTuningService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/enhance/gameservice/IGameTuningService;

    move-result-object p1

    # setter for: Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$002(Lcom/enhance/gameservice/IGameTuningService;)Lcom/enhance/gameservice/IGameTuningService;

    const/4 p1, 0x7

    .line 186
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->fastLoading(I)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 190
    # getter for: Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$200()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    # getter for: Lorg/cocos2dx/lib/Cocos2dxHelper;->connection:Landroid/content/ServiceConnection;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$100()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
