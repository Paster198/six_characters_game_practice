.class public Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;
.super Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/lang/Double;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/lang/Integer;

.field private final zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

.field private final zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

.field private final zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

.field private final zzi:Ljava/lang/Long;

.field private zzj:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>([BLjava/lang/Double;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;Ljava/lang/String;Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;Ljava/lang/Long;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v0, p10

    .line 1
    const-string v2, "longRequestId"

    const-string v3, "extensions"

    const-string v4, "id"

    const-string v5, "authenticationExtensions"

    const-string v6, "userVerification"

    const-string v7, "tokenBinding"

    const-string v8, "requestId"

    const-string v9, "allowCredentials"

    const-string v10, "allowList"

    const-string v11, "timeoutSeconds"

    const-string v12, "timeout"

    invoke-direct {v1}, Lcom/google/android/gms/fido/fido2/api/common/RequestOptions;-><init>()V

    move-object/from16 v13, p11

    iput-object v13, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzj:Landroid/os/ResultReceiver;

    const/4 v13, 0x0

    if-eqz v0, :cond_153

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzia;->zzc()Z

    move-result v14

    if-eqz v14, :cond_153

    .line 7
    :try_start_2a
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;-><init>()V

    const-string v15, "challenge"

    .line 8
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafeNoPadding(Ljava/lang/String;)[B

    move-result-object v15

    .line 9
    invoke-virtual {v0, v15}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setChallenge([B)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 10
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 11
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setTimeoutSeconds(Ljava/lang/Double;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    goto :goto_6a

    .line 12
    :cond_59
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 13
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setTimeoutSeconds(Ljava/lang/Double;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 11
    :cond_6a
    :goto_6a
    const-string v11, "rpId"

    .line 14
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setRpId(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 15
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 16
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    goto :goto_8a

    .line 17
    :cond_7e
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 18
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    goto :goto_8a

    :cond_89
    move-object v9, v13

    :goto_8a
    if-eqz v9, :cond_a9

    .line 16
    new-instance v10, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 20
    :goto_92
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_a6

    .line 21
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 22
    invoke-static {v12}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_92

    .line 23
    :cond_a6
    invoke-virtual {v0, v10}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setAllowList(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 24
    :cond_a9
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 25
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setRequestId(Ljava/lang/Integer;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 26
    :cond_ba
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 27
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    const-string v9, "status"

    .line 28
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d6

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_d6
    invoke-direct {v8, v9, v13}, Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v8}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setTokenBinding(Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 31
    :cond_dc
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 32
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-static {v4}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    move-result-object v4

    .line 34
    invoke-virtual {v0, v4}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->zzc(Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 35
    :cond_ed
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 36
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setAuthenticationExtensions(Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    goto :goto_110

    .line 39
    :cond_ff
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 40
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->setAuthenticationExtensions(Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 42
    :cond_110
    :goto_110
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 43
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->zza(Ljava/lang/Long;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 44
    :cond_121
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->build()Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    move-result-object v0
    :try_end_125
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_125} :catch_14c
    .catch Lcom/google/android/gms/fido/fido2/api/common/zzbc; {:try_start_2a .. :try_end_125} :catch_14a

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    iget-object v2, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iput-object v2, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iget-object v0, v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    return-void

    :catch_14a
    move-exception v0

    goto :goto_14d

    :catch_14c
    move-exception v0

    .line 6
    :goto_14d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 45
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3
    :cond_153
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    .line 4
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    move-object/from16 v0, p5

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    if-eqz p7, :cond_187

    .line 5
    :try_start_179
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;
    :try_end_17f
    .catch Lcom/google/android/gms/fido/fido2/api/common/zzbc; {:try_start_179 .. :try_end_17f} :catch_180

    goto :goto_189

    :catch_180
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 45
    :cond_187
    iput-object v13, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    :goto_189
    move-object/from16 v0, p8

    .line 5
    iput-object v0, v1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    return-void
.end method

.method public static deserializeFromBytes([B)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    .line 2
    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    if-nez v0, :cond_2e

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    if-eqz v2, :cond_44

    :cond_2e
    if-eqz v0, :cond_78

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    if-eqz v2, :cond_78

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iget-object v2, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    .line 11
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    const/4 p1, 0x1

    return p1

    :cond_78
    return v1
.end method

.method public getAllowList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    return-object v0
.end method

.method public getAuthenticationExtensions()Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    return-object v0
.end method

.method public getChallenge()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    return-object v0
.end method

.method public getRequestId()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRpId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeoutSeconds()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    return-object v0
.end method

.method public getTokenBinding()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    return-object v0
.end method

.method public hashCode()I
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v7, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    iget-object v8, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iget-object v9, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public serializeToBytes()[B
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/fido/zzia;->zzd()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;-><init>(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->zzb(Landroid/os/ResultReceiver;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions$Builder;->build()Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_18
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzh:Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzf:Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzd:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zza:[B

    invoke-static {v4}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PublicKeyCredentialRequestOptions{\n challenge="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \n timeoutSeconds="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzb:Ljava/lang/Double;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", \n rpId=\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', \n allowList="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \n requestId="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zze:Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", \n tokenBinding="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \n userVerification="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \n authenticationExtensions="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \n longRequestId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getChallenge()[B

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getTimeoutSeconds()Ljava/lang/Double;

    move-result-object v2

    .line 5
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getRpId()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getAllowList()Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getRequestId()Ljava/lang/Integer;

    move-result-object v2

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    const/4 v1, 0x7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getTokenBinding()Lcom/google/android/gms/fido/fido2/api/common/TokenBinding;

    move-result-object v2

    .line 13
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    const/4 v2, 0x0

    if-nez v1, :cond_3c

    move-object v1, v2

    goto :goto_40

    .line 20
    :cond_3c
    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_40
    const/16 v4, 0x8

    .line 14
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->getAuthenticationExtensions()Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    move-result-object v4

    .line 16
    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v4, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    .line 17
    invoke-static {p1, v1, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/16 v1, 0xb

    .line 18
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzj:Landroid/os/ResultReceiver;

    .line 19
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Landroid/os/ResultReceiver;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzj:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzg:Lcom/google/android/gms/fido/fido2/api/common/UserVerificationRequirement;

    return-object v0
.end method

.method public final zzc()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRequestOptions;->zzi:Ljava/lang/Long;

    return-object v0
.end method
