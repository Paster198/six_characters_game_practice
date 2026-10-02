.class public Llow/moe/AchievementManager;
.super Ljava/lang/Object;
.source "AchievementManager.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static RC_REQUEST_ACHIEVEMENTS_INTENT:I = 0xb4113

.field private static RC_SIGN_IN:I = 0xb4112

.field private static sManager:Llow/moe/AchievementManager;


# instance fields
.field private isLoggedIn:Z

.field private sActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Llow/moe/AchievementManager;->isLoggedIn:Z

    .line 36
    sput-object p0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    .line 37
    iput-object p1, p0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    if-nez p2, :cond_16

    .line 39
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->addOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V

    .line 40
    invoke-virtual {p0}, Llow/moe/AchievementManager;->initComplete()V

    const/4 p1, 0x1

    .line 41
    invoke-static {p1}, Llow/moe/AchievementManager;->SignIn(Z)V

    :cond_16
    return-void
.end method

.method public static Complete(Ljava/lang/String;)V
    .registers 6

    const-string v0, "achievement_"

    .line 54
    invoke-static {}, Llow/moe/AchievementManager;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 55
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 57
    :try_start_c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "string"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5a

    .line 59
    sget-object v1, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-boolean v2, v1, Llow/moe/AchievementManager;->isLoggedIn:Z

    if-eqz v2, :cond_5a

    .line 60
    iget-object v1, v1, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 61
    invoke-interface {v1, v0}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get resource id for achievement \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\": "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llow/moe/AppActivity;->logCrashlytics(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method public static Increment(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "achievement_"

    .line 71
    invoke-static {}, Llow/moe/AchievementManager;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 72
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 74
    :try_start_c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "string"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_5a

    .line 76
    sget-object v1, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-boolean v2, v1, Llow/moe/AchievementManager;->isLoggedIn:Z

    if-eqz v2, :cond_5a

    .line 77
    iget-object v1, v1, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v1

    .line 78
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to get resource id for achievement \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Llow/moe/AppActivity;->logCrashlytics(Ljava/lang/String;)V

    :cond_5a
    return-void
.end method

.method private static InternalPromptSignIn()V
    .registers 1

    .line 153
    invoke-static {}, Llow/moe/AchievementManager;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 154
    sget-object v0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-object v0, v0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    :cond_11
    return-void
.end method

.method public static IsGooglePlayServiceUnavailableWithUserUnhandleableError()Z
    .registers 3

    .line 172
    const-string v0, "prod"

    const-string v1, "stg_charting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 176
    :cond_c
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 177
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_20

    .line 180
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public static PromptGooglePlayServicesErrorDialogIfNotAvailable()Z
    .registers 5

    .line 186
    const-string v0, "prod"

    const-string v1, "stg_charting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 190
    :cond_c
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 191
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_31

    .line 194
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 195
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 197
    new-instance v4, Llow/moe/AchievementManager$2;

    invoke-direct {v4, v0, v2}, Llow/moe/AchievementManager$2;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;I)V

    .line 203
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return v1
.end method

.method public static ShowAchievements()V
    .registers 2

    .line 88
    invoke-static {}, Llow/moe/AchievementManager;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 89
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 92
    sget-object v0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-boolean v1, v0, Llow/moe/AchievementManager;->isLoggedIn:Z

    if-eqz v1, :cond_19

    .line 93
    iget-object v0, v0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    goto :goto_2b

    :cond_19
    const/4 v0, 0x1

    .line 96
    invoke-static {v0}, Llow/moe/AchievementManager;->SignIn(Z)V

    .line 97
    sget-object v0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-boolean v1, v0, Llow/moe/AchievementManager;->isLoggedIn:Z

    if-eqz v1, :cond_2a

    .line 98
    iget-object v0, v0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-eqz v0, :cond_39

    .line 103
    invoke-interface {v0}, Lcom/google/android/gms/games/AchievementsClient;->getAchievementsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Llow/moe/AchievementManager$1;

    invoke-direct {v1}, Llow/moe/AchievementManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_39
    return-void

    .line 123
    :cond_3a
    invoke-static {}, Llow/moe/AchievementManager;->PromptGooglePlayServicesErrorDialogIfNotAvailable()Z

    return-void
.end method

.method public static SignIn(Z)V
    .registers 3

    .line 128
    invoke-static {}, Llow/moe/AchievementManager;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 129
    sget-object v0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-object v0, v0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    .line 130
    sget-object v0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    iget-object v0, v0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Llow/moe/AchievementManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Llow/moe/AchievementManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_21
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 27
    sget v0, Llow/moe/AchievementManager;->RC_REQUEST_ACHIEVEMENTS_INTENT:I

    return v0
.end method

.method static synthetic access$100()Llow/moe/AchievementManager;
    .registers 1

    .line 27
    sget-object v0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    return-object v0
.end method

.method static synthetic access$200(Llow/moe/AchievementManager;)Landroid/app/Activity;
    .registers 1

    .line 27
    iget-object p0, p0, Llow/moe/AchievementManager;->sActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static isGooglePlayServicesAvailable()Z
    .registers 3

    .line 160
    const-string v0, "prod"

    const-string v1, "stg_charting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 164
    :cond_c
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 165
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v1
.end method

.method static synthetic lambda$SignIn$0(ZLcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 138
    sget-object p0, Llow/moe/AchievementManager;->sManager:Llow/moe/AchievementManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Llow/moe/AchievementManager;->isLoggedIn:Z

    return-void

    :cond_18
    if-eqz p0, :cond_1d

    .line 145
    invoke-static {}, Llow/moe/AchievementManager;->InternalPromptSignIn()V

    :cond_1d
    return-void
.end method


# virtual methods
.method native initComplete()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    .line 47
    sget p2, Llow/moe/AchievementManager;->RC_SIGN_IN:I

    if-ne p1, p2, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
