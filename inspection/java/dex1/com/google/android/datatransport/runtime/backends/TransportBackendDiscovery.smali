.class public Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;
.super Landroid/app/Service;
.source "TransportBackendDiscovery.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
