.class public final enum Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference$UnsupportedAttestationConveyancePreferenceException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DIRECT:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

.field public static final enum INDIRECT:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

.field public static final enum NONE:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

.field private static final synthetic zza:[Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;


# instance fields
.field private final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->NONE:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    const-string v2, "INDIRECT"

    const/4 v3, 0x1

    .line 2
    const-string v4, "indirect"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->INDIRECT:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    const-string v3, "DIRECT"

    const/4 v4, 0x2

    .line 3
    const-string v5, "direct"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->DIRECT:Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->zza:[Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference$UnsupportedAttestationConveyancePreferenceException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->values()[Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->zzb:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference$UnsupportedAttestationConveyancePreferenceException;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference$UnsupportedAttestationConveyancePreferenceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->zza:[Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
