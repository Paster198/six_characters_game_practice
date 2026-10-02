.class public final Lcom/google/android/gms/internal/measurement/zzie;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzie;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzie;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzie;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzie;->zzcl()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzid;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzid;

    return-object v0
.end method

.method static bridge synthetic zze()Lcom/google/android/gms/internal/measurement/zzie;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzie;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzc()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcm(Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    :cond_e
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzko;->zzcc(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzie;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzie;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zze:I

    return v0
.end method

.method public final zzc(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmi;->zza(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzf:Lcom/google/android/gms/internal/measurement/zzmi;

    return-object v0
.end method

.method public final zzi()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzie;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_34

    const/4 p2, 0x2

    if-eq p1, p2, :cond_21

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-ne p1, p2, :cond_14

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzid;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzie;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzie;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzd"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzie;->zzb:Lcom/google/android/gms/internal/measurement/zzie;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzie;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
