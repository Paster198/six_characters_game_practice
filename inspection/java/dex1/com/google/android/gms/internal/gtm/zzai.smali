.class public final Lcom/google/android/gms/internal/gtm/zzai;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzai;",
        "Lcom/google/android/gms/internal/gtm/zzah;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzai;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzag;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/gtm/zzaa;

.field private zzh:Ljava/lang/String;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzai;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzai;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzi:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzai;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/gtm/zzah;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzY()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzah;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/gtm/zzai;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/gtm/zzai;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    return-object v0
.end method

.method public static zzg([BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzai;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzad(Lcom/google/android/gms/internal/gtm/zzuz;[BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzai;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/gtm/zzai;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzai;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/gtm/zzai;Lcom/google/android/gms/internal/gtm/zzaa;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzg:Lcom/google/android/gms/internal/gtm/zzaa;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zze:I

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/gtm/zzai;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->size()I

    move-result v0

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3f

    const/4 p3, 0x2

    if-eq p1, p3, :cond_28

    const/4 p3, 0x3

    if-eq p1, p3, :cond_22

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1c

    const/4 p3, 0x5

    if-eq p1, p3, :cond_19

    if-nez p2, :cond_15

    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    const/4 p1, 0x1

    :goto_16
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzi:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzah;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzah;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzai;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzai;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-class p1, Lcom/google/android/gms/internal/gtm/zzag;

    const-string p2, "zzg"

    const-string p3, "zzh"

    const-string v0, "zze"

    const-string v1, "zzf"

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzai;->zza:Lcom/google/android/gms/internal/gtm/zzai;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0002\u0001\u041b\u0002\u1409\u0000\u0003\u1008\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzai;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3f
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzi:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzaa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzg:Lcom/google/android/gms/internal/gtm/zzaa;

    if-nez v0, :cond_8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzl()Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method

.method public final zzm()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzai;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
