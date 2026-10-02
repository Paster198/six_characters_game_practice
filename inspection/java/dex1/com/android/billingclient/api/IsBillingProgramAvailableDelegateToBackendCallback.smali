.class final Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field private static final DELEGATE_TO_BACKEND_RESPONSE_DATA_KEY:Ljava/lang/String; = "RESPONSE_DATA"

.field private static final TAG:Ljava/lang/String; = "IsBillingProgramAvailableDelegateToBackendCallback"


# instance fields
.field final billingApiVersion:I

.field final billingLogger:Lcom/android/billingclient/api/zzdd;

.field final billingProgram:I

.field final executorService:Ljava/util/concurrent/ExecutorService;

.field final handler:Landroid/os/Handler;

.field final listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/zzdd;ILandroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    iput p2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingProgram:I

    iput-object p3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iput p4, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    iput-object p5, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 12

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v4

    if-nez p4, :cond_a

    const/4 p4, 0x0

    goto :goto_e

    .line 3
    :cond_a
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    :goto_e
    move-object v6, p4

    .line 2
    iget v5, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    iget-object v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    move-object v2, p2

    move-object v1, p3

    .line 1
    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    new-instance p3, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {p3, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V

    .line 4
    invoke-interface {p2, v2, p3}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void
.end method

.method private parseBillingChoiceAvailabilityDetails(Lcom/google/android/gms/internal/play_billing/zzej;)Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzej;->zza()Lcom/google/android/gms/internal/play_billing/zzdu;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzdu;->zze()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x0

    :cond_11
    new-instance v0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzdu;->zzc()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;-><init>(IZ)V

    return-object v0
.end method

.method private returnListenerResponseOnSuccess(ILcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x5

    if-ne p1, v0, :cond_34

    .line 2
    :try_start_3
    const-string p1, "RESPONSE_DATA"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_14

    .line 3
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_14
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzej;->zzc([B)Lcom/google/android/gms/internal/play_billing/zzej;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzej;->zze()Z

    move-result v1

    if-nez v1, :cond_26

    .line 8
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    :cond_26
    new-instance p3, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    .line 6
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->parseBillingChoiceAvailabilityDetails(Lcom/google/android/gms/internal/play_billing/zzej;)Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(ILcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    goto :goto_39

    :catch_30
    move-exception p1

    move-object p2, p1

    move p1, v0

    goto :goto_40

    .line 7
    :cond_34
    :try_start_34
    new-instance p3, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    .line 1
    invoke-direct {p3, p1}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3f

    .line 6
    :goto_39
    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    .line 7
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void

    :catch_3f
    move-exception p2

    .line 1
    :goto_40
    const-string p3, "IsBillingProgramAvailableDelegateToBackendCallback"

    const-string v0, "Got a JSON exception trying to decode billing program availability details."

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->logErrorAndReturnDefaultAvailabilityDetails(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_20

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    .line 2
    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    .line 1
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    iget v0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingProgram:I

    new-instance v2, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {v2, v0}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V

    .line 3
    invoke-interface {p1, v1, v2}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void

    .line 4
    :cond_20
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v1

    iget-object v2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iget v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    const-string v4, "IsBillingProgramAvailableDelegateToBackendCallback"

    .line 6
    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/billingclient/api/zzdm;->zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramAvailabilityListener;

    if-nez v2, :cond_42

    iget-object p1, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaR:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v0

    iget v3, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingApiVersion:I

    .line 8
    invoke-static {v2, v1, p1, v0, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-void

    :cond_42
    iget v0, p0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->billingProgram:I

    .line 9
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;->returnListenerResponseOnSuccess(ILcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V

    return-void
.end method
