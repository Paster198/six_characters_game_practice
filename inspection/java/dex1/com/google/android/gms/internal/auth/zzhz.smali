.class public final Lcom/google/android/gms/internal/auth/zzhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzhx;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzb:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzc:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzd:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zze:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzf:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzg:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzh:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzi:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzj:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzk:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzl:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzm:Lcom/google/android/gms/internal/auth/zzdc;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "com.google.android.gms.auth_account"

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzcr;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzcz;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zzb()Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zza()Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v0

    .line 3
    const-string v1, "getTokenRefactor__account_data_service_sample_percentage"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcz;->zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zza:Lcom/google/android/gms/internal/auth/zzdc;

    .line 4
    const-string v1, "getTokenRefactor__account_data_service_tokenAPI_usable"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzb:Lcom/google/android/gms/internal/auth/zzdc;

    .line 5
    const-string v1, "getTokenRefactor__account_manager_timeout_seconds"

    const-wide/16 v5, 0x14

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzc:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__android_id_shift"

    const-wide/16 v7, 0x0

    .line 6
    invoke-virtual {v0, v1, v7, v8}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzd:Lcom/google/android/gms/internal/auth/zzdc;

    :try_start_3a
    const-string v1, "getTokenRefactor__blocked_packages"

    const-string v7, "ChNjb20uYW5kcm9pZC52ZW5kaW5nCiBjb20uZ29vZ2xlLmFuZHJvaWQuYXBwcy5tZWV0aW5ncwohY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWVzc2FnaW5n"

    const/4 v8, 0x3

    .line 7
    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/auth/zzhs;->zzp([B)Lcom/google/android/gms/internal/auth/zzhs;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/auth/zzhy;->zza:Lcom/google/android/gms/internal/auth/zzhy;

    .line 8
    invoke-virtual {v0, v1, v7, v8}, Lcom/google/android/gms/internal/auth/zzcz;->zzf(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzhy;)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zze:Lcom/google/android/gms/internal/auth/zzdc;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4f} :catch_93

    .line 9
    const-string v1, "getTokenRefactor__chimera_get_token_evolved"

    .line 10
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzf:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__clear_token_timeout_seconds"

    .line 11
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzg:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__default_task_timeout_seconds"

    .line 12
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzh:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gaul_accounts_api_evolved"

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzi:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gaul_token_api_evolved"

    .line 14
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzj:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__get_token_timeout_seconds"

    const-wide/16 v5, 0x78

    .line 15
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcz;->zzd(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzk:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gms_account_authenticator_evolved"

    .line 16
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhz;->zzl:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcz;->zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhz;->zzm:Lcom/google/android/gms/internal/auth/zzdc;

    return-void

    :catch_93
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzhs;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhz;->zze:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzhs;

    return-object v0
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhz;->zzi:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhz;->zzj:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
