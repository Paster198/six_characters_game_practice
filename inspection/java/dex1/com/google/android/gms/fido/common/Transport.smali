.class public final enum Lcom/google/android/gms/fido/common/Transport;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/common/Transport$UnsupportedTransportException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/fido/common/Transport;",
        ">;",
        "Lcom/google/android/gms/common/internal/ReflectedParcelable;"
    }
.end annotation


# static fields
.field public static final enum BLUETOOTH_CLASSIC:Lcom/google/android/gms/fido/common/Transport;

.field public static final enum BLUETOOTH_LOW_ENERGY:Lcom/google/android/gms/fido/common/Transport;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/common/Transport;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum HYBRID:Lcom/google/android/gms/fido/common/Transport;

.field public static final enum INTERNAL:Lcom/google/android/gms/fido/common/Transport;

.field public static final enum NFC:Lcom/google/android/gms/fido/common/Transport;

.field public static final enum USB:Lcom/google/android/gms/fido/common/Transport;

.field public static final enum zza:Lcom/google/android/gms/fido/common/Transport;

.field private static final synthetic zzb:[Lcom/google/android/gms/fido/common/Transport;


# instance fields
.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/common/Transport;

    const-string v1, "BLUETOOTH_CLASSIC"

    const/4 v2, 0x0

    const-string v3, "bt"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/fido/common/Transport;->BLUETOOTH_CLASSIC:Lcom/google/android/gms/fido/common/Transport;

    new-instance v1, Lcom/google/android/gms/fido/common/Transport;

    const-string v2, "BLUETOOTH_LOW_ENERGY"

    const/4 v3, 0x1

    .line 2
    const-string v4, "ble"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/fido/common/Transport;->BLUETOOTH_LOW_ENERGY:Lcom/google/android/gms/fido/common/Transport;

    new-instance v2, Lcom/google/android/gms/fido/common/Transport;

    const-string v3, "NFC"

    const/4 v4, 0x2

    .line 3
    const-string v5, "nfc"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/fido/common/Transport;->NFC:Lcom/google/android/gms/fido/common/Transport;

    new-instance v3, Lcom/google/android/gms/fido/common/Transport;

    const-string v4, "USB"

    const/4 v5, 0x3

    .line 4
    const-string v6, "usb"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/fido/common/Transport;->USB:Lcom/google/android/gms/fido/common/Transport;

    new-instance v4, Lcom/google/android/gms/fido/common/Transport;

    const-string v5, "INTERNAL"

    const/4 v6, 0x4

    .line 5
    const-string v7, "internal"

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/fido/common/Transport;->INTERNAL:Lcom/google/android/gms/fido/common/Transport;

    new-instance v5, Lcom/google/android/gms/fido/common/Transport;

    const-string v6, "HYBRID"

    const/4 v7, 0x5

    .line 6
    const-string v8, "cable"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/fido/common/Transport;->HYBRID:Lcom/google/android/gms/fido/common/Transport;

    new-instance v6, Lcom/google/android/gms/fido/common/Transport;

    const-string v7, "HYBRID_V2"

    const/4 v8, 0x6

    .line 7
    const-string v9, "hybrid"

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/fido/common/Transport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/android/gms/fido/common/Transport;->zza:Lcom/google/android/gms/fido/common/Transport;

    filled-new-array/range {v0 .. v6}, [Lcom/google/android/gms/fido/common/Transport;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/common/Transport;->zzb:[Lcom/google/android/gms/fido/common/Transport;

    new-instance v0, Lcom/google/android/gms/fido/common/zza;

    invoke-direct {v0}, Lcom/google/android/gms/fido/common/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/common/Transport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/fido/common/Transport;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/common/Transport;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/fido/common/Transport$UnsupportedTransportException;
        }
    .end annotation

    .line 1
    const-string v0, "hybrid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzhu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/google/android/gms/internal/fido/zzhx;->zzb()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_18

    .line 5
    :cond_15
    sget-object p0, Lcom/google/android/gms/fido/common/Transport;->HYBRID:Lcom/google/android/gms/fido/common/Transport;

    return-object p0

    .line 3
    :cond_18
    :goto_18
    invoke-static {}, Lcom/google/android/gms/fido/common/Transport;->values()[Lcom/google/android/gms/fido/common/Transport;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 4
    iget-object v4, v3, Lcom/google/android/gms/fido/common/Transport;->zzc:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return-object v3

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    new-instance v0, Lcom/google/android/gms/fido/common/Transport$UnsupportedTransportException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Transport %s not supported"

    .line 5
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/common/Transport$UnsupportedTransportException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseTransports(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/common/Transport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_e
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 5
    :try_start_20
    invoke-static {v2}, Lcom/google/android/gms/fido/common/Transport;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/common/Transport;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Lcom/google/android/gms/fido/common/Transport$UnsupportedTransportException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_33

    .line 7
    :catch_28
    const-string v3, "Ignoring unrecognized transport "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Transport"

    .line 6
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 5
    :cond_36
    new-instance p0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/fido/common/Transport;
    .registers 2

    .line 1
    const-class v0, Lcom/google/android/gms/fido/common/Transport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/common/Transport;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/fido/common/Transport;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/common/Transport;->zzb:[Lcom/google/android/gms/fido/common/Transport;

    invoke-virtual {v0}, [Lcom/google/android/gms/fido/common/Transport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/fido/common/Transport;

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

    iget-object v0, p0, Lcom/google/android/gms/fido/common/Transport;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/fido/common/Transport;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
