.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field volatile zza:Z

.field volatile zzb:Lcom/google/android/gms/internal/play_billing/zzbq;

.field private volatile zzc:Ljava/lang/String;

.field private volatile zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

.field private final zze:Landroid/content/Context;

.field private volatile zzf:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private volatile zzg:Lcom/android/billingclient/api/zzdu;

.field private volatile zzh:Lcom/android/billingclient/api/zzdd;

.field private volatile zzi:Lcom/android/billingclient/api/UserChoiceBillingListener;

.field private volatile zzj:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

.field private volatile zzk:Ljava/util/concurrent/ExecutorService;

.field private volatile zzl:Z

.field private volatile zzm:Z

.field private volatile zzn:Z

.field private volatile zzo:Z

.field private volatile zzp:Z

.field private volatile zzq:Z

.field private volatile zzr:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzaa;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Landroid/content/Context;

    return-void
.end method

.method private final zza()Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.play.billingclient.enableBillingOverridesTesting"

    .line 3
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v1

    const-string v2, "BillingClient"

    const-string v3, "Unable to retrieve metadata value for enableBillingOverridesTesting."

    .line 4
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingClient;
    .registers 11

    .line 1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zze:Landroid/content/Context;

    if-eqz v3, :cond_d1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzf:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzi:Lcom/android/billingclient/api/UserChoiceBillingListener;

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzr:Z

    if-nez v0, :cond_4a

    .line 17
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzl:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzm:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzo:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzp:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzq:Z

    if-eqz v0, :cond_25

    goto :goto_2d

    .line 10
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->zza()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/android/billingclient/api/zzda;

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/zzda;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-object v0

    :cond_3e
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    move-object v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v5, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    move-object v7, v5

    return-object v0

    :cond_4a
    move-object v7, p0

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for Google Play Billing purchases updates when enabling user choice billing or billing choice."

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    move-object v7, p0

    .line 16
    iget-object v0, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

    if-eqz v0, :cond_c9

    iget-object v0, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 12
    iget-object v0, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzf:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz v0, :cond_ac

    iget-object v0, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzi:Lcom/android/billingclient/api/UserChoiceBillingListener;

    if-nez v0, :cond_89

    iget-object v0, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzj:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    if-nez v0, :cond_89

    iget-object v2, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object v4, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzf:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->zza()Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Lcom/android/billingclient/api/zzda;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/zzda;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-object v0

    :cond_7f
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v7, p0

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-object v0

    :cond_89
    iget-object v2, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object v4, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzf:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iget-object v5, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzi:Lcom/android/billingclient/api/UserChoiceBillingListener;

    iget-object v6, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzj:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->zza()Z

    move-result v0

    if-eqz v0, :cond_a1

    new-instance v0, Lcom/android/billingclient/api/zzda;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v9, p0

    .line 7
    invoke-direct/range {v0 .. v9}, Lcom/android/billingclient/api/zzda;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-object v0

    :cond_a1
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v9, p0

    .line 8
    invoke-direct/range {v0 .. v9}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    move-object v7, v9

    return-object v0

    :cond_ac
    iget-object v2, v7, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 9
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->zza()Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v0, Lcom/android/billingclient/api/zzda;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 10
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/zzda;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-object v0

    .line 13
    :cond_be
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-object v0

    .line 2
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pending purchases for one-time products must be supported."

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableAlternativeBillingOnly()Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzl:Z

    return-object p0
.end method

.method public enableAutoServiceReconnection()Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    return-object p0
.end method

.method public enableBillingProgram(I)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/EnableBillingProgramParams;->newBuilder()Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;->setBillingProgram(I)Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/EnableBillingProgramParams$Builder;->build()Lcom/android/billingclient/api/EnableBillingProgramParams;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enableBillingProgram(Lcom/android/billingclient/api/EnableBillingProgramParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    return-object p0
.end method

.method public enableBillingProgram(Lcom/android/billingclient/api/EnableBillingProgramParams;)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 6

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/EnableBillingProgramParams;->getDeveloperProvidedBillingListener()Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzi:Lcom/android/billingclient/api/UserChoiceBillingListener;

    if-nez v0, :cond_28

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/EnableBillingProgramParams;->getBillingProgram()I

    move-result v0

    if-eq v0, v2, :cond_21

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/EnableBillingProgramParams;->getBillingProgram()I

    move-result v0

    if-ne v0, v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DeveloperProvidedBillingListener can only be set when enabling the EXTERNAL_PAYMENTS or BILLING_CHOICE program."

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/android/billingclient/api/EnableBillingProgramParams;->getDeveloperProvidedBillingListener()Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzj:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    goto :goto_30

    .line 3
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UserChoiceBillingListener and DeveloperProvidedBillingListener cannot be set at the same time."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_30
    :goto_30
    invoke-virtual {p1}, Lcom/android/billingclient/api/EnableBillingProgramParams;->getBillingProgram()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    const/4 v3, 0x2

    if-eq p1, v3, :cond_52

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4f

    if-eq p1, v2, :cond_4c

    if-ne p1, v1, :cond_44

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzr:Z

    return-object p0

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An invalid BillingProgram has been provided."

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4c
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzq:Z

    return-object p0

    :cond_4f
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzm:Z

    return-object p0

    .line 10
    :cond_52
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzp:Z

    return-object p0

    .line 9
    :cond_55
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzo:Z

    return-object p0
.end method

.method public enableExternalOffer()Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzm:Z

    return-object p0
.end method

.method public enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzd:Lcom/android/billingclient/api/PendingPurchasesParams;

    return-object p0
.end method

.method public enableUserChoiceBilling(Lcom/android/billingclient/api/UserChoiceBillingListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzi:Lcom/android/billingclient/api/UserChoiceBillingListener;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzj:Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    if-nez p1, :cond_7

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UserChoiceBillingListener and DeveloperProvidedBillingListener cannot be set at the same time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->zzf:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method
