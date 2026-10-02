.class public final Lcom/google/android/gms/internal/measurement/zzio;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzio;


# instance fields
.field private zzd:I

.field private zze:J

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:F

.field private zzj:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzio;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzio;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzin;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzin;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzio;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzio;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/measurement/zzio;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzj:D

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzio;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzh:J

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/measurement/zzio;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzio;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzio;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/measurement/zzio;D)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzj:D

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzio;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzh:J

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzio;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzio;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zze:J

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzio;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzj:D

    return-wide v0
.end method

.method public final zzb()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzi:F

    return v0
.end method

.method public final zzc()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzh:J

    return-wide v0
.end method

.method public final zzd()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zze:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3c

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzio;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzin;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzin;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzio;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string v5, "zzi"

    const-string v6, "zzj"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzio;->zzb:Lcom/google/android/gms/internal/measurement/zzio;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzio;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3c
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzr()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzt()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzu()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzv()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzio;->zzd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
