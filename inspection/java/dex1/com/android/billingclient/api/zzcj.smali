.class final Lcom/android/billingclient/api/zzcj;
.super Lcom/google/android/gms/internal/play_billing/zzas;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field final zzb:Landroid/os/ResultReceiver;


# direct methods
.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzas;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcj;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/billingclient/api/zzcj;->zzb:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcj;->zzb:Landroid/os/ResultReceiver;

    const-string v1, "BillingClient"

    if-nez v0, :cond_c

    const-string p1, "Unable to send result for in-app messaging"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_14

    .line 2
    invoke-virtual {v0, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_14
    iget-object v4, p0, Lcom/android/billingclient/api/zzcj;->zza:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const-string v5, "KEY_LAUNCH_INTENT"

    .line 4
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-eqz v4, :cond_4a

    if-nez p1, :cond_29

    goto :goto_4a

    .line 6
    :cond_29
    :try_start_29
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 7
    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "in_app_message_result_receiver"

    .line 8
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "IN_APP_MESSAGE_INTENT"

    .line 9
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_29 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p1

    iget-object v0, p0, Lcom/android/billingclient/api/zzcj;->zzb:Landroid/os/ResultReceiver;

    .line 11
    invoke-virtual {v0, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    const-string v0, "Exception caught while launching intent for in-app messaging."

    .line 12
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_4a
    :goto_4a
    invoke-virtual {v0, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    const-string p1, "Unable to launch intent for in-app messaging"

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
