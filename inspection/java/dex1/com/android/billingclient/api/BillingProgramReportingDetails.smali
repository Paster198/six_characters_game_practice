.class public final Lcom/android/billingclient/api/BillingProgramReportingDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private final billingProgram:I

.field private final externalTransactionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetails;->externalTransactionToken:Ljava/lang/String;

    iput p2, p0, Lcom/android/billingclient/api/BillingProgramReportingDetails;->billingProgram:I

    return-void
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetails;->billingProgram:I

    return v0
.end method

.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetails;->externalTransactionToken:Ljava/lang/String;

    return-object v0
.end method
