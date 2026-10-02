.class final Lcom/android/billingclient/api/zzcc;
.super Lcom/google/android/gms/internal/play_billing/zzad;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field final zza:Ljava/lang/ref/WeakReference;

.field final zzb:Landroid/os/ResultReceiver;


# direct methods
.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzad;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzcc;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x6

    if-nez p1, :cond_a

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 2
    :cond_a
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "BillingClient"

    if-nez v2, :cond_1f

    const-string v1, "Response bundle doesn\'t contain a response code"

    .line 3
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    .line 4
    invoke-virtual {v1, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 5
    :cond_1f
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_34

    const-string v0, "Unable to launch intent for alternative billing only dialog"

    .line 6
    invoke-static {v2, v0}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    .line 8
    invoke-virtual {v0, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 9
    :cond_34
    const-string v2, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    if-nez v4, :cond_4a

    const-string v0, "User has acknowledged the alternative billing only dialog before."

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_4a
    :try_start_4a
    iget-object p1, p0, Lcom/android/billingclient/api/zzcc;->zza:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 13
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "alternative_billing_only_dialog_result_receiver"

    iget-object v7, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    .line 14
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_66} :catch_67

    return-void

    :catch_67
    move-exception p1

    const-string v2, "Runtime error while launching intent for alternative billing only dialog."

    .line 17
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Landroid/os/Bundle;

    .line 18
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DEBUG_MESSAGE"

    const-string v3, "An internal error occurred."

    .line 20
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzax:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result v1

    const-string v3, "INTERNAL_LOG_ERROR_REASON"

    .line 22
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s: %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 24
    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzcc;->zzb:Landroid/os/ResultReceiver;

    .line 25
    invoke-virtual {p1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
