.class public Lcom/android/billingclient/api/BillingResult$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzdg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingResult;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v0}, Lcom/android/billingclient/api/BillingResult;-><init>()V

    iget v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zza:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->zzc(Lcom/android/billingclient/api/BillingResult;I)V

    iget v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    .line 2
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->zzb(Lcom/android/billingclient/api/BillingResult;I)V

    iget-object v1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingResult;->zza(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setOnPurchasesUpdatedSubResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zzb:I

    return-object p0
.end method

.method public setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingResult$Builder;->zza:I

    return-object p0
.end method
