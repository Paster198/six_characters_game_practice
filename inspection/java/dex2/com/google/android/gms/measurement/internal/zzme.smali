.class public final enum Lcom/google/android/gms/measurement/internal/zzme;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzme;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzme;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzme;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzme;

.field private static final synthetic zze:[Lcom/google/android/gms/measurement/internal/zzme;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzme;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzme;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzme;->zza:Lcom/google/android/gms/measurement/internal/zzme;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzme;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/measurement/internal/zzme;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzme;->zzb:Lcom/google/android/gms/measurement/internal/zzme;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzme;

    const-string v3, "FAILURE"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zzme;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzme;->zzc:Lcom/google/android/gms/measurement/internal/zzme;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzme;

    const-string v4, "BACKOFF"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/measurement/internal/zzme;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzme;->zzd:Lcom/google/android/gms/measurement/internal/zzme;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/measurement/internal/zzme;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzme;->zze:[Lcom/google/android/gms/measurement/internal/zzme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzme;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzme;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzme;->zze:[Lcom/google/android/gms/measurement/internal/zzme;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzme;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzme;->zzf:I

    return v0
.end method
