.class Lorg/fmod/FMOD$PluginBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMOD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fmod/FMOD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginBroadcastReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 276
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 281
    # invokes: Lorg/fmod/FMOD;->OutputAAudioHeadphonesChanged()V
    invoke-static {}, Lorg/fmod/FMOD;->access$000()V

    return-void
.end method
