.class public final Lcom/google/android/gms/internal/fido/zzhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzhv;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzb:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzc:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzd:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zze:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzf:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzg:Lcom/google/android/gms/internal/fido/zzaq;

.field public static final zzh:Lcom/google/android/gms/internal/fido/zzaq;


# direct methods
.method static constructor <clinit>()V
    .registers 4

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

    const-string v1, "Fido2Ctap2Support__disable_transport_comparator"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zza:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__enable_cancelling_requests"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zzb:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__enable_flow_separation_refactor"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zzc:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__nfc_activity_destroyed_check"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zzd:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__remove_this_device_for_assertions"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zze:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__skip_usb_permission_dialog"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zzf:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__transport_controller_refactor"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/fido/zzhw;->zzg:Lcom/google/android/gms/internal/fido/zzaq;

    const-string v1, "Fido2Ctap2Support__update_user_cancel_response"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzay;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/fido/zzaq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzhw;->zzh:Lcom/google/android/gms/internal/fido/zzaq;

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
    sget-object v0, Lcom/google/android/gms/internal/fido/zzhw;->zzc:Lcom/google/android/gms/internal/fido/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzaq;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
