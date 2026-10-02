.class public final Lcom/google/android/gms/fido/fido2/api/common/zzak;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private static final zza:[B


# instance fields
.field private final zzb:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzal;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzal;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "WebAuthn PRF\u0000"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zza:[B

    return-void
.end method

.method public constructor <init>([[B)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 2
    :goto_a
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    array-length v2, p1

    and-int/2addr v2, v1

    xor-int/2addr v2, v1

    if-eq v1, v2, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move v2, v0

    .line 4
    :goto_19
    array-length v3, p1

    if-ge v2, v3, :cond_4a

    if-eqz v2, :cond_25

    .line 5
    aget-object v3, p1, v2

    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    move v3, v0

    goto :goto_26

    :cond_25
    :goto_25
    move v3, v1

    :goto_26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    add-int/lit8 v3, v2, 0x1

    .line 6
    aget-object v4, p1, v3

    if-eqz v4, :cond_31

    move v4, v1

    goto :goto_32

    :cond_31
    move v4, v0

    :goto_32
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 7
    aget-object v3, p1, v3

    .line 8
    array-length v3, v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_43

    const/16 v4, 0x40

    if-ne v3, v4, :cond_41

    goto :goto_43

    :cond_41
    move v3, v0

    goto :goto_44

    :cond_43
    :goto_43
    move v3, v1

    :goto_44
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_19

    :cond_4a
    iput-object p1, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    return-void
.end method

.method public static zza(Lorg/json/JSONObject;Z)Lcom/google/android/gms/fido/fido2/api/common/zzak;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "evalByCredential"

    const-string v1, "eval"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_9
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_21

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzd(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 5
    :cond_21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zze(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5b

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzd(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 13
    :cond_5b
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zze(Lorg/json/JSONObject;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_66} :catch_76

    goto :goto_3a

    :cond_67
    new-instance p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;

    const/4 p1, 0x0

    new-array p1, p1, [[B

    .line 14
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    invoke-direct {p0, p1}, Lcom/google/android/gms/fido/fido2/api/common/zzak;-><init>([[B)V

    return-object p0

    .line 15
    :catch_76
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "invalid base64url value"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb([B)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    array-length v1, p0

    const-string v2, "first"

    const/16 v3, 0x20

    if-ne v1, v3, :cond_14

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_14
    const/4 v1, 0x0

    const/16 v4, 0xb

    .line 4
    invoke-static {p0, v1, v3, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-static {p0, v3, v3, v4}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    const-string v1, "second"

    .line 7
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static zzc([B)[B
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzfx;->zza()Lcom/google/android/gms/internal/fido/zzfu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzfu;->zza()Lcom/google/android/gms/internal/fido/zzfv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zza:[B

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fido/zzfv;->zza([B)Lcom/google/android/gms/internal/fido/zzfv;

    .line 3
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/fido/zzfv;->zza([B)Lcom/google/android/gms/internal/fido/zzfv;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzfv;->zzc()Lcom/google/android/gms/internal/fido/zzft;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzft;->zzd()[B

    move-result-object p0

    return-object p0
.end method

.method private static zzd(Lorg/json/JSONObject;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "first"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    array-length v1, v0

    const-string v2, "hashed PRF value with wrong length"

    const/16 v3, 0x20

    if-ne v1, v3, :cond_34

    .line 4
    const-string v1, "second"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    return-object v0

    .line 5
    :cond_1a
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    array-length v1, p0

    if-ne v1, v3, :cond_2e

    .line 7
    filled-new-array {v0, p0}, [[B

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzgj;->zza([[B)[B

    move-result-object p0

    return-object p0

    .line 7
    :cond_2e
    new-instance p0, Lorg/json/JSONException;

    invoke-direct {p0, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_34
    new-instance p0, Lorg/json/JSONException;

    invoke-direct {p0, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zze(Lorg/json/JSONObject;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "first"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzc([B)[B

    move-result-object v0

    .line 2
    const-string v1, "second"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    return-object v0

    .line 3
    :cond_17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzc([B)[B

    move-result-object p0

    filled-new-array {v0, p0}, [[B

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzgj;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/zzak;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/zzak;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v2, v1, :cond_17

    aget-object v4, v0, v2

    if-eqz v4, :cond_14

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "}"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    .line 2
    array-length v5, v4

    if-ge v2, v5, :cond_44

    .line 3
    aget-object v5, v4, v2

    if-nez v5, :cond_20

    const-string v5, "eval"

    add-int/lit8 v6, v2, 0x1

    .line 4
    aget-object v4, v4, v6

    invoke-static {v4}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb([B)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_41

    :cond_20
    if-nez v3, :cond_2c

    new-instance v3, Lorg/json/JSONObject;

    .line 5
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "evalByCredential"

    .line 6
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2c
    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    .line 7
    aget-object v4, v4, v2

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb([B)Lorg/json/JSONObject;

    move-result-object v5

    .line 7
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_41
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 10
    :cond_44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrfExtension{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_5c} :catch_5d

    return-object v0

    :catch_5d
    move-exception v1

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PrfExtension{Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/fido/fido2/api/common/zzak;->zzb:[[B

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
