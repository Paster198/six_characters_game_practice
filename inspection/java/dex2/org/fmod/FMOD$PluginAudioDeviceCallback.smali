.class Lorg/fmod/FMOD$PluginAudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "FMOD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fmod/FMOD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginAudioDeviceCallback"
.end annotation


# static fields
.field private static deviceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/media/AudioDeviceInfo;)V
    .registers 5

    .line 291
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    .line 294
    # invokes: Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;
    invoke-static {p1}, Lorg/fmod/FMOD;->access$100([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    const/4 v0, 0x0

    .line 295
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_24

    .line 297
    sget-object v1, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_24
    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 7

    .line 307
    # invokes: Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;
    invoke-static {p1}, Lorg/fmod/FMOD;->access$100([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 308
    :goto_7
    array-length v3, p1

    if-ge v0, v3, :cond_41

    .line 310
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 312
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    move v1, v4

    .line 316
    :cond_26
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_2f

    move v2, v4

    .line 320
    :cond_2f
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_41
    if-eqz v1, :cond_46

    .line 326
    # invokes: Lorg/fmod/FMOD;->SetInputEnumerationChanged()V
    invoke-static {}, Lorg/fmod/FMOD;->access$200()V

    :cond_46
    if-eqz v2, :cond_4b

    .line 330
    # invokes: Lorg/fmod/FMOD;->SetOutputEnumerationChanged()V
    invoke-static {}, Lorg/fmod/FMOD;->access$300()V

    :cond_4b
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 7

    .line 340
    # invokes: Lorg/fmod/FMOD;->filterDevices([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;
    invoke-static {p1}, Lorg/fmod/FMOD;->access$100([Landroid/media/AudioDeviceInfo;)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 341
    :goto_7
    array-length v3, p1

    if-ge v0, v3, :cond_41

    .line 343
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 345
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    move v1, v4

    .line 349
    :cond_26
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_2f

    move v2, v4

    .line 353
    :cond_2f
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_41
    if-eqz v1, :cond_46

    .line 359
    # invokes: Lorg/fmod/FMOD;->SetInputEnumerationChanged()V
    invoke-static {}, Lorg/fmod/FMOD;->access$200()V

    :cond_46
    if-eqz v2, :cond_4b

    .line 363
    # invokes: Lorg/fmod/FMOD;->SetOutputEnumerationChanged()V
    invoke-static {}, Lorg/fmod/FMOD;->access$300()V

    :cond_4b
    return-void
.end method
