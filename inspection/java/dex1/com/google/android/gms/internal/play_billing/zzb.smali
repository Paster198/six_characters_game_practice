.class final enum Lcom/google/android/gms/internal/play_billing/zzb;
.super Ljava/lang/Enum;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzd:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zze:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzf:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzg:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzh:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzi:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzj:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzk:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzl:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzm:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzn:Lcom/google/android/gms/internal/play_billing/zzb;

.field public static final enum zzo:Lcom/google/android/gms/internal/play_billing/zzb;

.field private static final zzp:Lcom/google/android/gms/internal/play_billing/zzcd;

.field private static final synthetic zzq:[Lcom/google/android/gms/internal/play_billing/zzb;


# instance fields
.field private final zzr:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzb;

    const/16 v1, -0x3e7

    const-string v2, "RESPONSE_CODE_UNSPECIFIED"

    const/4 v15, 0x0

    invoke-direct {v0, v2, v15, v1}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzb;

    const/4 v2, -0x3

    .line 2
    const-string v3, "SERVICE_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/play_billing/zzb;->zzb:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzb;

    const/4 v3, -0x2

    .line 3
    const-string v5, "FEATURE_NOT_SUPPORTED"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/play_billing/zzb;->zzc:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzb;

    const/4 v5, -0x1

    .line 4
    const-string v7, "SERVICE_DISCONNECTED"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v5}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/play_billing/zzb;->zzd:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 5
    const-string v7, "OK"

    const/4 v9, 0x4

    invoke-direct {v5, v7, v9, v15}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/play_billing/zzb;->zze:Lcom/google/android/gms/internal/play_billing/zzb;

    move-object v7, v5

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 6
    const-string v10, "USER_CANCELED"

    const/4 v11, 0x5

    invoke-direct {v5, v10, v11, v4}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/play_billing/zzb;->zzf:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 7
    const-string v10, "SERVICE_UNAVAILABLE"

    const/4 v12, 0x6

    invoke-direct {v4, v10, v12, v6}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/play_billing/zzb;->zzg:Lcom/google/android/gms/internal/play_billing/zzb;

    move-object v6, v4

    move-object v4, v7

    new-instance v7, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 8
    const-string v10, "BILLING_UNAVAILABLE"

    const/4 v13, 0x7

    invoke-direct {v7, v10, v13, v8}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/play_billing/zzb;->zzh:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v8, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 9
    const-string v10, "ITEM_UNAVAILABLE"

    const/16 v14, 0x8

    invoke-direct {v8, v10, v14, v9}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/play_billing/zzb;->zzi:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzb;

    const-string v10, "DEVELOPER_ERROR"

    const/16 v15, 0x9

    .line 10
    invoke-direct {v9, v10, v15, v11}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/play_billing/zzb;->zzj:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v10, Lcom/google/android/gms/internal/play_billing/zzb;

    const-string v11, "ERROR"

    const/16 v15, 0xa

    .line 11
    invoke-direct {v10, v11, v15, v12}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/play_billing/zzb;->zzk:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v11, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 12
    const-string v12, "ITEM_ALREADY_OWNED"

    const/16 v15, 0xb

    invoke-direct {v11, v12, v15, v13}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/play_billing/zzb;->zzl:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v12, Lcom/google/android/gms/internal/play_billing/zzb;

    .line 13
    const-string v13, "ITEM_NOT_OWNED"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v15, v14}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/play_billing/zzb;->zzm:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v13, Lcom/google/android/gms/internal/play_billing/zzb;

    const-string v14, "EXPIRED_OFFER_TOKEN"

    const/16 v15, 0xd

    move-object/from16 v17, v0

    const/16 v0, 0xb

    .line 14
    invoke-direct {v13, v14, v15, v0}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/play_billing/zzb;->zzn:Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v14, Lcom/google/android/gms/internal/play_billing/zzb;

    const-string v0, "NETWORK_ERROR"

    const/16 v15, 0xe

    move-object/from16 v16, v1

    const/16 v1, 0xc

    .line 15
    invoke-direct {v14, v0, v15, v1}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/play_billing/zzb;->zzo:Lcom/google/android/gms/internal/play_billing/zzb;

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    filled-new-array/range {v0 .. v14}, [Lcom/google/android/gms/internal/play_billing/zzb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->zzq:[Lcom/google/android/gms/internal/play_billing/zzb;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzcc;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzb;->values()[Lcom/google/android/gms/internal/play_billing/zzb;

    move-result-object v1

    array-length v2, v1

    const/4 v15, 0x0

    :goto_c2
    if-ge v15, v2, :cond_d2

    aget-object v3, v1, v15

    .line 17
    iget v4, v3, Lcom/google/android/gms/internal/play_billing/zzb;->zzr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/play_billing/zzcc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcc;

    add-int/lit8 v15, v15, 0x1

    goto :goto_c2

    .line 18
    :cond_d2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcc;->zzb()Lcom/google/android/gms/internal/play_billing/zzcd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->zzp:Lcom/google/android/gms/internal/play_billing/zzcd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzb;->zzr:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/zzb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->zzq:[Lcom/google/android/gms/internal/play_billing/zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/zzb;

    return-object v0
.end method

.method static zza(I)Lcom/google/android/gms/internal/play_billing/zzb;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzb;->zzp:Lcom/google/android/gms/internal/play_billing/zzcd;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcd;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzb;->zza:Lcom/google/android/gms/internal/play_billing/zzb;

    return-object p0

    .line 2
    :cond_f
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzcd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzb;

    return-object p0
.end method
