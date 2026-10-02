.class Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;
.super Ljava/lang/Object;
.source "DeviceName.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;


# direct methods
.method constructor <init>(Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;)V
    .registers 2

    .line 2038
    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;->this$1:Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2041
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;->this$1:Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;

    iget-object v0, v0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->callback:Lcom/jaredrummler/android/device/DeviceName$Callback;

    iget-object v1, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;->this$1:Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;

    iget-object v1, v1, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->deviceInfo:Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;

    iget-object v2, p0, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable$1;->this$1:Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;

    iget-object v2, v2, Lcom/jaredrummler/android/device/DeviceName$Request$GetDeviceRunnable;->error:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/jaredrummler/android/device/DeviceName$Callback;->onFinished(Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;Ljava/lang/Exception;)V

    return-void
.end method
