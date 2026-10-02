.class public final Lcom/google/android/gms/internal/measurement/zzhc;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhc;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzhb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhb;

    return-object v0
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/measurement/zzhc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzhc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    return-object v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/measurement/zzhc;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/measurement/zzhc;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/measurement/zzhc;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhc;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/measurement/zzhc;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/measurement/zzhc;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/measurement/zzhc;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhc;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/measurement/zzhc;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzh:J

    return-void
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/measurement/zzhc;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzl:J

    return-void
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/measurement/zzhc;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzA()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzB()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzC()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzD()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzE()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzF()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzG()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzH()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzd:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzh:J

    return-wide v0
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzl:J

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhc;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_40

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhb;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhb;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string v7, "zzk"

    const-string v8, "zzl"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzhc;->zzb:Lcom/google/android/gms/internal/measurement/zzhc;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzhc;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
