.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.2.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cloudmessaging/zzp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzm;->zza:Lcom/google/android/gms/cloudmessaging/zzp;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    const-string v0, "Received response for unknown request: "

    .line 1
    const-string v1, "MessengerIpcClient"

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    .line 2
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received response to request: "

    .line 3
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MessengerIpcClient"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzm;->zza:Lcom/google/android/gms/cloudmessaging/zzp;

    monitor-enter v1

    :try_start_23
    iget-object v3, v1, Lcom/google/android/gms/cloudmessaging/zzp;->zze:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cloudmessaging/zzs;

    if-nez v3, :cond_40

    const-string p1, "MessengerIpcClient"

    new-instance v3, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v1

    goto :goto_66

    :cond_40
    iget-object v0, v1, Lcom/google/android/gms/cloudmessaging/zzp;->zze:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/cloudmessaging/zzp;->zzf()V

    .line 9
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_68

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "unsupported"

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string p1, "Not supported by GmsCore"

    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzt;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/cloudmessaging/zzt;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {v3, v0}, Lcom/google/android/gms/cloudmessaging/zzs;->zzc(Lcom/google/android/gms/cloudmessaging/zzt;)V

    goto :goto_66

    .line 14
    :cond_63
    invoke-virtual {v3, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zza(Landroid/os/Bundle;)V

    :goto_66
    const/4 p1, 0x1

    return p1

    :catchall_68
    move-exception p1

    .line 9
    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p1
.end method
