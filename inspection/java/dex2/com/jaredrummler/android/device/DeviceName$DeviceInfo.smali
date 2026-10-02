.class public final Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaredrummler/android/device/DeviceName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation


# instance fields
.field public final codename:Ljava/lang/String;

.field public final manufacturer:Ljava/lang/String;

.field public final marketName:Ljava/lang/String;

.field public final model:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 2085
    iput-object p2, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->marketName:Ljava/lang/String;

    .line 2086
    iput-object p3, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->codename:Ljava/lang/String;

    .line 2087
    iput-object p4, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2091
    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 2092
    const-string v0, "market_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->marketName:Ljava/lang/String;

    .line 2093
    const-string v0, "codename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->codename:Ljava/lang/String;

    .line 2094
    const-string v0, "model"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->model:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/jaredrummler/android/device/DeviceName$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2069
    invoke-direct {p0, p1}, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 2101
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->marketName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2102
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->marketName:Ljava/lang/String;

    return-object v0

    .line 2104
    :cond_b
    iget-object v0, p0, Lcom/jaredrummler/android/device/DeviceName$DeviceInfo;->model:Ljava/lang/String;

    # invokes: Lcom/jaredrummler/android/device/DeviceName;->capitalize(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/jaredrummler/android/device/DeviceName;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
