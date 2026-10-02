.class public final enum Lcom/google/android/gms/internal/measurement/zzih;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmf;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zzih;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zzih;

.field private static final synthetic zzm:[Lcom/google/android/gms/internal/measurement/zzih;


# instance fields
.field private final zzn:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v1, "CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zza:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v2, "CLIENT_UPLOAD_ELIGIBLE"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzih;->zzb:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v3, "MEASUREMENT_SERVICE_NOT_ENABLED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzih;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v4, "ANDROID_TOO_OLD"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzih;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v5, "NON_PLAY_MODE"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzih;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v6, "SDK_TOO_OLD"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzih;->zzf:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v7, "MISSING_JOB_SCHEDULER"

    const/4 v8, 0x6

    .line 7
    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzih;->zzg:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v8, "NOT_ENABLED_IN_MANIFEST"

    const/4 v9, 0x7

    .line 8
    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzih;->zzh:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzih;

    const-string v9, "CLIENT_FLAG_OFF"

    const/16 v10, 0x8

    .line 9
    invoke-direct {v8, v9, v10, v10}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzih;->zzi:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zzih;

    const/16 v10, 0x9

    const/16 v11, 0x14

    .line 10
    const-string v12, "SERVICE_FLAG_OFF"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzih;->zzj:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v10, Lcom/google/android/gms/internal/measurement/zzih;

    const/16 v11, 0xa

    const/16 v12, 0x15

    .line 11
    const-string v13, "PINNED_TO_SERVICE_UPLOAD"

    invoke-direct {v10, v13, v11, v12}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/measurement/zzih;->zzk:Lcom/google/android/gms/internal/measurement/zzih;

    new-instance v11, Lcom/google/android/gms/internal/measurement/zzih;

    const/16 v12, 0xb

    const/16 v13, 0x16

    .line 12
    const-string v14, "MISSING_SGTM_SERVER_URL"

    invoke-direct {v11, v14, v12, v13}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/zzih;->zzl:Lcom/google/android/gms/internal/measurement/zzih;

    filled-new-array/range {v0 .. v11}, [Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zzm:[Lcom/google/android/gms/internal/measurement/zzih;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzn:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzih;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zzm:[Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzih;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzih;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/measurement/zzih;
    .registers 1

    packed-switch p0, :pswitch_data_2c

    packed-switch p0, :pswitch_data_42

    const/4 p0, 0x0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzl:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzk:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzj:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzi:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzh:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzg:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzf:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zze:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzd:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_26
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zzb:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_29
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzih;->zza:Lcom/google/android/gms/internal/measurement/zzih;

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x14
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzn:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzn:I

    return v0
.end method
