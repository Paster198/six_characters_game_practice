.class public final Lcom/google/android/gms/internal/measurement/zzfz;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzfz;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfz;->zzb:Lcom/google/android/gms/internal/measurement/zzfz;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/measurement/zzfz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfz;->zzb:Lcom/google/android/gms/internal/measurement/zzfz;

    return-object v0
.end method


# virtual methods
.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgd;->zza(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgf;->zza(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_38

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfz;->zzb:Lcom/google/android/gms/internal/measurement/zzfz;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfy;-><init>(Lcom/google/android/gms/internal/measurement/zzgz;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzge;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    const-string p2, "zzf"

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgc;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    const-string v0, "zzd"

    const-string v1, "zze"

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfz;->zzb:Lcom/google/android/gms/internal/measurement/zzfz;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzfz;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
