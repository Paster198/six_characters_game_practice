.class public final Lcom/google/android/gms/internal/fido/zzic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzib;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzb:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzc:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzd:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zze:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzf:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzg:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzh:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzi:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzj:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzk:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzl:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzm:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzn:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzo:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzp:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzq:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzr:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzs:Lcom/google/android/gms/internal/fido/zzaq;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzay;

    const-string v1, "com.google.android.gms.fido"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/lang/String;)V

    const-string v1, "FIDO"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzcf;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzay;->zze(Ljava/util/Set;)Lcom/google/android/gms/internal/fido/zzay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzay;->zzd()Lcom/google/android/gms/internal/fido/zzay;

    move-result-object v0

    const-string v1, "Passkeys__check_all_keys"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zza:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__check_sync_status"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzb:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__client_data_hash_override_for_security_keys"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzc:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__direct_assetlinks"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzd:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__direct_assetlinks_cache_seconds"

    const-wide/32 v4, 0x93a80

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/fido/zzay;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zze:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__direct_assetlinks_rpids"

    const-string v4, "*"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/fido/zzay;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzf:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__dispatch_prf_via_credman"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzg:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__help_center_url"

    const-string v4, "https://support.google.com/accounts/answer/6208650"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/fido/zzay;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzh:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__hide_consent_page_in_registration_enabled"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzi:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__ignore_stop_during_hybrid_request"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzj:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__json_for_parcelables"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzk:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__passkey_entries_use_gpm_icon"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzl:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__reencrypt_passkey"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzm:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__return_cryptauth_status"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzn:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__set_key_version"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzo:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__should_show_welcome_fragment"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/fido/zzay;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzp:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__skip_consent_after_retrieval"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzq:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__skip_consent_screen"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzic;->zzr:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Passkeys__use_result_receiver"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzic;->zzs:Lcom/google/android/gms/internal/fido/zzaq;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzic;->zzk:Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzaq;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzic;->zzs:Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzaq;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
