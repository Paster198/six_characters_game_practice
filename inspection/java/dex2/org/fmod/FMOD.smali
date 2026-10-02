.class public Lorg/fmod/FMOD;
.super Ljava/lang/Object;
.source "FMOD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fmod/FMOD$PluginBroadcastReceiver;,
        Lorg/fmod/FMOD$PluginAudioDeviceCallback;
    }
.end annotation


# static fields
.field private static final TYPE_REMOTE_SUBMIX:I = 0x19

.field private static gContext:Landroid/content/Context;

.field private static gPluginAudioDeviceCallback:Lorg/fmod/FMOD$PluginAudioDeviceCallback;

.field private static gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Lorg/fmod/FMOD$PluginBroadcastReceiver;

    invoke-direct {v0}, Lorg/fmod/FMOD$PluginBroadcastReceiver;-><init>()V

    sput-object v0, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native OutputAAudioHeadphonesChanged()V
.end method

.method private static native SetInputEnumerationChanged()V
.end method

.method private static native SetOutputEnumerationChanged()V
.end method

.method static synthetic access$000()V
    .registers 0

    .line 24
    invoke-static {}, Lorg/fmod/FMOD;->OutputAAudioHeadphonesChanged()V

    return-void
.end method

.method static synthetic access$100([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;
    .registers 1

    .line 24
    invoke-static {p0}, Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 24
    invoke-static {}, Lorg/fmod/FMOD;->SetInputEnumerationChanged()V

    return-void
.end method

.method static synthetic access$300()V
    .registers 0

    .line 24
    invoke-static {}, Lorg/fmod/FMOD;->SetOutputEnumerationChanged()V

    return-void
.end method

.method public static checkInit()Z
    .registers 1

    .line 76
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static close()V
    .registers 2

    .line 59
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 61
    sget-object v1, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 65
    sget-object v1, Lorg/fmod/FMOD;->gPluginAudioDeviceCallback:Lorg/fmod/FMOD$PluginAudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_18
    const/4 v0, 0x0

    .line 68
    sput-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    return-void
.end method

.method public static fileDescriptorFromUri(Ljava/lang/String;)I
    .registers 4

    .line 254
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_1a

    .line 256
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 260
    :try_start_9
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_15} :catch_1a

    .line 266
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    return p0

    :catch_1a
    :cond_1a
    return v1
.end method

.method private static filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;
    .registers 5

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1d

    const/4 v1, 0x0

    .line 189
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 191
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1a

    .line 193
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 197
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/media/AudioDeviceInfo;

    .line 199
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .registers 1

    .line 81
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .registers 4

    .line 204
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    .line 206
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 207
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 208
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_31

    .line 210
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    if-ne v2, p0, :cond_2e

    .line 212
    aget-object p0, v0, v1

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 216
    :cond_31
    const-string p0, ""

    return-object p0
.end method

.method public static getDeviceType(I)I
    .registers 5

    .line 221
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 223
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 224
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    move v2, v1

    .line 225
    :goto_19
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 227
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, p0, :cond_2b

    .line 229
    aget-object p0, v0, v2

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    return p0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2e
    return v1
.end method

.method public static getDevices(I)[I
    .registers 4

    .line 238
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 240
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 241
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    invoke-static {p0}, Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 242
    array-length v0, p0

    new-array v0, v0, [I

    .line 243
    :goto_1a
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 245
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_28
    return-object v0

    .line 249
    :cond_29
    new-array p0, v1, [I

    return-object p0
.end method

.method public static getOutputBlockSize()I
    .registers 2

    .line 157
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 159
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 161
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static getOutputSampleRate()I
    .registers 2

    .line 141
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_1b

    .line 143
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 145
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4

    .line 34
    sput-object p0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz p0, :cond_3b

    .line 37
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1a

    .line 41
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    sget-object v1, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_21

    .line 45
    :cond_1a
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    sget-object v1, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    :goto_21
    sget-object p0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 51
    new-instance v0, Lorg/fmod/FMOD$PluginAudioDeviceCallback;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fmod/FMOD$PluginAudioDeviceCallback;-><init>([Landroid/media/AudioDeviceInfo;)V

    sput-object v0, Lorg/fmod/FMOD;->gPluginAudioDeviceCallback:Lorg/fmod/FMOD$PluginAudioDeviceCallback;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_3b
    return-void
.end method

.method public static isBluetoothOn()Z
    .registers 3

    .line 173
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 175
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 177
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return v1

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0

    :cond_1d
    return v1
.end method

.method public static lowLatencyFlag()Z
    .registers 2

    .line 116
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 118
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static proAudioFlag()Z
    .registers 2

    .line 125
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    .line 127
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.pro"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static supportsAAudio()Z
    .registers 2

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static supportsLowLatency()Z
    .registers 9

    .line 103
    invoke-static {}, Lorg/fmod/FMOD;->getOutputBlockSize()I

    move-result v0

    .line 104
    invoke-static {}, Lorg/fmod/FMOD;->lowLatencyFlag()Z

    move-result v1

    .line 105
    invoke-static {}, Lorg/fmod/FMOD;->proAudioFlag()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_16

    const/16 v5, 0x400

    if-gt v0, v5, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v4

    .line 107
    :goto_17
    invoke-static {}, Lorg/fmod/FMOD;->isBluetoothOn()Z

    move-result v6

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FMOD::supportsLowLatency                 : Low latency = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pro Audio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", Bluetooth On = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", Acceptable Block Size = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fmod"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_64

    if-eqz v1, :cond_64

    if-nez v6, :cond_64

    return v3

    :cond_64
    return v4
.end method

.method public static supportsSpatial()Z
    .registers 7

    .line 86
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v0, v2, :cond_5a

    .line 88
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 89
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v1

    .line 91
    :goto_23
    invoke-virtual {v0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result v4

    .line 92
    invoke-virtual {v0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result v0

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FMOD::supportsSpatial                    : Supports Spatial = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Spatial available = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Spatial enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fmod"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5a

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_5a

    return v3

    :cond_5a
    return v1
.end method
