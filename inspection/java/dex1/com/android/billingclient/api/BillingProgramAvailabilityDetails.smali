.class public final Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    return-void
.end method

.method constructor <init>(ILcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    iput-object p2, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    iget v1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    .line 2
    iget v3, p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    iget-object p1, p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    .line 3
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public getBillingChoiceAvailabilityDetails()Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    return-object v0
.end method

.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
