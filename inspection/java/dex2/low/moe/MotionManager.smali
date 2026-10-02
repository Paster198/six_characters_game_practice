.class public Llow/moe/MotionManager;
.super Ljava/lang/Object;
.source "MotionManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final NS2S:F = 1.0E-9f

.field private static mMotionManager:Llow/moe/MotionManager;

.field private static mSensor:Landroid/hardware/Sensor;

.field private static mSensorManager:Landroid/hardware/SensorManager;

.field private static mWindowManager:Landroid/view/WindowManager;

.field private static timestamp:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sput-object p0, Llow/moe/MotionManager;->mMotionManager:Llow/moe/MotionManager;

    .line 26
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Llow/moe/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    sput-object p1, Llow/moe/MotionManager;->mWindowManager:Landroid/view/WindowManager;

    .line 28
    sget-object p1, Llow/moe/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_27

    const/4 v0, 0x4

    .line 29
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    sput-object p1, Llow/moe/MotionManager;->mSensor:Landroid/hardware/Sensor;

    .line 30
    invoke-virtual {p0}, Llow/moe/MotionManager;->initComplete()V

    :cond_27
    return-void
.end method

.method public static start()V
    .registers 4

    .line 34
    sget-object v0, Llow/moe/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    sget-object v1, Llow/moe/MotionManager;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_15

    sget-object v2, Llow/moe/MotionManager;->mMotionManager:Llow/moe/MotionManager;

    if-eqz v2, :cond_15

    sget-object v3, Llow/moe/MotionManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v3, :cond_15

    const/16 v3, 0x411a

    .line 35
    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_15
    return-void
.end method

.method public static stop()V
    .registers 3

    .line 40
    sget-object v0, Llow/moe/MotionManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    sget-object v1, Llow/moe/MotionManager;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_13

    sget-object v1, Llow/moe/MotionManager;->mMotionManager:Llow/moe/MotionManager;

    if-eqz v1, :cond_13

    sget-object v2, Llow/moe/MotionManager;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_13

    .line 41
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_13
    return-void
.end method


# virtual methods
.method native initComplete()V
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 24

    move-object/from16 v0, p1

    .line 49
    sget v1, Llow/moe/MotionManager;->timestamp:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7d

    .line 51
    sget-object v1, Llow/moe/MotionManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_7c

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    goto :goto_7c

    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1f

    move v1, v4

    goto :goto_20

    :cond_1f
    move v1, v3

    .line 59
    :goto_20
    iget-wide v5, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v5, v5

    sget v6, Llow/moe/MotionManager;->timestamp:F

    sub-float/2addr v5, v6

    const v6, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v6

    .line 61
    iget-object v6, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v6, v3

    .line 62
    iget-object v6, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v6, v4

    .line 63
    iget-object v6, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v6, v2

    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 66
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x40b4000000000000L    # 5120.0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_52

    float-to-double v8, v3

    div-double/2addr v8, v6

    double-to-float v3, v8

    float-to-double v8, v4

    div-double/2addr v8, v6

    double-to-float v4, v8

    float-to-double v8, v2

    div-double/2addr v8, v6

    double-to-float v2, v8

    :cond_52
    float-to-double v8, v5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    float-to-double v7, v3

    mul-double/2addr v7, v5

    float-to-double v3, v4

    mul-double/2addr v3, v5

    float-to-double v9, v2

    mul-double v16, v5, v9

    .line 86
    iget-wide v5, v0, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v9, 0xf4240

    div-long/2addr v5, v9

    if-eqz v1, :cond_6b

    neg-double v7, v7

    :cond_6b
    move-wide v12, v7

    if-eqz v1, :cond_6f

    neg-double v3, v3

    :cond_6f
    move-wide v14, v3

    const-wide/16 v1, 0x3e8

    .line 87
    div-long v18, v5, v1

    rem-long v20, v5, v1

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v21}, Llow/moe/MotionManager;->reportSensorChange(DDDJJ)V

    goto :goto_7d

    :cond_7c
    :goto_7c
    return-void

    .line 89
    :cond_7d
    :goto_7d
    iget-wide v0, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v0

    sput v0, Llow/moe/MotionManager;->timestamp:F

    return-void
.end method

.method native reportSensorChange(DDDJJ)V
.end method
