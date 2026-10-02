.class public final Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/DeveloperBillingOptionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Landroid/net/Uri;

.field private zzb:I

.field private zzc:I

.field private zzd:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzb:I

    iput v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzdn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzb:I

    iput p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzc:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzc:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzb:I

    return p0
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zza:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/DeveloperBillingOptionParams;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzc:I

    if-eqz v0, :cond_36

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zza:Landroid/net/Uri;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "External transaction token is required for billing choice with an external link."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zza:Landroid/net/Uri;

    if-eqz v0, :cond_2f

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    goto :goto_2f

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI must have a scheme."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    new-instance v0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams;-><init>(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;Lcom/android/billingclient/api/zzdn;)V

    return-object v0

    .line 1
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Billing program is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzc:I

    return-object p0
.end method

.method public setExternalTransactionToken(Ljava/lang/String;)Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public setLaunchMode(I)Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzb:I

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zza:Landroid/net/Uri;

    return-object p0
.end method
