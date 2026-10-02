.class final enum Lcom/google/android/gms/measurement/internal/zzos;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzos;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzos;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzos;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzos;

.field private static final synthetic zze:[Lcom/google/android/gms/measurement/internal/zzos;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzos;

    const-string v1, "CONSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzos;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzos;->zza:Lcom/google/android/gms/measurement/internal/zzos;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzos;

    const-string v2, "LEGITIMATE_INTEREST"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzos;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzos;->zzb:Lcom/google/android/gms/measurement/internal/zzos;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzos;

    const-string v3, "FLEXIBLE_CONSENT"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzos;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzos;->zzc:Lcom/google/android/gms/measurement/internal/zzos;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzos;

    const-string v4, "FLEXIBLE_LEGITIMATE_INTEREST"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzos;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzos;->zzd:Lcom/google/android/gms/measurement/internal/zzos;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzos;->zze:[Lcom/google/android/gms/measurement/internal/zzos;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzos;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzos;->zze:[Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzos;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzos;

    return-object v0
.end method
