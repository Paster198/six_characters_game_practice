.class final enum Lcom/android/billingclient/api/zzdk;
.super Ljava/lang/Enum;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final enum zza:Lcom/android/billingclient/api/zzdk;

.field public static final enum zzb:Lcom/android/billingclient/api/zzdk;

.field public static final enum zzc:Lcom/android/billingclient/api/zzdk;

.field public static final enum zzd:Lcom/android/billingclient/api/zzdk;

.field private static final synthetic zze:[Lcom/android/billingclient/api/zzdk;


# instance fields
.field private final zzf:Ljava/lang/String;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzdk;

    const/4 v1, 0x0

    const/16 v2, 0x1d

    const-string v3, "GET_BILLING_CONFIG"

    const-string v4, "getBillingConfig"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    new-instance v1, Lcom/android/billingclient/api/zzdk;

    const/4 v2, 0x1

    const/16 v3, 0x21

    .line 2
    const-string v4, "IS_BILLING_PROGRAM_AVAILABLE_ASYNC"

    const-string v5, "isIndirectBillingProgramAvailable"

    invoke-direct {v1, v4, v2, v5, v3}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    new-instance v2, Lcom/android/billingclient/api/zzdk;

    const/4 v3, 0x2

    const/16 v4, 0x23

    .line 3
    const-string v5, "CREATE_BILLING_PROGRAM_REPORTING_DETAILS_ASYNC"

    const-string v6, "createIndirectBillingReportingDetails"

    invoke-direct {v2, v5, v3, v6, v4}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    new-instance v3, Lcom/android/billingclient/api/zzdk;

    const/4 v4, 0x3

    const/16 v5, 0x28

    .line 4
    const-string v6, "GET_BILLING_CHOICE_INFO_ASYNC"

    const-string v7, "getBillingChoiceInfo"

    invoke-direct {v3, v6, v4, v7, v5}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/android/billingclient/api/zzdk;->zzd:Lcom/android/billingclient/api/zzdk;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/billingclient/api/zzdk;

    move-result-object v0

    sput-object v0, Lcom/android/billingclient/api/zzdk;->zze:[Lcom/android/billingclient/api/zzdk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/billingclient/api/zzdk;->zzf:Ljava/lang/String;

    iput p4, p0, Lcom/android/billingclient/api/zzdk;->zzg:I

    return-void
.end method

.method public static values()[Lcom/android/billingclient/api/zzdk;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zze:[Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, [Lcom/android/billingclient/api/zzdk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/zzdk;

    return-object v0
.end method


# virtual methods
.method final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzdk;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method final zzb()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/zzdk;->zzg:I

    return v0
.end method
