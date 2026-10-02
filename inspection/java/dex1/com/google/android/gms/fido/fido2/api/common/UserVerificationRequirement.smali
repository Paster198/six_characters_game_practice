.class public final enum Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zza:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

.field public static final enum zzb:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

.field public static final enum zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

.field private static final synthetic zzd:[Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    const-string v1, "USER_VERIFICATION_REQUIRED"

    const/4 v2, 0x0

    const-string v3, "required"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zza:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    const-string v2, "USER_VERIFICATION_PREFERRED"

    const/4 v3, 0x1

    .line 2
    const-string v4, "preferred"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zzb:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    const-string v3, "USER_VERIFICATION_DISCOURAGED"

    const/4 v4, 0x2

    .line 3
    const-string v5, "discouraged"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zzc:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zzd:[Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zze:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/zzbc;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->values()[Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zze:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzbc;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/zzbc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zzd:[Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->zze:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
