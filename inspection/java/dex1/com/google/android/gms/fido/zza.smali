.class public final Lcom/google/android/gms/fido/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field public static final zzA:Lcom/google/android/gms/common/Feature;

.field public static final zzB:Lcom/google/android/gms/common/Feature;

.field public static final zzC:Lcom/google/android/gms/common/Feature;

.field public static final zzD:[Lcom/google/android/gms/common/Feature;

.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:Lcom/google/android/gms/common/Feature;

.field public static final zzn:Lcom/google/android/gms/common/Feature;

.field public static final zzo:Lcom/google/android/gms/common/Feature;

.field public static final zzp:Lcom/google/android/gms/common/Feature;

.field public static final zzq:Lcom/google/android/gms/common/Feature;

.field public static final zzr:Lcom/google/android/gms/common/Feature;

.field public static final zzs:Lcom/google/android/gms/common/Feature;

.field public static final zzt:Lcom/google/android/gms/common/Feature;

.field public static final zzu:Lcom/google/android/gms/common/Feature;

.field public static final zzv:Lcom/google/android/gms/common/Feature;

.field public static final zzw:Lcom/google/android/gms/common/Feature;

.field public static final zzx:Lcom/google/android/gms/common/Feature;

.field public static final zzy:Lcom/google/android/gms/common/Feature;

.field public static final zzz:Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 32

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "cancel_target_direct_transfer"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "delete_credential"

    .line 2
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzb:Lcom/google/android/gms/common/Feature;

    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v5, "delete_device_public_key"

    .line 3
    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/google/android/gms/fido/zza;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "get_or_generate_device_public_key"

    .line 4
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/android/gms/fido/zza;->zzd:Lcom/google/android/gms/common/Feature;

    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v7, "get_passkeys"

    .line 5
    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lcom/google/android/gms/fido/zza;->zze:Lcom/google/android/gms/common/Feature;

    new-instance v7, Lcom/google/android/gms/common/Feature;

    const-string v8, "update_passkey"

    .line 6
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v7, Lcom/google/android/gms/fido/zza;->zzf:Lcom/google/android/gms/common/Feature;

    new-instance v8, Lcom/google/android/gms/common/Feature;

    const-string v9, "is_user_verifying_platform_authenticator_available_for_credential"

    .line 7
    invoke-direct {v8, v9, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v8, Lcom/google/android/gms/fido/zza;->zzg:Lcom/google/android/gms/common/Feature;

    new-instance v9, Lcom/google/android/gms/common/Feature;

    const-string v10, "is_user_verifying_platform_authenticator_available"

    .line 8
    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v9, Lcom/google/android/gms/fido/zza;->zzh:Lcom/google/android/gms/common/Feature;

    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 9
    const-string v11, "privileged_api_list_credentials"

    const-wide/16 v12, 0x2

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v10, Lcom/google/android/gms/fido/zza;->zzi:Lcom/google/android/gms/common/Feature;

    new-instance v11, Lcom/google/android/gms/common/Feature;

    const-string v14, "start_target_direct_transfer"

    .line 10
    invoke-direct {v11, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v11, Lcom/google/android/gms/fido/zza;->zzj:Lcom/google/android/gms/common/Feature;

    new-instance v14, Lcom/google/android/gms/common/Feature;

    const-string v15, "first_party_api_get_link_info"

    .line 11
    invoke-direct {v14, v15, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v14, Lcom/google/android/gms/fido/zza;->zzk:Lcom/google/android/gms/common/Feature;

    new-instance v15, Lcom/google/android/gms/common/Feature;

    .line 12
    const-string v2, "zero_party_api_register"

    const-wide/16 v12, 0x3

    invoke-direct {v15, v2, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v15, Lcom/google/android/gms/fido/zza;->zzl:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    const-string v3, "zero_party_api_sign"

    .line 13
    invoke-direct {v2, v3, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/fido/zza;->zzm:Lcom/google/android/gms/common/Feature;

    new-instance v3, Lcom/google/android/gms/common/Feature;

    const-string v12, "zero_party_api_list_discoverable_credentials"

    move-object v13, v0

    move-object/from16 v22, v1

    const-wide/16 v0, 0x2

    .line 14
    invoke-direct {v3, v12, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v3, Lcom/google/android/gms/fido/zza;->zzn:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "zero_party_api_authenticate_passkey"

    move-object v12, v2

    move-object/from16 v23, v3

    const-wide/16 v2, 0x3

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzo:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "zero_party_api_register_passkey"

    move-object/from16 v20, v4

    const-wide/16 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzp:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    move-object/from16 v16, v0

    const-string v0, "zero_party_api_register_passkey_with_sync_account"

    .line 17
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/fido/zza;->zzq:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v17, v1

    const-string v1, "zero_party_api_get_hybrid_client_registration_pending_intent"

    .line 18
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzr:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v21, v0

    const-string v0, "zero_party_api_get_hybrid_client_sign_pending_intent"

    .line 19
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzs:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v24, v1

    const-string v1, "get_browser_hybrid_client_sign_pending_intent"

    .line 20
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzt:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v25, v0

    const-string v0, "get_browser_hybrid_client_registration_pending_intent"

    .line 21
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzu:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v3, "privileged_authenticate_passkey"

    move-object/from16 v28, v1

    move-object v4, v2

    const-wide/16 v1, 0x2

    .line 22
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzv:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v2, "privileged_register_passkey_with_sync_account"

    move-object/from16 v18, v4

    const-wide/16 v3, 0x1

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzw:Lcom/google/android/gms/common/Feature;

    new-instance v2, Lcom/google/android/gms/common/Feature;

    move-object/from16 v19, v0

    const-string v0, "zero_party_api_get_privileged_hybrid_client_registration_pending_intent"

    .line 24
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/fido/zza;->zzx:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v26, v1

    const-string v1, "zero_party_api_get_privileged_hybrid_client_sign_pending_intent"

    .line 25
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzy:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v27, v0

    const-string v0, "zero_party_api_get_fido_security_key_only_sign_pending_intent"

    .line 26
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzz:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v29, v1

    const-string v1, "zero_party_api_get_fido_security_key_only_registration_pending_intent"

    .line 27
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzA:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    move-object/from16 v30, v0

    const-string v0, "zero_party_api_get_privileged_fido_security_key_only_sign_pending_intent"

    .line 28
    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzB:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    move-object/from16 v31, v1

    const-string v1, "zero_party_api_get_privileged_fido_security_key_only_registration_pending_intent"

    .line 29
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/fido/zza;->zzC:Lcom/google/android/gms/common/Feature;

    const/16 v1, 0x1d

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v13, v1, v3

    const/4 v3, 0x1

    aput-object v22, v1, v3

    const/4 v3, 0x2

    aput-object v20, v1, v3

    const/4 v3, 0x3

    aput-object v5, v1, v3

    const/4 v3, 0x4

    aput-object v6, v1, v3

    const/4 v3, 0x5

    aput-object v7, v1, v3

    const/4 v3, 0x6

    aput-object v8, v1, v3

    const/4 v3, 0x7

    aput-object v9, v1, v3

    const/16 v3, 0x8

    aput-object v10, v1, v3

    const/16 v3, 0x9

    aput-object v11, v1, v3

    const/16 v3, 0xa

    aput-object v14, v1, v3

    const/16 v3, 0xb

    aput-object v15, v1, v3

    const/16 v3, 0xc

    aput-object v12, v1, v3

    const/16 v3, 0xd

    aput-object v23, v1, v3

    const/16 v3, 0xe

    aput-object v16, v1, v3

    const/16 v3, 0xf

    aput-object v17, v1, v3

    const/16 v3, 0x10

    aput-object v18, v1, v3

    const/16 v3, 0x11

    aput-object v21, v1, v3

    const/16 v3, 0x12

    aput-object v24, v1, v3

    const/16 v3, 0x13

    aput-object v25, v1, v3

    const/16 v3, 0x14

    aput-object v28, v1, v3

    const/16 v3, 0x15

    aput-object v19, v1, v3

    const/16 v3, 0x16

    aput-object v26, v1, v3

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v27, v1, v2

    const/16 v2, 0x19

    aput-object v29, v1, v2

    const/16 v2, 0x1a

    aput-object v30, v1, v2

    const/16 v2, 0x1b

    aput-object v31, v1, v2

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/fido/zza;->zzD:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
