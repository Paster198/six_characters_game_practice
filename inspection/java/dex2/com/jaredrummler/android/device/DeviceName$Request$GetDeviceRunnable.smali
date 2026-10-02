.class final Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;
.super Ljava/lang/Object;
.source "DeviceName.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/android/device/DeviceName$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetDeviceRunnable"
.end annotation


# instance fields
.field final callback:Lcom/jaredrummler/android/device/DeviceName$Callback;

.field deviceInfo:Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

.field error:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/jaredrummler/android/device/DeviceName$Request;


# direct methods
.method public constructor <init>(Lcom/jaredrummler/android/device/DeviceName$Request;Lcom/jaredrummler/android/device/DeviceName$Callback;)V
    .registers 3

    .line 2028
    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->this$0:Lcom/jaredrummler/android/device/DeviceName$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2029
    iput-object p2, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->callback:Lcom/jaredrummler/android/device/DeviceName$Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2034
    :try_start_0
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->this$0:Lcom/jaredrummler/android/device/DeviceName$Request;

    iget-object v0, v0, Lcom/jaredrummler/android/device/DeviceName$Request;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->this$0:Lcom/jaredrummler/android/device/DeviceName$Request;

    iget-object v1, v1, Lcom/jaredrummler/android/device/DeviceName$Request;->codename:Ljava/lang/String;

    iget-object v2, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->this$0:Lcom/jaredrummler/android/device/DeviceName$Request;

    iget-object v2, v2, Lcom/jaredrummler/android/device/DeviceName$Request;->model:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->deviceInfo:Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_16

    :catch_13
    move-exception v0

    .line 2036
    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->error:Ljava/lang/Exception;

    .line 2038
    :goto_16
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->this$0:Lcom/jaredrummler/android/device/DeviceName$Request;

    iget-object v0, v0, Lcom/jaredrummler/android/device/DeviceName$Request;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;

    invoke-direct {v1, p0}, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;-><init>(Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
