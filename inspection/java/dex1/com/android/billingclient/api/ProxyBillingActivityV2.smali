.class public Lcom/android/billingclient/api/ProxyBillingActivityV2;
.super Landroidx/activity/ComponentActivity;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private zza:Landroidx/activity/result/ActivityResultLauncher;

.field private zzb:Landroidx/activity/result/ActivityResultLauncher;

.field private zzc:Landroidx/activity/result/ActivityResultLauncher;

.field private zzd:Landroidx/activity/result/ActivityResultLauncher;

.field private zze:Landroidx/activity/result/ActivityResultLauncher;

.field private zzf:Landroidx/activity/result/ActivityResultLauncher;

.field private zzg:Landroid/os/ResultReceiver;

.field private zzh:Landroid/os/ResultReceiver;

.field private zzi:Landroid/os/ResultReceiver;

.field private zzj:Landroid/os/ResultReceiver;

.field private zzk:Landroid/os/ResultReceiver;

.field private zzl:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method

.method private static final zzg()Landroidx/core/app/ActivityOptionsCompat;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_10

    invoke-static {}, Landroidx/core/app/ActivityOptionsCompat;->makeBasic()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/app/ActivityOptionsCompat;->setPendingIntentBackgroundActivityStartMode(I)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    return-object v0

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_20

    .line 3
    invoke-static {}, Landroidx/core/app/ActivityOptionsCompat;->makeBasic()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/app/ActivityOptionsCompat;->setPendingIntentBackgroundActivityStartMode(I)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    return-object v0

    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lcom/android/billingclient/api/zzed;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzed;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zza:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 4
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lcom/android/billingclient/api/zzee;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzee;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;)V

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzb:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 6
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lcom/android/billingclient/api/zzef;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzef;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzc:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 8
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lcom/android/billingclient/api/zzeg;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzeg;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzd:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 10
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lcom/android/billingclient/api/zzeh;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzeh;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;)V

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zze:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;

    .line 12
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;-><init>()V

    new-instance v1, Lcom/android/billingclient/api/zzei;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzei;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzf:Landroidx/activity/result/ActivityResultLauncher;

    const-string v0, "subscription_management_action_result_receiver"

    const-string v1, "billing_program_information_dialog_result_receiver"

    const-string v2, "launch_external_link_result_receiver"

    const-string v3, "external_offer_flow_result_receiver"

    const-string v4, "external_payment_dialog_result_receiver"

    const-string v5, "alternative_billing_only_dialog_result_receiver"

    if-nez p1, :cond_1b6

    const-string p1, "ProxyBillingActivityV2"

    const-string v6, "Launching Play Store billing dialog"

    .line 14
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v6, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 16
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 17
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zza:Landroidx/activity/result/ActivityResultLauncher;

    .line 18
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 19
    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 20
    invoke-static {}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 18
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    .line 21
    :cond_ad
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v5, "external_payment_dialog_pending_intent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzh:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzb:Landroidx/activity/result/ActivityResultLauncher;

    .line 24
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 25
    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    .line 27
    :cond_e2
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "external_offer_flow_pending_intent"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_117

    .line 28
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 29
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzi:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzc:Landroidx/activity/result/ActivityResultLauncher;

    .line 30
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 31
    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 30
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    .line 33
    :cond_117
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "launch_external_link_flow_pending_intent"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14c

    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 35
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzj:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzd:Landroidx/activity/result/ActivityResultLauncher;

    .line 36
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 37
    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 38
    invoke-static {}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 36
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    .line 39
    :cond_14c
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "billing_program_information_dialog_pending_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_181

    .line 40
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 41
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzk:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zze:Landroidx/activity/result/ActivityResultLauncher;

    .line 42
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 43
    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 42
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    .line 45
    :cond_181
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "SUBSCRIPTION_MANAGEMENT_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20a

    .line 46
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    .line 47
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzl:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzf:Landroidx/activity/result/ActivityResultLauncher;

    .line 48
    new-instance v1, Landroidx/activity/result/IntentSenderRequest$Builder;

    invoke-direct {v1, p1}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    .line 49
    invoke-virtual {v1}, Landroidx/activity/result/IntentSenderRequest$Builder;->build()Landroidx/activity/result/IntentSenderRequest;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg()Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v1

    .line 48
    invoke-virtual {v0, p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void

    .line 51
    :cond_1b6
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    .line 52
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    iput-object v5, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg:Landroid/os/ResultReceiver;

    .line 53
    :cond_1c4
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 54
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    iput-object v4, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzh:Landroid/os/ResultReceiver;

    .line 55
    :cond_1d2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e0

    .line 56
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzi:Landroid/os/ResultReceiver;

    .line 57
    :cond_1e0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ee

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzj:Landroid/os/ResultReceiver;

    .line 59
    :cond_1ee
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fc

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzk:Landroid/os/ResultReceiver;

    .line 61
    :cond_1fc
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzl:Landroid/os/ResultReceiver;

    :cond_20a
    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_c

    const-string v1, "alternative_billing_only_dialog_result_receiver"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzh:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_15

    const-string v1, "external_payment_dialog_result_receiver"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_15
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzi:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1e

    const-string v1, "external_offer_flow_result_receiver"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1e
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzj:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_27

    const-string v1, "launch_external_link_result_receiver"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_27
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzk:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_30

    const-string v1, "billing_program_information_dialog_result_receiver"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_30
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzl:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_39

    const-string v1, "subscription_management_action_result_receiver"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_39
    return-void
.end method

.method final zza(Landroidx/activity/result/ActivityResult;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 2
    const-string v1, "ProxyBillingActivityV2"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzg:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_1d

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    :goto_1a
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    if-eqz v2, :cond_43

    .line 6
    :cond_26
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Alternative billing only dialog finished with resultCode "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and billing\'s responseCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_43
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->finish()V

    return-void
.end method

.method final zzb(Landroidx/activity/result/ActivityResult;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 2
    const-string v1, "ProxyBillingActivityV2"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzk:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_1d

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    :goto_1a
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    if-eqz v2, :cond_43

    .line 6
    :cond_26
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Billing program info dialog finished with resultCode "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and billing\'s responseCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_43
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->finish()V

    return-void
.end method

.method final zzc(Landroidx/activity/result/ActivityResult;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 2
    const-string v1, "ProxyBillingActivityV2"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzh:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_1d

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    :goto_1a
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    if-eqz v2, :cond_3f

    .line 6
    :cond_26
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "External offer dialog finished with resultCode: %s and billing\'s responseCode: %s"

    .line 7
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3f
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->finish()V

    return-void
.end method

.method final zzd(Landroidx/activity/result/ActivityResult;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    .line 2
    :cond_8
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3
    :goto_c
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "ProxyBillingActivityV2"

    if-eq v2, v3, :cond_53

    if-nez v1, :cond_1c

    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    :cond_1c
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "External offer flow finished with resultCode: %s"

    .line 6
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbv:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result v2

    const-string v3, "INTERNAL_LOG_ERROR_REASON"

    .line 9
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "External offer flow finished with error resultCode: %s"

    .line 11
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_53
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzi:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_63

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_68

    .line 19
    :cond_63
    const-string v0, "External offer flow result receiver is null"

    .line 15
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    if-eqz p1, :cond_7b

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "External offer flow finished with billing responseCode: %s"

    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7b
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->finish()V

    return-void
.end method

.method final zze(Landroidx/activity/result/ActivityResult;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    .line 2
    :cond_8
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3
    :goto_c
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "ProxyBillingActivityV2"

    if-eq v2, v3, :cond_53

    if-nez v1, :cond_1c

    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    :cond_1c
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Launch external link flow finished with resultCode: %s"

    .line 6
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbv:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result v2

    const-string v3, "INTERNAL_LOG_ERROR_REASON"

    .line 9
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Launch external link flow finished with error resultCode: %s"

    .line 11
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_53
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzj:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_63

    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_68

    .line 19
    :cond_63
    const-string v0, "Launch external link flow result receiver is null"

    .line 15
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    if-eqz p1, :cond_7b

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Launch external link flow finished with billing responseCode: %s"

    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7b
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->finish()V

    return-void
.end method

.method final zzf(Landroidx/activity/result/ActivityResult;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    .line 2
    const-string v1, "ProxyBillingActivityV2"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->zzl:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_1d

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    .line 3
    :cond_16
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    :goto_1a
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    if-eqz v2, :cond_3f

    .line 6
    :cond_26
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Subscription management action finished with resultCode: %s and billing\'s responseCode: %s"

    .line 7
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3f
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivityV2;->finish()V

    return-void
.end method
