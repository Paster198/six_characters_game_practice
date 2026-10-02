.class public final Lcom/google/android/gms/internal/gtm/zzrl;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzrl;",
        "Lcom/google/android/gms/internal/gtm/zzrk;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzrl;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/gtm/zzaa;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzai;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrl;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzrl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrl;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzrl;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzi:B

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzrk;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrl;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzY()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/gtm/zzrl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrl;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    return-object v0
.end method

.method public static zzg(Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzrl;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrl;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzac(Lcom/google/android/gms/internal/gtm/zzuz;Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrl;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/gtm/zzrl;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzf:J

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/gtm/zzrl;Lcom/google/android/gms/internal/gtm/zzaa;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzg:Lcom/google/android/gms/internal/gtm/zzaa;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/gtm/zzrl;Lcom/google/android/gms/internal/gtm/zzai;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzh:Lcom/google/android/gms/internal/gtm/zzai;

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzf:J

    return-wide v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3d

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzi:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrl;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Lcom/google/android/gms/internal/gtm/zzrj;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrl;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzrl;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-string p1, "zzg"

    const-string p2, "zzh"

    const-string p3, "zze"

    const-string v0, "zzf"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrl;->zza:Lcom/google/android/gms/internal/gtm/zzrl;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u1502\u0000\u0002\u1509\u0001\u0003\u1409\u0002"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3d
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzi:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzaa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzg:Lcom/google/android/gms/internal/gtm/zzaa;

    if-nez v0, :cond_8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzl()Lcom/google/android/gms/internal/gtm/zzaa;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zzai;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zzh:Lcom/google/android/gms/internal/gtm/zzai;

    if-nez v0, :cond_8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzai;->zzf()Lcom/google/android/gms/internal/gtm/zzai;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzk()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzrl;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
