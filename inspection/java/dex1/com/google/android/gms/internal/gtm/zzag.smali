.class public final Lcom/google/android/gms/internal/gtm/zzag;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzag;",
        "Lcom/google/android/gms/internal/gtm/zzaf;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzag;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzak;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzw;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzag;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzag;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzag;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzi:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzag;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzag;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzh:Lcom/google/android/gms/internal/gtm/zzw;

    if-nez v0, :cond_8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzw;->zzc()Lcom/google/android/gms/internal/gtm/zzw;

    move-result-object v0

    :cond_8
    return-object v0
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
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzi:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzag;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaf;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzaf;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzag;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzag;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-string p1, "zzg"

    const-string p2, "zzh"

    const-string p3, "zze"

    const-string v0, "zzf"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzag;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0002\u0001\u1008\u0000\u0002\u1409\u0001\u0003\u1409\u0002"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzag;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3d
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzi:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzf()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
