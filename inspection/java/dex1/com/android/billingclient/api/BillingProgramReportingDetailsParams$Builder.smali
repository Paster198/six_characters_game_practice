.class public final Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzdf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    if-eqz v0, :cond_1b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    if-eqz v0, :cond_c

    goto :goto_14

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Developer billing type must be specified for billing choice."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    new-instance v0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;-><init>(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;Lcom/android/billingclient/api/zzdf;)V

    return-object v0

    .line 1
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Billing program is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zza:I

    return-object p0
.end method

.method public setDeveloperBillingType(I)Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams$Builder;->zzb:I

    return-object p0
.end method
