.class public final enum Lcom/google/android/gms/measurement/internal/zzmf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zze:Lcom/google/android/gms/measurement/internal/zzmf;

.field public static final enum zzf:Lcom/google/android/gms/measurement/internal/zzmf;

.field private static final synthetic zzg:[Lcom/google/android/gms/measurement/internal/zzmf;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v1, "GOOGLE_ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zza:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v2, "GOOGLE_SIGNAL"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzmf;->zzb:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v3, "SGTM"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzmf;->zzc:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v4, "SGTM_CLIENT"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzmf;->zzd:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzmf;

    const-string v5, "GOOGLE_SIGNAL_PENDING"

    const/4 v6, 0x4

    .line 5
    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzmf;->zze:Lcom/google/android/gms/measurement/internal/zzmf;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzmf;

    const/4 v6, 0x5

    const/16 v7, 0x63

    .line 6
    const-string v8, "UNKNOWN"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzmf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzmf;->zzf:Lcom/google/android/gms/measurement/internal/zzmf;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zzg:[Lcom/google/android/gms/measurement/internal/zzmf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzmf;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzmf;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzmf;->zzg:[Lcom/google/android/gms/measurement/internal/zzmf;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzmf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzmf;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/measurement/internal/zzmf;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzmf;->values()[Lcom/google/android/gms/measurement/internal/zzmf;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/android/gms/measurement/internal/zzmf;->zzh:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzmf;->zzf:Lcom/google/android/gms/measurement/internal/zzmf;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzmf;->zzh:I

    return v0
.end method
