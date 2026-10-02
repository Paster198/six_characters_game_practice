.class public Lorg/cocos2dx/lib/Cocos2dxAccelerometer;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final ALPHA:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "Cocos2dxAccelerometer"


# instance fields
.field final accelerometerValues:[F

.field final compassFieldValues:[F

.field private final mAccelerometer:Landroid/hardware/Sensor;

.field private final mCompass:Landroid/hardware/Sensor;

.field private final mContext:Landroid/content/Context;

.field private final mNaturalOrientation:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 52
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->accelerometerValues:[F

    .line 53
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->compassFieldValues:[F

    .line 61
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v1, 0x2

    .line 65
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mCompass:Landroid/hardware/Sensor;

    .line 67
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/view/Display;->getOrientation()I

    move-result p1

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mNaturalOrientation:I

    return-void
.end method

.method public static native onSensorChanged(FFFJ)V
.end method


# virtual methods
.method public disable()V
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public enableAccel()V
    .registers 4

    .line 80
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public enableCompass()V
    .registers 4

    .line 76
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mCompass:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .line 102
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_45

    .line 104
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    .line 105
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    .line 106
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    .line 109
    iget-object v6, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->accelerometerValues:[F

    aput v0, v6, v1

    .line 110
    aput v4, v6, v3

    .line 111
    aput v5, v6, v2

    .line 118
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_35

    .line 120
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mNaturalOrientation:I

    if-eqz v2, :cond_35

    neg-float v1, v4

    move v4, v0

    move v0, v1

    goto :goto_3f

    :cond_35
    if-ne v1, v3, :cond_3f

    .line 124
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mNaturalOrientation:I

    if-eqz v1, :cond_3f

    neg-float v0, v0

    move v7, v4

    move v4, v0

    move v0, v7

    .line 131
    :cond_3f
    :goto_3f
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v4, v5, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueAccelerometer(FFFJ)V

    return-void

    .line 139
    :cond_45
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_65

    .line 141
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->compassFieldValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 142
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->compassFieldValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 143
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->compassFieldValues:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    aput p1, v0, v2

    :cond_65
    return-void
.end method

.method public setInterval(F)V
    .registers 5

    .line 89
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    const v2, 0x47c35000    # 100000.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p0, v1, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
