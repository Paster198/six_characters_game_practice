.class public final Lcom/google/android/gms/internal/measurement/zzim;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzim;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzif;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzif;

    return-object v0
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/measurement/zzim;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzim;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzim;Lcom/google/android/gms/internal/measurement/zzih;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzih;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/measurement/zzim;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/measurement/zzim;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzd:I

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/measurement/zzih;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzih;->zza:Lcom/google/android/gms/internal/measurement/zzih;

    :cond_a
    return-object v0
.end method

.method public final zzf()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzim;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->zza(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final zzg()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzim;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zza(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzif;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzif;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzim;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzig;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    const-string v5, "zzg"

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzii;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v3, "zzf"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzim;->zzb:Lcom/google/android/gms/internal/measurement/zzim;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzim;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3c
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
