.class public final enum Lcom/google/android/gms/measurement/internal/zzjv;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzjv;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzjv;

.field private static final synthetic zzc:[Lcom/google/android/gms/measurement/internal/zzjv;


# instance fields
.field private final zzd:[Lcom/google/android/gms/measurement/internal/zzjw;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjv;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zza:Lcom/google/android/gms/measurement/internal/zzjw;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "STORAGE"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzjw;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Lcom/google/android/gms/measurement/internal/zzjv;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjv;

    new-array v2, v4, [Lcom/google/android/gms/measurement/internal/zzjw;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzjw;

    aput-object v5, v2, v3

    const-string v3, "DMA"

    .line 2
    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzjw;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Lcom/google/android/gms/measurement/internal/zzjv;

    filled-new-array {v0, v1}, [Lcom/google/android/gms/measurement/internal/zzjv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:[Lcom/google/android/gms/measurement/internal/zzjv;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzjw;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:[Lcom/google/android/gms/measurement/internal/zzjw;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzjv;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:[Lcom/google/android/gms/measurement/internal/zzjv;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzjv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzjv;

    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzjv;)[Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:[Lcom/google/android/gms/measurement/internal/zzjw;

    return-object p0
.end method


# virtual methods
.method public final zzb()[Lcom/google/android/gms/measurement/internal/zzjw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:[Lcom/google/android/gms/measurement/internal/zzjw;

    return-object v0
.end method
