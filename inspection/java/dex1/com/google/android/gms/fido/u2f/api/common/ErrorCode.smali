.class public final enum Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum BAD_REQUEST:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum CONFIGURATION_UNSUPPORTED:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DEVICE_INELIGIBLE:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum OK:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum OTHER_ERROR:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field public static final enum TIMEOUT:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field private static final zza:Ljava/lang/String;

.field private static final synthetic zzb:[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;


# instance fields
.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->OK:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v1, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v2, "OTHER_ERROR"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->OTHER_ERROR:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v2, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v3, "BAD_REQUEST"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->BAD_REQUEST:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v3, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v4, "CONFIGURATION_UNSUPPORTED"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->CONFIGURATION_UNSUPPORTED:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v4, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v5, "DEVICE_INELIGIBLE"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->DEVICE_INELIGIBLE:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    new-instance v5, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v6, "TIMEOUT"

    const/4 v7, 0x5

    .line 6
    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->TIMEOUT:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzb:[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    .line 7
    const-string v0, "ErrorCode"

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/fido/u2f/api/common/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzc:I

    return-void
.end method

.method public static toErrorCode(I)Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->values()[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzc:I

    if-ne p0, v4, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    sget-object p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->OTHER_ERROR:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzb:[Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzc:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget p2, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->zzc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
