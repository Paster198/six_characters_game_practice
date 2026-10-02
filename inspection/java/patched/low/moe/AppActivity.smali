.class public Llow/moe/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# static fields
.field static deepLinkMultiplayerRoomCode:Ljava/lang/String; = ""

.field static sActivity:Llow/moe/AppActivity;


# instance fields
.field final NO_GPLAY_BUILD:Z

.field achievementManager:Llow/moe/AchievementManager;

.field analyticsManager:Llow/moe/AnalyticsManager;

.field private bufferSize:I

.field motionManager:Llow/moe/MotionManager;

.field multiplayerManager:Llow/moe/MultiplayerManager;

.field purchaseHandler:Llow/moe/PurchaseHandler;

.field public queriedCountryCode:Ljava/lang/String;

.field private sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const v0, 0xac44

    .line 89
    iput v0, p0, Llow/moe/AppActivity;->sampleRate:I

    const/16 v0, 0x200

    .line 90
    iput v0, p0, Llow/moe/AppActivity;->bufferSize:I

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Llow/moe/AppActivity;->NO_GPLAY_BUILD:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Llow/moe/AppActivity;->queriedCountryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Llow/moe/AppActivity;)V
    .registers 1

    .line 80
    invoke-direct {p0}, Llow/moe/AppActivity;->makeImmersive()V

    return-void
.end method

.method static synthetic access$100()Landroid/view/Display$Mode;
    .registers 1

    .line 80
    invoke-static {}, Llow/moe/AppActivity;->getHighestRefreshRateMode()Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static createNomediaInDirectory(Ljava/lang/String;)V
    .registers 4

    .line 574
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 577
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    return-void

    .line 579
    :catch_e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create .nomedia in"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateGuid()Ljava/lang/String;
    .registers 1

    .line 565
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceEstimatedStorageLeftKb()J
    .registers 5

    .line 399
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getCocos2dxWritablePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    .line 403
    :cond_9
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getCocos2dxWritablePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public static getDeviceModelName()Ljava/lang/String;
    .registers 1

    .line 569
    invoke-static {}, Lcom/jaredrummler/android/device/DeviceName;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRefreshRate()F
    .registers 2

    .line 497
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 500
    invoke-static {}, Llow/moe/AppActivity;->getHighestRefreshRateMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method private static getHighestRefreshRateMode()Landroid/view/Display$Mode;
    .registers 7

    .line 481
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v1

    .line 483
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 485
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_40

    aget-object v4, v1, v3

    .line 486
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 487
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 488
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3d

    move-object v0, v4

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_40
    return-object v0
.end method

.method static getQueriedCountryCode()Ljava/lang/String;
    .registers 1

    .line 101
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    if-nez v0, :cond_7

    .line 102
    const-string v0, ""

    return-object v0

    .line 104
    :cond_7
    iget-object v0, v0, Llow/moe/AppActivity;->queriedCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static isAndroidVersion9OrHigher()Z
    .registers 2

    .line 507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static logCrashlytics(Ljava/lang/String;)V
    .registers 2

    .line 383
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static logToFirebase(Ljava/lang/String;)V
    .registers 2

    .line 387
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    if-eqz v0, :cond_b

    iget-object v0, v0, Llow/moe/AppActivity;->analyticsManager:Llow/moe/AnalyticsManager;

    if-eqz v0, :cond_b

    .line 388
    invoke-static {p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private makeImmersive()V
    .registers 3

    .line 338
    invoke-virtual {p0}, Llow/moe/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static notifyFcmTokenUpdate(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_9

    .line 393
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    if-eqz v0, :cond_9

    .line 394
    invoke-virtual {v0, p0}, Llow/moe/AppActivity;->notifyFcmTokenUpdateNative(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static openAppStoreLink()V
    .registers 0

    .line 470
    invoke-static {}, Llow/moe/AppActivity;->rateApp()V

    return-void
.end method

.method public static openOauthApple()V
    .registers 2

    .line 650
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->finishWaitingAndThrowOauthError(Z)V

    return-void
.end method

.method public static openOauthFacebook()V
    .registers 0

    return-void
.end method

.method public static openOauthGoogle()V
    .registers 7

    .line 607
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;

    const-string v1, "1049895741986-sb5usmggf7p1qjnemff7ng2806n2kg52.apps.googleusercontent.com"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;-><init>(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0}, Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption$Builder;->build()Lcom/google/android/libraries/identity/googleid/GetSignInWithGoogleOption;

    move-result-object v0

    .line 611
    new-instance v1, Landroidx/credentials/GetCredentialRequest$Builder;

    invoke-direct {v1}, Landroidx/credentials/GetCredentialRequest$Builder;-><init>()V

    .line 612
    invoke-virtual {v1, v0}, Landroidx/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Landroidx/credentials/GetCredentialRequest$Builder;->build()Landroidx/credentials/GetCredentialRequest;

    move-result-object v3

    .line 615
    invoke-static {}, Llow/moe/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/credentials/CredentialManager;->create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;

    move-result-object v1

    .line 618
    invoke-static {}, Llow/moe/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 621
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Llow/moe/AppActivity$9;

    invoke-direct {v6}, Llow/moe/AppActivity$9;-><init>()V

    .line 617
    invoke-interface/range {v1 .. v6}, Landroidx/credentials/CredentialManager;->getCredentialAsync(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static openShareDialogWithString(Ljava/lang/String;)V
    .registers 3

    .line 361
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-static {v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    const-string v1, "text/plain"

    .line 362
    invoke-virtual {v0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    .line 363
    invoke-virtual {v0, p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 365
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const-string v1, "Share..."

    invoke-static {p0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Llow/moe/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openTwitter(Ljava/lang/String;)V
    .registers 6

    .line 372
    const-string v0, "android.intent.action.VIEW"

    .line 0
    const-string v1, "twitter://user?screen_name="

    .line 372
    :try_start_4
    sget-object v2, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v2}, Llow/moe/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.twitter.android"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 373
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    goto :goto_3f

    .line 376
    :catch_27
    new-instance v2, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://x.com/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_3f
    const/high16 p0, 0x10000000

    .line 378
    invoke-virtual {v2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    sget-object p0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {p0, v2}, Llow/moe/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openURL(Ljava/lang/String;)V
    .registers 3

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 475
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    sget-object p0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {p0, v0}, Llow/moe/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static rateApp()V
    .registers 2

    .line 460
    :try_start_0
    const-string v0, "market://details"

    invoke-static {v0}, Llow/moe/AppActivity;->rateIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 461
    sget-object v1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v1, v0}, Llow/moe/AppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    .line 463
    :catch_c
    const-string v0, "https://play.google.com/store/apps/details"

    invoke-static {v0}, Llow/moe/AppActivity;->rateIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 464
    sget-object v1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v1, v0}, Llow/moe/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static rateAppNative()Z
    .registers 3

    .line 424
    :try_start_0
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v0}, Llow/moe/AppActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 427
    new-instance v2, Llow/moe/AppActivity$4;

    invoke-direct {v2, v0}, Llow/moe/AppActivity$4;-><init>(Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    const/4 v0, 0x1

    return v0

    :catch_18
    const/4 v0, 0x0

    return v0
.end method

.method private static rateIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 409
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v1}, Llow/moe/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s?id=%s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x48080000    # 139264.0f

    .line 412
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static requestBackgroundApp()V
    .registers 2

    .line 584
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public static requestNotificationPermission()V
    .registers 2

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_10

    .line 513
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    new-instance v1, Llow/moe/AppActivity$5;

    invoke-direct {v1}, Llow/moe/AppActivity$5;-><init>()V

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public static setHighFrameRateEnabled(Z)V
    .registers 3

    .line 531
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    new-instance v1, Llow/moe/AppActivity$6;

    invoke-direct {v1, p0}, Llow/moe/AppActivity$6;-><init>(Z)V

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setScreenKeepAwake(Z)V
    .registers 2

    if-eqz p0, :cond_d

    .line 589
    sget-object p0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    new-instance v0, Llow/moe/AppActivity$7;

    invoke-direct {v0}, Llow/moe/AppActivity$7;-><init>()V

    invoke-virtual {p0, v0}, Llow/moe/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 595
    :cond_d
    sget-object p0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    new-instance v0, Llow/moe/AppActivity$8;

    invoke-direct {v0}, Llow/moe/AppActivity$8;-><init>()V

    invoke-virtual {p0, v0}, Llow/moe/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private native setStateStart()V
.end method

.method private native setStateStop()V
.end method

.method public static shareScreenshot(Ljava/lang/String;)V
    .registers 4

    .line 348
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 350
    sget-object p0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-static {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p0

    const-string v1, "image/*"

    .line 351
    invoke-virtual {p0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p0

    const-string v1, "#arcaea"

    .line 352
    invoke-virtual {p0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p0

    sget-object v1, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const-string v2, "moe.low.arc.provider"

    .line 353
    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    .line 355
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const-string v1, "Share..."

    invoke-static {p0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Llow/moe/AppActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3c
    return-void
.end method

.method public static startSceneLoadFinished()V
    .registers 2

    .line 232
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    invoke-virtual {v0}, Llow/moe/AppActivity;->notifyNativeStartupComplete()V

    .line 234
    sget-object v0, Llow/moe/AppActivity;->deepLinkMultiplayerRoomCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 235
    sget-object v0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    sget-object v1, Llow/moe/AppActivity;->deepLinkMultiplayerRoomCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llow/moe/AppActivity;->parseRoomCodeFromShareToken(Ljava/lang/String;)V

    .line 239
    :cond_14
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Llow/moe/AppActivity$1;

    invoke-direct {v1}, Llow/moe/AppActivity$1;-><init>()V

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method native finishWaitingAndSetOauthToken(Ljava/lang/String;)V
.end method

.method native finishWaitingAndThrowOauthError(Z)V
.end method

.method public init()V
    .registers 3

    .line 283
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 286
    invoke-static {p0}, Lim/delight/android/commons/Identity;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llow/moe/AppActivity;->setDeviceId(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Llow/moe/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 290
    new-instance v1, Llow/moe/AppActivity$2;

    invoke-direct {v1, p0}, Llow/moe/AppActivity$2;-><init>(Llow/moe/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 299
    new-instance v1, Llow/moe/AppActivity$3;

    invoke-direct {v1, p0}, Llow/moe/AppActivity$3;-><init>(Llow/moe/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 307
    invoke-direct {p0}, Llow/moe/AppActivity;->makeImmersive()V

    return-void
.end method

.method native initJVMAnalytics()V
.end method

.method native initJVMPlatformUtils()V
.end method

.method public loadAudioDeviceSettings()V
    .registers 6

    .line 260
    invoke-static {}, Llow/moe/AppActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 261
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_20

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Llow/moe/AppActivity;->sampleRate:I

    :cond_20
    if-eqz v0, :cond_28

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llow/moe/AppActivity;->bufferSize:I

    :cond_28
    const/4 v0, 0x0

    .line 268
    :try_start_29
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 269
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4c

    if-eqz v1, :cond_4c

    .line 270
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x1

    .line 271
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4b

    .line 272
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_49} :catch_4c

    if-ne v1, v4, :cond_4c

    :cond_4b
    move v0, v2

    .line 278
    :catch_4c
    :cond_4c
    iget v1, p0, Llow/moe/AppActivity;->sampleRate:I

    iget v2, p0, Llow/moe/AppActivity;->bufferSize:I

    invoke-virtual {p0, v1, v2, v0}, Llow/moe/AppActivity;->setAndroidAudioProperties(IIZ)V

    return-void
.end method

.method native nativeDestroy()V
.end method

.method native nativePause()V
.end method

.method native nativeResume()V
.end method

.method native notifyFcmTokenUpdateNative(Ljava/lang/String;)V
.end method

.method native notifyNativeStartupComplete()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 670
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 325
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 109
    sput-object p0, Llow/moe/AppActivity;->sActivity:Llow/moe/AppActivity;

    const/4 v0, 0x6

    .line 111
    invoke-virtual {p0, v0}, Llow/moe/AppActivity;->setRequestedOrientation(I)V

    .line 114
    :try_start_6
    invoke-static {}, Lcom/getkeepsafe/relinker/ReLinker;->recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    const-string v1, "cocos2dcpp"

    invoke-virtual {v0, p0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/getkeepsafe/relinker/ReLinker;->recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    const-string v1, "fmod"

    invoke-virtual {v0, p0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/getkeepsafe/relinker/ReLinker;->recursively()Lcom/getkeepsafe/relinker/ReLinkerInstance;

    move-result-object v0

    const-string v1, "fmodProvider"

    invoke-virtual {v0, p0, v1}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_6 .. :try_end_21} :catch_49

    .line 139
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Llow/moe/practice/Practice;->install(Landroid/app/Activity;)V

    .line 141
    const-string p1, "7.0.255c"

    invoke-virtual {p0, p1}, Llow/moe/AppActivity;->setAppVersion(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->setAutoInitEnabled(Z)V

    .line 146
    invoke-virtual {p0}, Llow/moe/AppActivity;->loadAudioDeviceSettings()V

    .line 147
    invoke-static {p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 148
    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    .line 150
    invoke-static {p0}, Llow/moe/ReachabilityMonitor;->sharedInstance(Landroid/content/Context;)Llow/moe/ReachabilityMonitor;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Llow/moe/ReachabilityMonitor;->start()V

    .line 176
    const-string p1, ""

    sput-object p1, Llow/moe/AppActivity;->deepLinkMultiplayerRoomCode:Ljava/lang/String;

    return-void

    :catch_49
    move-exception p1

    .line 120
    invoke-virtual {p1}, Lcom/getkeepsafe/relinker/MissingLibraryException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Llow/moe/AppActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; Additional Crash Info - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_92

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_92

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "splitSourceDirs: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a5

    .line 132
    :cond_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "splitSourceDirs is null or empty;"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    :goto_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "sourceDir is: \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\';"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v0, Llow/moe/WrappedMissingLibraryException;

    invoke-direct {v0, p1}, Llow/moe/WrappedMissingLibraryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .registers 1

    .line 181
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 182
    invoke-virtual {p0}, Llow/moe/AppActivity;->nativeDestroy()V

    .line 183
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    invoke-static {}, Llow/moe/practice/Practice;->destroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 312
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 313
    invoke-virtual {p0}, Llow/moe/AppActivity;->nativePause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 318
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 319
    invoke-direct {p0}, Llow/moe/AppActivity;->makeImmersive()V

    .line 320
    invoke-virtual {p0}, Llow/moe/AppActivity;->nativeResume()V

    return-void
.end method

.method protected onStart()V
    .registers 5

    .line 188
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 189
    invoke-direct {p0}, Llow/moe/AppActivity;->setStateStart()V

    .line 190
    invoke-virtual {p0}, Llow/moe/AppActivity;->initJVMAnalytics()V

    .line 191
    invoke-virtual {p0}, Llow/moe/AppActivity;->initJVMPlatformUtils()V

    .line 192
    iget-object v0, p0, Llow/moe/AppActivity;->purchaseHandler:Llow/moe/PurchaseHandler;

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 193
    new-instance v0, Llow/moe/PurchaseHandler;

    invoke-direct {v0, p0, v1}, Llow/moe/PurchaseHandler;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Llow/moe/AppActivity;->purchaseHandler:Llow/moe/PurchaseHandler;

    .line 195
    :cond_18
    iget-object v0, p0, Llow/moe/AppActivity;->achievementManager:Llow/moe/AchievementManager;

    if-nez v0, :cond_23

    .line 196
    new-instance v0, Llow/moe/AchievementManager;

    invoke-direct {v0, p0, v1}, Llow/moe/AchievementManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Llow/moe/AppActivity;->achievementManager:Llow/moe/AchievementManager;

    .line 198
    :cond_23
    iget-object v0, p0, Llow/moe/AppActivity;->analyticsManager:Llow/moe/AnalyticsManager;

    if-nez v0, :cond_2e

    .line 199
    new-instance v0, Llow/moe/AnalyticsManager;

    invoke-direct {v0}, Llow/moe/AnalyticsManager;-><init>()V

    iput-object v0, p0, Llow/moe/AppActivity;->analyticsManager:Llow/moe/AnalyticsManager;

    .line 201
    :cond_2e
    iget-object v0, p0, Llow/moe/AppActivity;->motionManager:Llow/moe/MotionManager;

    if-nez v0, :cond_39

    .line 202
    new-instance v0, Llow/moe/MotionManager;

    invoke-direct {v0, p0}, Llow/moe/MotionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Llow/moe/AppActivity;->motionManager:Llow/moe/MotionManager;

    .line 204
    :cond_39
    iget-object v0, p0, Llow/moe/AppActivity;->multiplayerManager:Llow/moe/MultiplayerManager;

    if-nez v0, :cond_44

    .line 205
    new-instance v0, Llow/moe/MultiplayerManager;

    invoke-direct {v0, p0}, Llow/moe/MultiplayerManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Llow/moe/AppActivity;->multiplayerManager:Llow/moe/MultiplayerManager;

    .line 209
    :cond_44
    invoke-virtual {p0}, Llow/moe/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 211
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 213
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_6d

    const-string v2, "[A-Za-z0-9]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 215
    sput-object v0, Llow/moe/AppActivity;->deepLinkMultiplayerRoomCode:Ljava/lang/String;

    .line 219
    :cond_6d
    const-string v0, "prod"

    const-string v2, "stg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_8d

    .line 221
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8d

    .line 222
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_8d
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 255
    invoke-direct {p0}, Llow/moe/AppActivity;->setStateStop()V

    .line 256
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 330
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_8

    .line 332
    invoke-direct {p0}, Llow/moe/AppActivity;->makeImmersive()V

    :cond_8
    return-void
.end method

.method native parseRoomCodeFromShareToken(Ljava/lang/String;)V
.end method

.method native pollForMultiplayerInvites()V
.end method

.method native setAndroidAudioProperties(IIZ)V
.end method

.method native setAppVersion(Ljava/lang/String;)V
.end method

.method native setDeviceId(Ljava/lang/String;)V
.end method
