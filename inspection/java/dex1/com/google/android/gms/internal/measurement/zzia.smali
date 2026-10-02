.class public final Lcom/google/android/gms/internal/measurement/zzia;
.super Lcom/google/android/gms/internal/measurement/zzmd;
.source "com.google.android.gms:play-services-measurement-impl@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzni;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzia;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzia;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzia;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmd;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zze:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzia;->zzcn()Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzhy;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcg()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhy;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzia;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzia;Lcom/google/android/gms/internal/measurement/zzho;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzc()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    :cond_11
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzia;->zzf:Lcom/google/android/gms/internal/measurement/zzmj;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmj;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhy;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhy;-><init>(Lcom/google/android/gms/internal/measurement/zzip;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzia;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzia;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzhz;->zza:Lcom/google/android/gms/internal/measurement/zzmg;

    const-string p2, "zzf"

    const-class p3, Lcom/google/android/gms/internal/measurement/zzho;

    const-string v0, "zzd"

    const-string v1, "zze"

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzia;->zzb:Lcom/google/android/gms/internal/measurement/zzia;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzia;->zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
