.class final Lcom/android/billingclient/api/zzck;
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

    iput-object p1, p0, Lcom/android/billingclient/api/zzck;->zza:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

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

    .line 1
    const-string v0, "DEBUG_MESSAGE"

    const/4 v1, 0x6

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 2
    :cond_c
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "BillingClient"

    if-nez v3, :cond_21

    const-string v0, "Response bundle doesn\'t contain a response code"

    .line 3
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 5
    :cond_21
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_36

    const-string v0, "Unable to launch intent for billing program information dialog"

    .line 6
    invoke-static {v3, v0}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 8
    invoke-virtual {v0, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_36
    const-string v3, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    if-nez v3, :cond_4c

    const-string v0, "User has acknowledged the billing program information dialog before."

    .line 10
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_4c
    :try_start_4c
    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zza:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_7a

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_7a

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_7a

    .line 22
    :cond_63
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivityV2;

    .line 14
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "billing_program_information_dialog_result_receiver"

    iget-object v7, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 15
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "billing_program_information_dialog_pending_intent"

    .line 16
    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 13
    :cond_7a
    :goto_7a
    const-string p1, "Activity is null or unavailable, unable to launch intent for billing program information dialog."

    .line 18
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    .line 19
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x5

    .line 20
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "Activity is null or unavailable."

    .line 21
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 22
    invoke-virtual {v5, v3, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_92
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_92} :catch_93

    return-void

    :catch_93
    move-exception p1

    .line 17
    const-string v3, "Runtime error while launching intent for billing program information dialog."

    .line 23
    invoke-static {v4, v3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Landroid/os/Bundle;

    .line 24
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "An internal error occurred."

    .line 26
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbt:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result v0

    const-string v2, "INTERNAL_LOG_ERROR_REASON"

    .line 28
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 30
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzck;->zzb:Landroid/os/ResultReceiver;

    .line 31
    invoke-virtual {p1, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
