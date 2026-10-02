.class public abstract Lcom/enhance/gameservice/IGameTuningService$Stub;
.super Landroid/os/Binder;
.source "IGameTuningService.java"

# interfaces
.implements Lcom/enhance/gameservice/IGameTuningService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/enhance/gameservice/IGameTuningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/enhance/gameservice/IGameTuningService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_boostUp:I = 0x3

.field static final TRANSACTION_getAbstractTemperature:I = 0x4

.field static final TRANSACTION_setFramePerSecond:I = 0x2

.field static final TRANSACTION_setGamePowerSaving:I = 0x5

.field static final TRANSACTION_setPreferredResolution:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.enhance.gameservice.IGameTuningService"

    invoke-virtual {p0, p0, v0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/enhance/gameservice/IGameTuningService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_4
    const-string v0, "com.enhance.gameservice.IGameTuningService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 55
    instance-of v1, v0, Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v1, :cond_13

    .line 56
    check-cast v0, Lcom/enhance/gameservice/IGameTuningService;

    return-object v0

    .line 58
    :cond_13
    new-instance v0, Lcom/enhance/gameservice/IGameTuningService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/enhance/gameservice/IGameTuningService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "com.enhance.gameservice.IGameTuningService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 71
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_66

    const/4 v0, 0x2

    if-eq p1, v0, :cond_57

    const/4 v0, 0x3

    if-eq p1, v0, :cond_48

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_29

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 113
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_31

    move p1, v1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    .line 114
    :goto_32
    invoke-virtual {p0, p1}, Lcom/enhance/gameservice/IGameTuningService$Stub;->setGamePowerSaving(Z)I

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    .line 105
    :cond_3d
    invoke-virtual {p0}, Lcom/enhance/gameservice/IGameTuningService$Stub;->getAbstractTemperature()I

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    .line 97
    :cond_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/enhance/gameservice/IGameTuningService$Stub;->boostUp(I)I

    move-result p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    .line 88
    :cond_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/enhance/gameservice/IGameTuningService$Stub;->setFramePerSecond(I)I

    move-result p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    .line 79
    :cond_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/enhance/gameservice/IGameTuningService$Stub;->setPreferredResolution(I)I

    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_74
    return v1
.end method
