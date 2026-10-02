.class public final Lcom/google/android/gms/internal/auth/zzhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzhu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzb:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzc:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zzd:Lcom/google/android/gms/internal/auth/zzdc;

.field public static final zze:Lcom/google/android/gms/internal/auth/zzdc;


# direct methods
.method static constructor <clinit>()V
    .registers 4

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
    const-string v1, "Aang__create_auth_exception_with_pending_intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zza:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "Aang__enable_add_account_restrictions"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzb:Lcom/google/android/gms/internal/auth/zzdc;

    .line 5
    const-string v1, "Aang__log_missing_gaia_id_event"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzc:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "Aang__log_obfuscated_gaiaid_status"

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhv;->zzd:Lcom/google/android/gms/internal/auth/zzdc;

    const-string v1, "Aang__switch_clear_token_to_aang"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/zzcz;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzdc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhv;->zze:Lcom/google/android/gms/internal/auth/zzdc;

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
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhv;->zza:Lcom/google/android/gms/internal/auth/zzdc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzdc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
