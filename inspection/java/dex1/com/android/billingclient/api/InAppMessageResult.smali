.class public final Lcom/android/billingclient/api/InAppMessageResult;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/InAppMessageResult$InAppMessageResponseCode;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/InAppMessageResult;->zza:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/InAppMessageResult;->zzb:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/billingclient/api/InAppMessageResult;->zza:I

    iput-object p2, p0, Lcom/android/billingclient/api/InAppMessageResult;->zzb:Ljava/lang/String;

    return-void
.end method

.method static zza(Landroid/os/Bundle;)Lcom/android/billingclient/api/InAppMessageResult;
    .registers 5

    if-nez p0, :cond_a

    .line 1
    new-instance p0, Lcom/android/billingclient/api/InAppMessageResult;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/InAppMessageResult;-><init>(ILjava/lang/String;)V

    return-object p0

    :cond_a
    new-instance v0, Lcom/android/billingclient/api/InAppMessageResult;

    const-string v1, "InAppMessageResult"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zza(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    const-string v2, "IN_APP_MESSAGE_PURCHASE_TOKEN"

    .line 2
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IN_APP_MESSAGE_PURCHASE_ID"

    .line 3
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/billingclient/api/InAppMessageResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPurchaseToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/InAppMessageResult;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/InAppMessageResult;->zza:I

    return v0
.end method
