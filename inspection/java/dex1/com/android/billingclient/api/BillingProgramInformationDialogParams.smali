.class public final Lcom/android/billingclient/api/BillingProgramInformationDialogParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    }
.end annotation


# instance fields
.field private final billingProgram:I

.field private final externalTransactionToken:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zza(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->billingProgram:I

    .line 2
    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zzb(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->externalTransactionToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;Lcom/android/billingclient/api/zzde;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;-><init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;-><init>(Lcom/android/billingclient/api/zzde;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->billingProgram:I

    return v0
.end method

.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->externalTransactionToken:Ljava/lang/String;

    return-object v0
.end method
