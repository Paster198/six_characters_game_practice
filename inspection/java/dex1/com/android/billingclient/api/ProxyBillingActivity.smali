.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroid/app/Activity;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field static final EXTERNAL_BROADCAST_PERMISSION:Ljava/lang/String; = "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

.field private static final KEY_ACTIVITY_CODE:Ljava/lang/String; = "activity_code"

.field static final KEY_IN_APP_MESSAGE_RESULT_RECEIVER:Ljava/lang/String; = "in_app_message_result_receiver"

.field private static final KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED:Ljava/lang/String; = "send_cancelled_broadcast_if_finished"

.field private static final REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW:I = 0x6e

.field private static final REQUEST_CODE_IN_APP_MESSAGE_FLOW:I = 0x65

.field private static final REQUEST_CODE_LAUNCH_ACTIVITY:I = 0x64

.field static final RESULT_CODE_PLAY_CANCELED_WITH_ON_CREATE_RUNTIME_EXCEPTION:I = 0x5

.field static final RESULT_CODE_PLAY_CANCELLED:I = 0x3

.field static final RESULT_CODE_PLAY_CANCELLED_WITHOUT_COMPLETE_ACTION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ProxyBillingActivity"


# instance fields
.field private activityCode:I

.field private billingClientTransactionId:J

.field billingLogger:Lcom/android/billingclient/api/zzdd;

.field private inAppMessageResultReceiver:Landroid/os/ResultReceiver;

.field private isFlowFromFirstPartyClient:Z

.field proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

.field private sendCancelledBroadcastIfFinished:Z

.field private wasServiceAutoReconnected:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getLoggingErrorReason(ILandroid/content/Intent;)Lcom/google/android/gms/internal/play_billing/zzjs;
    .registers 3

    if-nez p2, :cond_1c

    const/4 p2, -0x1

    if-eq p1, p2, :cond_19

    if-eqz p1, :cond_16

    const/4 p2, 0x3

    if-eq p1, p2, :cond_13

    const/4 p2, 0x4

    if-eq p1, p2, :cond_10

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbm:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_10
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbl:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbk:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_16
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbj:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbi:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_25

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzv:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_25
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2b

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbI:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1

    :cond_2b
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    return-object p1
.end method

.method private isInAppMessageFlow(Landroid/os/Bundle;)Z
    .registers 3

    if-nez p1, :cond_15

    .line 1
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "IN_APP_MESSAGE_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_15
    const-string v0, "in_app_message_result_receiver"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isKnownError(ILandroid/content/Intent;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/ProxyBillingActivity;->getLoggingErrorReason(ILandroid/content/Intent;)Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private isProxyBillingBroadcastReceiverRegistered()Z
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private makeAlternativeBillingIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private makePurchaseUpdatedIntentWithResponseCodeAndReason(Lcom/google/android/gms/internal/play_billing/zzjs;JZ)Landroid/content/Intent;
    .registers 11

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->makePurchasesUpdatedIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FAILURE_LOGGING_PAYLOAD"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "DEBUG_MESSAGE"

    const-string v5, "RESPONSE_CODE"

    if-eqz p4, :cond_68

    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->isProxyBillingBroadcastReceiverRegistered()Z

    move-result p4

    if-eqz p4, :cond_31

    iget-object p4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 2
    invoke-virtual {p4}, Lcom/android/billingclient/api/zzej;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object p4

    if-eqz p4, :cond_31

    iget-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/zzej;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p4

    invoke-virtual {v0, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8e

    .line 27
    :cond_31
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->isProxyBillingBroadcastReceiverRegistered()Z

    move-result p4

    if-eqz p4, :cond_68

    iget-object p4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 3
    invoke-virtual {p4}, Lcom/android/billingclient/api/zzej;->zzc()Z

    move-result p4

    if-nez p4, :cond_68

    const/4 p1, 0x3

    .line 4
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    const-string p4, "Play Store is blocked."

    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 6
    invoke-virtual {v4, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 7
    invoke-virtual {v4, p4}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 8
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object p4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbL:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 9
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 10
    invoke-static {p4, v3, p1, v2, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_8e

    :cond_68
    const/4 p4, 0x6

    .line 13
    invoke-virtual {v0, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    const-string v5, "An internal error occurred."

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v4

    .line 15
    invoke-virtual {v4, p4}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 16
    invoke-virtual {v4, v5}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 17
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p4

    .line 18
    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 19
    invoke-static {p1, v3, p4, v2, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 24
    :goto_8e
    const-string p1, "INTENT_SOURCE"

    const-string p4, "LAUNCH_BILLING_FLOW"

    .line 25
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "billingClientTransactionId"

    .line 26
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->wasServiceAutoReconnected:Z

    const-string p2, "wasServiceAutoReconnected"

    .line 27
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private makePurchasesUpdatedIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private declared-synchronized registerProxyBillingBroadcastReceiver()V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Lcom/android/billingclient/api/zzej;

    iget-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingLogger:Lcom/android/billingclient/api/zzdd;

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/zzej;-><init>(Lcom/android/billingclient/api/zzdd;)V

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.android.vending.billing.IN_APP_BILLING_RESULT_UPDATE_ACTION"

    .line 2
    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending.billing.PLAY_BILLING_ACTIVITY_CREATED_ACTION"

    .line 3
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    const-string v5, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1a} :catch_2b
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1a} :catch_29
    .catchall {:try_start_1 .. :try_end_1a} :catchall_26

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    .line 4
    :try_start_1d
    invoke-static/range {v2 .. v7}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_20} :catch_24
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1d .. :try_end_20} :catch_22
    .catchall {:try_start_1d .. :try_end_20} :catchall_64

    monitor-exit p0

    return-void

    :catch_22
    move-exception v0

    goto :goto_2d

    :catch_24
    move-exception v0

    goto :goto_2d

    :catchall_26
    move-exception v0

    move-object v2, p0

    goto :goto_65

    :catch_29
    move-exception v0

    goto :goto_2c

    :catch_2b
    move-exception v0

    :goto_2c
    move-object v2, p0

    :goto_2d
    const/4 v1, 0x0

    :try_start_2e
    iput-object v1, v2, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 5
    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v1, :cond_48

    iget-object v1, v2, Lcom/android/billingclient/api/ProxyBillingActivity;->billingLogger:Lcom/android/billingclient/api/zzdd;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzld;->zza()Lcom/google/android/gms/internal/play_billing/zzla;

    move-result-object v3

    const/4 v4, 0x2

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzla;->zza(I)Lcom/google/android/gms/internal/play_billing/zzla;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzld;

    .line 9
    invoke-interface {v1, v3}, Lcom/android/billingclient/api/zzdd;->zzl(Lcom/google/android/gms/internal/play_billing/zzld;)V

    goto :goto_5b

    .line 14
    :cond_48
    iget-object v1, v2, Lcom/android/billingclient/api/ProxyBillingActivity;->billingLogger:Lcom/android/billingclient/api/zzdd;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzld;->zza()Lcom/google/android/gms/internal/play_billing/zzla;

    move-result-object v3

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzla;->zza(I)Lcom/google/android/gms/internal/play_billing/zzla;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzld;

    .line 13
    invoke-interface {v1, v3}, Lcom/android/billingclient/api/zzdd;->zzl(Lcom/google/android/gms/internal/play_billing/zzld;)V

    .line 9
    :goto_5b
    const-string v1, "ProxyBillingActivity"

    const-string v3, "Failed to register receiver."

    .line 14
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_2e .. :try_end_62} :catchall_64

    monitor-exit p0

    return-void

    :catchall_64
    move-exception v0

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    const/16 v1, 0x6e

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ProxyBillingActivity"

    if-eq p1, v0, :cond_53

    if-ne p1, v1, :cond_12

    if-nez p3, :cond_57

    goto :goto_55

    :cond_12
    const/16 p2, 0x65

    if-ne p1, p2, :cond_3b

    .line 20
    sget p1, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    const/4 p1, 0x0

    if-nez p3, :cond_23

    const-string p2, "Got null intent!"

    .line 21
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move-object p3, p1

    move p2, v2

    goto :goto_2b

    .line 22
    :cond_23
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p2

    .line 21
    :goto_2b
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_f8

    if-nez p3, :cond_32

    goto :goto_36

    .line 23
    :cond_32
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_36
    invoke-virtual {v0, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_f8

    .line 22
    :cond_3b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Got onActivityResult with wrong requestCode: "

    .line 24
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; skipping..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f8

    :cond_53
    if-nez p3, :cond_57

    :goto_55
    move v0, v2

    goto :goto_58

    :cond_57
    move v0, v3

    .line 2
    :goto_58
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_66

    if-eqz v5, :cond_80

    move p2, v6

    :cond_66
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Activity finished with resultCode "

    .line 3
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and billing\'s responseCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move v6, p2

    :cond_80
    if-eq v3, v0, :cond_99

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Got null data with resultCode "

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    .line 5
    :cond_99
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_a4

    const-string p2, "Got null bundle!"

    .line 6
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_a4
    :goto_a4
    invoke-direct {p0, v6, p3}, Lcom/android/billingclient/api/ProxyBillingActivity;->isKnownError(ILandroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 8
    invoke-direct {p0, v6, p3}, Lcom/android/billingclient/api/ProxyBillingActivity;->getLoggingErrorReason(ILandroid/content/Intent;)Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object p2

    iget-wide v4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    if-nez p3, :cond_b4

    move p3, v3

    goto :goto_b5

    :cond_b4
    move p3, v2

    .line 9
    :goto_b5
    invoke-direct {p0, p2, v4, v5, p3}, Lcom/android/billingclient/api/ProxyBillingActivity;->makePurchaseUpdatedIntentWithResponseCodeAndReason(Lcom/google/android/gms/internal/play_billing/zzjs;JZ)Landroid/content/Intent;

    move-result-object p2

    goto :goto_ee

    .line 10
    :cond_ba
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "LAUNCH_BILLING_FLOW"

    const-string v4, "INTENT_SOURCE"

    if-eqz p2, :cond_d2

    .line 11
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/ProxyBillingActivity;->makeAlternativeBillingIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e0

    .line 13
    :cond_d2
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->makePurchasesUpdatedIntent()Landroid/content/Intent;

    move-result-object p2

    .line 14
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :goto_e0
    iget-wide v4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    const-string p3, "billingClientTransactionId"

    .line 16
    invoke-virtual {p2, p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean p3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->wasServiceAutoReconnected:Z

    const-string v0, "wasServiceAutoReconnected"

    .line 17
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_ee
    if-ne p1, v1, :cond_f5

    .line 9
    const-string p1, "IS_FIRST_PARTY_PURCHASE"

    .line 18
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    :cond_f5
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/ProxyBillingActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_f8
    :goto_f8
    iput-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->isProxyBillingBroadcastReceiverRegistered()Z

    move-result p1

    if-eqz p1, :cond_105

    iget-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 25
    invoke-virtual {p1}, Lcom/android/billingclient/api/zzej;->zzb()V

    .line 26
    :cond_105
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/ProxyBillingActivity;->isInAppMessageFlow(Landroid/os/Bundle;)Z

    move-result v0

    const-string v9, "ProxyBillingActivity"

    const/4 v10, 0x0

    if-nez v0, :cond_58

    .line 3
    :try_start_c
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1a} :catch_1b

    goto :goto_22

    :catch_1b
    move-exception v0

    .line 51
    const-string v3, "Failed to get package info for current package."

    .line 4
    invoke-static {v9, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    .line 3
    :goto_22
    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingLogger:Lcom/android/billingclient/api/zzdd;

    if-nez v3, :cond_55

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v4

    .line 7
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzke;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    const-string v5, "9.1.0"

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/play_billing/zzke;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 9
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzke;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(I)Lcom/google/android/gms/internal/play_billing/zzke;

    const-wide/32 v5, 0x373637b7

    .line 11
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzp(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkg;

    new-instance v4, Lcom/android/billingclient/api/zzdr;

    .line 13
    invoke-direct {v4, v3, v0}, Lcom/android/billingclient/api/zzdr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzkg;)V

    iput-object v4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingLogger:Lcom/android/billingclient/api/zzdd;

    .line 14
    :cond_55
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->registerProxyBillingBroadcastReceiver()V

    :cond_58
    const/16 v0, 0x64

    const-string v3, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    const-string v4, "in_app_message_result_receiver"

    const-string v5, "wasServiceAutoReconnected"

    const-string v6, "billingClientTransactionId"

    if-nez p1, :cond_156

    const-string v2, "Launching Play Store billing flow"

    .line 15
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    .line 16
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BUY_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_9e

    .line 17
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 18
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 19
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c6

    iput-boolean v12, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    const/16 v2, 0x6e

    iput v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    goto :goto_c6

    .line 21
    :cond_9e
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "IN_APP_MESSAGE_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    const/16 v2, 0x65

    iput v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    goto :goto_c6

    :cond_c5
    move-object v0, v11

    .line 24
    :cond_c6
    :goto_c6
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 25
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    .line 26
    :cond_dc
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 27
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->wasServiceAutoReconnected:Z

    :cond_f0
    :try_start_f0
    iput-boolean v12, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x24

    if-lt v2, v3, :cond_107

    .line 28
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v3, 0x3

    .line 29
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_105
    move-object v8, v2

    goto :goto_11b

    .line 35
    :cond_107
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_11a

    .line 31
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v12}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_105

    :cond_11a
    move-object v8, v11

    .line 34
    :goto_11b
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 35
    invoke-virtual/range {v1 .. v8}, Lcom/android/billingclient/api/ProxyBillingActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_12d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_f0 .. :try_end_12d} :catch_12e

    goto :goto_197

    :catch_12e
    move-exception v0

    .line 4
    const-string v2, "Got exception while trying to start a purchase flow."

    .line 36
    invoke-static {v9, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_13c

    .line 37
    invoke-virtual {v0, v10, v11}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_150

    .line 41
    :cond_13c
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbG:Lcom/google/android/gms/internal/play_billing/zzjs;

    iget-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    .line 38
    invoke-direct {p0, v0, v2, v3, v10}, Lcom/android/billingclient/api/ProxyBillingActivity;->makePurchaseUpdatedIntentWithResponseCodeAndReason(Lcom/google/android/gms/internal/play_billing/zzjs;JZ)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    if-eqz v2, :cond_14d

    const-string v2, "IS_FIRST_PARTY_PURCHASE"

    .line 39
    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    :cond_14d
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/ProxyBillingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    :goto_150
    iput-boolean v10, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 41
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->finish()V

    return-void

    .line 23
    :cond_156
    const-string v7, "Launching Play Store billing flow from savedInstanceState"

    .line 42
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "send_cancelled_broadcast_if_finished"

    .line 43
    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    .line 44
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_171

    .line 45
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    .line 46
    :cond_171
    invoke-virtual {p1, v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    const-string v3, "activity_code"

    .line 47
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    .line 48
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 49
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    .line 50
    :cond_18b
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 51
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->wasServiceAutoReconnected:Z

    :cond_197
    :goto_197
    return-void
.end method

.method protected onDestroy()V
    .registers 7

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->isProxyBillingBroadcastReceiverRegistered()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzej;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    :try_start_f
    iget-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->proxyBillingBroadcastReceiver:Lcom/android/billingclient/api/zzej;

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/ProxyBillingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v1

    .line 10
    const-string v2, "ProxyBillingActivity"

    const-string v3, "Failed to unregister receiver."

    .line 4
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 5
    :goto_1f
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_70

    :cond_26
    iget-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    if-eqz v1, :cond_70

    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->makePurchasesUpdatedIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DEBUG_MESSAGE"

    const/4 v3, 0x1

    const-string v4, "RESPONSE_CODE"

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v5

    .line 7
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4c

    .line 9
    :cond_44
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Billing dialog closed."

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    :goto_4c
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    if-eqz v0, :cond_55

    const-string v0, "IS_FIRST_PARTY_PURCHASE"

    .line 11
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_55
    iget v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x64

    if-ne v0, v2, :cond_6d

    :cond_5f
    const-string v0, "INTENT_SOURCE"

    const-string v2, "LAUNCH_BILLING_FLOW"

    .line 12
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    const-string v0, "billingClientTransactionId"

    .line 13
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14
    :cond_6d
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/ProxyBillingActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_70
    :goto_70
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->inAppMessageResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_c

    const-string v1, "in_app_message_result_receiver"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->sendCancelledBroadcastIfFinished:Z

    const-string v1, "send_cancelled_broadcast_if_finished"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->isFlowFromFirstPartyClient:Z

    const-string v1, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->activityCode:I

    const-string v1, "activity_code"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->billingClientTransactionId:J

    const-string v2, "billingClientTransactionId"

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->wasServiceAutoReconnected:Z

    const-string v1, "wasServiceAutoReconnected"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
