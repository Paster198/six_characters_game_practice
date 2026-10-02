.class public final Lcom/android/billingclient/api/GetBillingChoiceInfoParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;,
        Lcom/android/billingclient/api/GetBillingChoiceInfoParams$ImageLayout;
    }
.end annotation


# instance fields
.field private final billingProgram:I

.field private final playBillingChoiceImageLayout:Ljava/lang/String;

.field private final userLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzc(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->userLocale:Ljava/util/Locale;

    .line 2
    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zza(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->billingProgram:I

    .line 3
    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->playBillingChoiceImageLayout:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;Lcom/android/billingclient/api/zzdw;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;-><init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;-><init>(Lcom/android/billingclient/api/zzdw;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->billingProgram:I

    return v0
.end method

.method public getPlayBillingChoiceImageLayout()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->playBillingChoiceImageLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->userLocale:Ljava/util/Locale;

    return-object v0
.end method
