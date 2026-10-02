.class final Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field private static final DELEGATE_TO_BACKEND_RESPONSE_DATA_KEY:Ljava/lang/String; = "RESPONSE_DATA"

.field private static final TAG:Ljava/lang/String; = "CreateBillingProgramReportingDetailsDelegateToBackendCallback"


# instance fields
.field final billingApiVersion:I

.field final billingLogger:Lcom/android/billingclient/api/zzdd;

.field final billingProgram:I

.field final executorService:Ljava/util/concurrent/ExecutorService;

.field final handler:Landroid/os/Handler;

.field final listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;ILcom/android/billingclient/api/zzdd;ILandroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    iput p2, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingProgram:I

    iput-object p3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iput p4, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    iput-object p5, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private parseReportingDetails(Landroid/os/Bundle;)Lcom/android/billingclient/api/BillingProgramReportingDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "RESPONSE_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb([B)Lcom/google/android/gms/internal/play_billing/zzdx;

    move-result-object p1

    new-instance v0, Lcom/android/billingclient/api/BillingProgramReportingDetails;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzdx;->zzc()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzc()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingProgram:I

    invoke-direct {v0, p1, v1}, Lcom/android/billingclient/api/BillingProgramReportingDetails;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 1
    :cond_1c
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Response data is null"

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private returnListenerResponseOnSuccess(Lcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V
    .registers 10

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->parseReportingDetails(Landroid/os/Bundle;)Lcom/android/billingclient/api/BillingProgramReportingDetails;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_a

    iget-object v0, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void

    :catch_a
    move-exception v0

    move-object p1, v0

    const-string p2, "CreateBillingProgramReportingDetailsDelegateToBackendCallback"

    const-string v0, "Got a JSON exception trying to decode billing program reporting details."

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 3
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    .line 4
    invoke-virtual {p2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v4

    iget v5, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    .line 5
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void
.end method


# virtual methods
.method public onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    .line 2
    invoke-virtual {v3}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v3

    iget v4, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    .line 1
    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    iget-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    .line 3
    invoke-interface {p1, v2, v0}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void

    .line 4
    :cond_1a
    sget-object v1, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    .line 5
    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget-object v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    iget v4, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    const-string v5, "CreateBillingProgramReportingDetailsDelegateToBackendCallback"

    .line 6
    invoke-static {p1, v5, v2, v3, v4}, Lcom/android/billingclient/api/zzdm;->zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->listener:Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;

    if-nez v3, :cond_3c

    iget-object p1, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingLogger:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaR:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 7
    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v1

    iget v3, p0, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->billingApiVersion:I

    .line 8
    invoke-static {v0, v2, p1, v1, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-void

    :cond_3c
    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_46

    .line 9
    invoke-interface {v3, v2, v0}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void

    .line 10
    :cond_46
    invoke-direct {p0, v2, p1}, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;->returnListenerResponseOnSuccess(Lcom/android/billingclient/api/BillingResult;Landroid/os/Bundle;)V

    return-void
.end method
