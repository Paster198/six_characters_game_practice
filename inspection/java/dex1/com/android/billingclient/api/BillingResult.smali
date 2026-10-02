.class public final Lcom/android/billingclient/api/BillingResult;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingResult$Builder;
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/BillingResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;-><init>(Lcom/android/billingclient/api/zzdg;)V

    return-object v0
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/BillingResult;I)V
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingResult;->zzb:I

    return-void
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/BillingResult;I)V
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingResult;->zza:I

    return-void
.end method


# virtual methods
.method public getDebugMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingResult;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getOnPurchasesUpdatedSubResponseCode()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->zzb:I

    return v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->zza:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzk(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/BillingResult;->zzc:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response Code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Debug Message: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
