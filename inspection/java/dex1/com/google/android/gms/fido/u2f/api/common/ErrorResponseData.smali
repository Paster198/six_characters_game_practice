.class public Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;
.super Lcom/google/android/gms/fido/u2f/api/common/ResponseData;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final JSON_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final JSON_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"


# instance fields
.field private final zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

.field private final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fido/u2f/api/common/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/fido/u2f/api/common/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/fido/u2f/api/common/ResponseData;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->toErrorCode(I)Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    iput-object p2, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/fido/u2f/api/common/ResponseData;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/fido/u2f/api/common/ResponseData;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    iput-object p1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    iput-object p2, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v1
.end method

.method public getErrorCode()Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    return-object v0
.end method

.method public getErrorCodeAsInt()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->getCode()I

    move-result v0

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toJsonObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "errorCode"

    iget-object v2, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_19

    const-string v2, "errorMessage"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    :cond_19
    return-object v0

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzbj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzbi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zza:Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;

    const-string v2, "errorCode"

    invoke-virtual {v1}, Lcom/google/android/gms/fido/u2f/api/common/ErrorCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/fido/zzbi;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/fido/zzbi;

    iget-object v1, p0, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_18

    const-string v2, "errorMessage"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/fido/zzbi;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzbi;

    .line 3
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->getErrorCodeAsInt()I

    move-result v1

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fido/u2f/api/common/ErrorResponseData;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
