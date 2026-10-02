.class public final Lcom/android/billingclient/api/DeveloperBillingOptionParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;,
        Lcom/android/billingclient/api/DeveloperBillingOptionParams$LaunchMode;
    }
.end annotation


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;Lcom/android/billingclient/api/zzdn;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzc(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zza:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzb(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zzb:I

    invoke-static {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zza(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zzc:I

    invoke-static {p1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;->zzd(Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/DeveloperBillingOptionParams$Builder;-><init>(Lcom/android/billingclient/api/zzdn;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zzc:I

    return v0
.end method

.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchMode()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zzb:I

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperBillingOptionParams;->zza:Landroid/net/Uri;

    return-object v0
.end method
