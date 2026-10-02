.class final Lcom/google/android/gms/cloudmessaging/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"


# instance fields
.field private final zza:Landroid/os/Messenger;

.field private final zzb:Lcom/google/android/gms/cloudmessaging/zzd;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.IMessenger"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 3
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzq;->zza:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/google/android/gms/cloudmessaging/zzq;->zzb:Lcom/google/android/gms/cloudmessaging/zzd;

    return-void

    :cond_1a
    const-string v1, "com.google.android.gms.iid.IMessengerCompat"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 7
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzd;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzd;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzq;->zzb:Lcom/google/android/gms/cloudmessaging/zzd;

    iput-object v2, p0, Lcom/google/android/gms/cloudmessaging/zzq;->zza:Landroid/os/Messenger;

    return-void

    .line 4
    :cond_2c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessengerIpcClient"

    const-string v1, "Invalid interface descriptor: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method


# virtual methods
.method final zza(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzq;->zza:Landroid/os/Messenger;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzq;->zzb:Lcom/google/android/gms/cloudmessaging/zzd;

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzd;->zzb(Landroid/os/Message;)V

    return-void

    .line 1
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Both messengers are null"

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
