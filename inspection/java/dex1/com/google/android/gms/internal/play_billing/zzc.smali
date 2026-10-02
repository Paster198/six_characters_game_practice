.class public final Lcom/google/android/gms/internal/play_billing/zzc;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final zza:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    return-void
.end method

.method public static zza(Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 1
    const-string p0, "Unexpected null bundle received!"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9
    const-string p1, "IN_APP_MESSAGE_RESPONSE_CODE"

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static zzb(Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x6

    if-nez p0, :cond_9

    .line 1
    const-string p0, "Unexpected null bundle received!"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9
    const-string v1, "RESPONSE_CODE"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "getResponseCodeFromBundle() got null response code, assuming OK"

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_18
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_23

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected type for bundle response code: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;
    .registers 6

    .line 1
    const-string p1, "playBillingLibraryVersion"

    const-string v0, "9.1.0"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_e

    const-string p1, "playBillingLibraryWrapperVersion"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string p1, "billingClientSessionId"

    .line 3
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public static zzd(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DEBUG_MESSAGE"

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "LOG_REASON"

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjs;->zza()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzd(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p2, :cond_b

    const-string p1, "ADDITIONAL_LOG_DETAILS"

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object p0
.end method

.method public static zzf(Lcom/android/billingclient/api/BillingFlowParams;ZZZZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Landroid/os/Bundle;
    .registers 14

    .line 1
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "9.1.0"

    .line 2
    invoke-static {p6, v0, p7, p8, p9}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    const-string p7, "billingClientTransactionId"

    .line 3
    invoke-virtual {p6, p7, p11, p12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzb()I

    move-result p7

    if-eqz p7, :cond_1e

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzb()I

    move-result p7

    const-string p8, "prorationMode"

    .line 6
    invoke-virtual {p6, p8, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    :cond_1e
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_31

    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    move-result-object p7

    const-string p8, "accountId"

    .line 9
    invoke-virtual {p6, p8, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_31
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_44

    .line 11
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    move-result-object p7

    const-string p8, "obfuscatedProfileId"

    .line 12
    invoke-virtual {p6, p8, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_44
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzt()Z

    move-result p7

    const/4 p8, 0x1

    if-eqz p7, :cond_50

    const-string p7, "isOfferPersonalizedByDeveloper"

    .line 14
    invoke-virtual {p6, p7, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_50
    const/4 p7, 0x0

    .line 15
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_6a

    new-instance p9, Ljava/util/ArrayList;

    new-array p11, p8, [Ljava/lang/String;

    const/4 p12, 0x0

    aput-object p7, p11, p12

    .line 16
    invoke-static {p11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p11

    invoke-direct {p9, p11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p11, "skusToReplace"

    .line 17
    invoke-virtual {p6, p11, p9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18
    :cond_6a
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/lang/String;

    move-result-object p9

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_7d

    .line 19
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/lang/String;

    move-result-object p9

    const-string p11, "oldSkuPurchaseToken"

    .line 20
    invoke-virtual {p6, p11, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_7d
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzg()Ljava/lang/String;

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_8e

    .line 22
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzg()Ljava/lang/String;

    const-string p9, "oldSkuPurchaseId"

    .line 23
    invoke-virtual {p6, p9, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_8e
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzi()Ljava/lang/String;

    move-result-object p9

    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_a1

    .line 25
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzi()Ljava/lang/String;

    move-result-object p9

    const-string p11, "originalExternalTransactionId"

    .line 26
    invoke-virtual {p6, p11, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_a1
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p9

    if-nez p9, :cond_ac

    const-string p9, "paymentsPurchaseParams"

    .line 28
    invoke-virtual {p6, p9, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    if-eqz p1, :cond_b5

    if-eqz p3, :cond_b5

    const-string p1, "enablePendingPurchases"

    .line 29
    invoke-virtual {p6, p1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_b5
    if-eqz p2, :cond_be

    if-eqz p4, :cond_be

    const-string p1, "enablePendingPurchaseForSubscriptions"

    .line 30
    invoke-virtual {p6, p1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_be
    if-nez p5, :cond_c6

    .line 31
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    if-eqz p1, :cond_cb

    :cond_c6
    const-string p1, "enableAlternativeBilling"

    .line 32
    invoke-virtual {p6, p1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    :cond_cb
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()J

    .line 34
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zza()I

    .line 35
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 36
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 37
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getLinkUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "developerBillingLinkUri"

    .line 38
    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_f2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getLaunchMode()I

    move-result p1

    if-eqz p1, :cond_109

    .line 40
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getLaunchMode()I

    move-result p1

    const-string p2, "developerBillingLaunchMode"

    .line 41
    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    :cond_109
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getBillingProgram()I

    move-result p1

    const-string p2, "developerBillingProgram"

    .line 43
    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getExternalTransactionToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12d

    .line 45
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->getExternalTransactionToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "externalTransactionToken"

    .line 46
    invoke-virtual {p6, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12d
    new-instance p1, Ljava/util/ArrayList;

    .line 47
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingFlowParams;->zzk()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13a
    :goto_13a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 49
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->getSubscriptionProductReplacementParams()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$SubscriptionProductReplacementParams;

    move-result-object p3

    if-eqz p3, :cond_13a

    .line 50
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object p3

    .line 51
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->getSubscriptionProductReplacementParams()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$SubscriptionProductReplacementParams;

    move-result-object p2

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzel;->zza()Lcom/google/android/gms/internal/play_billing/zzek;

    move-result-object p4

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzev;->zza()Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p5

    const-string p7, "subs"

    invoke-static {p3, p7, p10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzeu;

    .line 54
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/play_billing/zzek;->zza(Lcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzek;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzev;->zza()Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p3

    .line 56
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$SubscriptionProductReplacementParams;->getOldProductId()Ljava/lang/String;

    move-result-object p5

    .line 57
    invoke-static {p5, p7, p10}, Lcom/google/android/gms/internal/play_billing/zzc;->zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 58
    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/play_billing/zzeu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzeu;

    .line 59
    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/play_billing/zzek;->zzb(Lcom/google/android/gms/internal/play_billing/zzeu;)Lcom/google/android/gms/internal/play_billing/zzek;

    .line 60
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$SubscriptionProductReplacementParams;->getReplacementMode()I

    move-result p2

    packed-switch p2, :pswitch_data_1c0

    move p2, p8

    goto :goto_196

    :pswitch_187
    const/16 p2, 0x9

    goto :goto_196

    :pswitch_18a
    const/16 p2, 0x8

    goto :goto_196

    :pswitch_18d
    const/4 p2, 0x7

    goto :goto_196

    :pswitch_18f
    const/4 p2, 0x6

    goto :goto_196

    :pswitch_191
    const/4 p2, 0x4

    goto :goto_196

    :pswitch_193
    const/4 p2, 0x3

    goto :goto_196

    :pswitch_195
    const/4 p2, 0x2

    .line 61
    :goto_196
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/play_billing/zzek;->zzc(I)Lcom/google/android/gms/internal/play_billing/zzek;

    .line 62
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzel;

    .line 63
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13a

    .line 64
    :cond_1a3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1bf

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzen;->zza()Lcom/google/android/gms/internal/play_billing/zzem;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzem;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/zzem;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzen;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object p0

    const-string p1, "subscriptionProductReplacementParamsList"

    .line 69
    invoke-virtual {p6, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1bf
    return-object p6

    :pswitch_data_1c0
    .packed-switch 0x1
        :pswitch_195
        :pswitch_193
        :pswitch_191
        :pswitch_18f
        :pswitch_18d
        :pswitch_18a
        :pswitch_187
    .end packed-switch
.end method

.method public static zzg(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zza;J)Landroid/os/Bundle;
    .registers 13

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p3, "9.1.0"

    .line 2
    invoke-static {p0, p3, p1, p6, p7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 3
    const-string p1, "enablePendingPurchases"

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "SKU_DETAILS_RESPONSE_FORMAT"

    const-string p4, "PRODUCT_DETAILS"

    .line 4
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    const-string p4, "subs"

    const-string p6, "inapp"

    invoke-static {p4, p6}, Lcom/google/android/gms/internal/play_billing/zzca;->zzm(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p4, "PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS"

    .line 6
    invoke-virtual {p0, p4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-static {p6}, Lcom/google/android/gms/internal/play_billing/zzca;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p4, "PRODUCT_TYPES_TO_RETURN_PREORDER_OFFERS"

    .line 8
    invoke-virtual {p0, p4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-static {p6}, Lcom/google/android/gms/internal/play_billing/zzca;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p4

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p4, "PRODUCT_TYPES_TO_RETURN_RENT_OFFERS"

    .line 10
    invoke-virtual {p0, p4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "SHOULD_RETURN_UNFETCHED_PRODUCTS"

    .line 11
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p5}, Lcom/google/android/gms/internal/play_billing/zza;->zzb(Lcom/google/android/gms/internal/play_billing/zza;)Z

    move-result p1

    if-eqz p1, :cond_55

    const-string p1, "enablePendingPurchaseForSubscriptions"

    .line 12
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_55
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p6

    const/4 p7, 0x0

    move v0, p7

    move v1, v0

    :goto_6b
    const/4 v2, 0x0

    if-ge p7, p6, :cond_a5

    invoke-interface {p2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, p3

    or-int/2addr v0, v4

    .line 19
    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->getDynamicProductToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->getDynamicProductToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, p3

    or-int/2addr v1, v4

    .line 21
    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    move-result-object v3

    const-string v4, "first_party"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    const-string v3, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a2
    add-int/lit8 p7, p7, 0x1

    goto :goto_6b

    :cond_a5
    if-eqz v0, :cond_ac

    const-string p2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 24
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    :cond_ac
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b7

    const-string p1, "SKU_SERIALIZED_DOCID_LIST"

    .line 26
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    :cond_b7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c2

    const-string p1, "accountName"

    .line 28
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    if-eqz v1, :cond_c9

    const-string p1, "SKU_DYNAMIC_PRODUCT_TOKEN_LIST"

    .line 29
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_c9
    return-object p0
.end method

.method public static zzh(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "9.1.0"

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    return-object p0
.end method

.method public static zzi(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .registers 4

    if-nez p0, :cond_1b

    .line 1
    const-string p0, "BillingHelper"

    const-string p1, "Got null intent!"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p0

    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    const-string p1, "An internal error occurred."

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 4
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 6
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, ""

    if-nez p0, :cond_a

    const-string p0, "Unexpected null bundle received!"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    const-string v1, "DEBUG_MESSAGE"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "getDebugMessageFromBundle() got null response code, assuming OK"

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_18
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 5
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected type for debug message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static zzk(I)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zza(I)Lcom/google/android/gms/internal/play_billing/zzb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzb;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzl(Landroid/os/Bundle;Ljava/util/Set;)Ljava/util/List;
    .registers 8

    .line 1
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    const-string v1, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "BillingHelper"

    if-eqz v0, :cond_58

    if-nez v1, :cond_18

    goto :goto_58

    .line 9
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found purchase list of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " items"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 10
    :goto_33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_57

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_57

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/android/billingclient/api/Purchase;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 14
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 p0, p0, 0x1

    goto :goto_33

    :cond_57
    return-object v2

    .line 3
    :cond_58
    :goto_58
    const-string v0, "INAPP_PURCHASE_DATA"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "INAPP_DATA_SIGNATURE"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/android/billingclient/api/Purchase;

    move-result-object p0

    if-nez p0, :cond_71

    const-string p0, "Couldn\'t find single purchase data as well."

    .line 7
    invoke-static {v3, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_71
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static zzm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    .line 1
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    const v0, 0x9c40

    .line 2
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    if-lez v0, :cond_37

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v0, v1

    goto :goto_10

    .line 6
    :cond_34
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public static zzn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x5

    .line 1
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x5

    .line 1
    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_11

    :cond_8
    if-nez p2, :cond_e

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_e
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    :goto_11
    return-void
.end method

.method private static zzp(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/android/billingclient/api/Purchase;
    .registers 6

    const/4 v0, 0x0

    .line 1
    const-string v1, "BillingHelper"

    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    :try_start_7
    new-instance v2, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v2, p0, p1}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_13

    .line 2
    :try_start_c
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_f} :catch_10

    return-object v2

    :catch_10
    move-exception p0

    move-object v0, v2

    goto :goto_14

    :catch_13
    move-exception p0

    .line 4
    :goto_14
    const-string p1, "Got JSONException while parsing purchase data: "

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_22
    const-string p0, "Received a null purchase data."

    .line 4
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "subs:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
