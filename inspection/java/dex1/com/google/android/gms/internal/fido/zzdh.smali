.class public final Lcom/google/android/gms/internal/fido/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fido@@21.0.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzb:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzc:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzd:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zze:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzf:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzg:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzh:Lcom/google/android/gms/internal/fido/zzdk;

.field public static final zzi:Lcom/google/android/gms/internal/fido/zzdk;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "cause"

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zza:Lcom/google/android/gms/internal/fido/zzdk;

    const-string v0, "ratelimit_count"

    const-class v1, Ljava/lang/Integer;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzb:Lcom/google/android/gms/internal/fido/zzdk;

    const-string v0, "sampling_count"

    const-class v1, Ljava/lang/Integer;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzc:Lcom/google/android/gms/internal/fido/zzdk;

    const-string v0, "ratelimit_period"

    const-class v1, Lcom/google/android/gms/internal/fido/zzde;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzd:Lcom/google/android/gms/internal/fido/zzdk;

    const-string v0, "skipped"

    const-class v1, Ljava/lang/Integer;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zze:Lcom/google/android/gms/internal/fido/zzdk;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzdf;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    .line 6
    const-string v3, "group_by"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/fido/zzdf;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzf:Lcom/google/android/gms/internal/fido/zzdk;

    const-string v0, "forced"

    const-class v1, Ljava/lang/Boolean;

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzg:Lcom/google/android/gms/internal/fido/zzdk;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzdg;

    const-class v1, Lcom/google/android/gms/internal/fido/zzfi;

    const/4 v2, 0x0

    .line 8
    const-string v3, "tags"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/fido/zzdg;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzh:Lcom/google/android/gms/internal/fido/zzdk;

    const-string v0, "stack_size"

    const-class v1, Lcom/google/android/gms/internal/fido/zzdl;

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fido/zzdk;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/fido/zzdk;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fido/zzdh;->zzi:Lcom/google/android/gms/internal/fido/zzdk;

    return-void
.end method
