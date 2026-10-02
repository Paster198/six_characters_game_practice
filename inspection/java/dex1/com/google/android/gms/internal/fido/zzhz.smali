.class public final Lcom/google/android/gms/internal/fido/zzhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzhy;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzb:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzc:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzd:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zze:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzf:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzg:Lcom/google/android/gms/internal/fido/zzaq;


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

    const-string v1, "Hybrid__client_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhz;->zza:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Hybrid__disavow_location_permissions"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhz;->zzb:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Hybrid__number_of_seconds_to_wait_for_bt_scanning_radio_to_be_ready"

    const-wide/16 v4, 0x3

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/fido/zzay;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhz;->zzc:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Hybrid__number_of_seconds_to_wait_for_bt_scanning_turning_on"

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/gms/internal/fido/zzay;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhz;->zzd:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Hybrid__prf_eval_during_create"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhz;->zze:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Hybrid__use_hybrid_for_server_link"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhz;->zzf:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Hybrid__websocket_close_socket"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhz;->zzg:Lcom/google/android/gms/internal/fido/zzaq;

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
    sget-object v0, Lcom/google/android/gms/internal/fido/zzhz;->zza:Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzaq;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
