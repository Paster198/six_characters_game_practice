.class public final enum Lcom/google/android/gms/measurement/internal/zzju;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzju;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzju;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzju;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzju;

.field private static final synthetic zze:[Lcom/google/android/gms/measurement/internal/zzju;


# instance fields
.field private final zzf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzju;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    const-string v3, "uninitialized"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzju;

    const-string v2, "POLICY"

    const/4 v3, 0x1

    .line 2
    const-string v4, "eu_consent_policy"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Lcom/google/android/gms/measurement/internal/zzju;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzju;

    const-string v3, "DENIED"

    const/4 v4, 0x2

    .line 3
    const-string v5, "denied"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Lcom/google/android/gms/measurement/internal/zzju;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzju;

    const-string v4, "GRANTED"

    const/4 v5, 0x3

    .line 4
    const-string v6, "granted"

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzju;->zzd:Lcom/google/android/gms/measurement/internal/zzju;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/measurement/internal/zzju;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzju;->zze:[Lcom/google/android/gms/measurement/internal/zzju;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzju;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzju;->zze:[Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzju;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzf:Ljava/lang/String;

    return-object v0
.end method
