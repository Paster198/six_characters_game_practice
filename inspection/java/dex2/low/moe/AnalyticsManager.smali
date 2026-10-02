.class public Llow/moe/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# static fields
.field private static instance:Llow/moe/AnalyticsManager;


# instance fields
.field private firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sput-object p0, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    .line 18
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    sget-object v1, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, v1, Llow/moe/AnalyticsManager;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 20
    sget-object v0, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    iget-object v0, v0, Llow/moe/AnalyticsManager;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .registers 3

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    sget-object v1, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    iget-object v1, v1, Llow/moe/AnalyticsManager;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v1, p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object p1, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    iget-object p1, p1, Llow/moe/AnalyticsManager;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object p1, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    iget-object p1, p1, Llow/moe/AnalyticsManager;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p1, p0, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 2

    .line 24
    sget-object v0, Llow/moe/AnalyticsManager;->instance:Llow/moe/AnalyticsManager;

    iget-object v0, v0, Llow/moe/AnalyticsManager;->firebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {v0, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static trackABTestPerformed(Ljava/lang/String;)V
    .registers 3

    .line 105
    const-string v0, "abtest_performed"

    const-string v1, "testid"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackABTestTarget(Ljava/lang/String;)V
    .registers 3

    .line 100
    const-string v0, "abtest_selected"

    const-string v1, "testid"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackBundleDownloadFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 167
    const-string v0, "error_code"

    const-string v1, "current_bundle"

    const-string v2, "bundle_download_fail"

    invoke-static {v2, v0, p0, v1, p1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackCacheAbsent()V
    .registers 1

    .line 142
    const-string v0, "cache_absent"

    invoke-static {v0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCacheCorrupt()V
    .registers 1

    .line 147
    const-string v0, "cache_corrupt"

    invoke-static {v0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCacheFull()V
    .registers 1

    .line 152
    const-string v0, "cache_full"

    invoke-static {v0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCachePresent(Ljava/lang/String;)V
    .registers 3

    .line 137
    const-string v0, "cache_present"

    const-string v1, "size"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackCacheWriteFail()V
    .registers 1

    .line 157
    const-string v0, "cache_write_fail"

    invoke-static {v0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackHighscore(Ljava/lang/String;)V
    .registers 3

    .line 132
    const-string v0, "track_highscore"

    const-string v1, "songid_difficulty"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackLogin()V
    .registers 3

    .line 122
    const-string v0, "method"

    const-string v1, "email"

    const-string v2, "login"

    invoke-static {v2, v0, v1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackMemoryPurchase(I)V
    .registers 3

    .line 95
    const-string v0, "value"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "purchase_complete"

    invoke-static {v1, v0, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackPackPurchase(Ljava/lang/String;)V
    .registers 5

    .line 79
    const-string v0, "virtual_currency_name"

    const-string v1, "memory"

    const-string v2, "track_packpurchase"

    const-string v3, "packid"

    invoke-static {v2, v3, p0, v0, v1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackRegionlessPurchaseFailure(Ljava/lang/String;)V
    .registers 3

    .line 171
    const-string v0, "regionless_purchase_failure"

    const-string v1, "has_region_detection"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackRegister()V
    .registers 3

    .line 127
    const-string v0, "method"

    const-string v1, "email"

    const-string v2, "sign_up"

    invoke-static {v2, v0, v1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSinglePurchase(Ljava/lang/String;)V
    .registers 5

    .line 74
    const-string v0, "virtual_currency_name"

    const-string v1, "memory"

    const-string v2, "track_singlepurchase"

    const-string v3, "songid"

    invoke-static {v2, v3, p0, v0, v1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSongComplete(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 55
    const-string v0, "songid_difficulty"

    const-string v1, "cleartype"

    const-string v2, "play_finish"

    invoke-static {v2, v0, p0, v1, p1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSongStart(Ljava/lang/String;)V
    .registers 3

    .line 47
    const-string v0, "play_start"

    const-string v1, "songid_difficulty"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackStaminaConvert()V
    .registers 3

    .line 90
    const-string v0, "count"

    const-string v1, "6"

    const-string v2, "staminaconvert"

    invoke-static {v2, v0, v1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackStaminaPurchase()V
    .registers 5

    .line 84
    const-string v0, "virtual_currency_name"

    const-string v1, "memory"

    const-string v2, "itempurchase"

    const-string v3, "itemid"

    const-string v4, "stamina_6"

    invoke-static {v2, v3, v4, v0, v1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackStoryOpen(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 63
    const-string v0, "id_major"

    const-string v1, "id_minor"

    const-string v2, "story_open"

    invoke-static {v2, v0, p0, v1, p1}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackTutorialComplete()V
    .registers 1

    .line 117
    const-string v0, "tutorial_complete"

    invoke-static {v0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackTutorialStart()V
    .registers 1

    .line 111
    const-string v0, "tutorial_begin"

    invoke-static {v0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static trackUnknownSongDownload(Ljava/lang/String;)V
    .registers 3

    .line 162
    const-string v0, "unknown_song_download"

    const-string v1, "songid"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackUnlock(Ljava/lang/String;)V
    .registers 3

    .line 68
    const-string v0, "track_unlock"

    const-string v1, "songid_difficulty"

    invoke-static {v0, v1, p0}, Llow/moe/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
