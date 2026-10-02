.class public final Lcom/google/android/gms/internal/gtm/zzuf;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzuf;",
        "Lcom/google/android/gms/internal/gtm/zzuc;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzuf;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzue;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J

.field private zzj:D

.field private zzk:Lcom/google/android/gms/internal/gtm/zztd;

.field private zzl:Ljava/lang/String;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuf;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzuf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzuf;->zza:Lcom/google/android/gms/internal/gtm/zzuf;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzuf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzm:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zze()Lcom/google/android/gms/internal/gtm/zzwu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzg:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/gtm/zztd;->zzb:Lcom/google/android/gms/internal/gtm/zztd;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzk:Lcom/google/android/gms/internal/gtm/zztd;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzuf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuf;->zza:Lcom/google/android/gms/internal/gtm/zzuf;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_48

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzm:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzuf;->zza:Lcom/google/android/gms/internal/gtm/zzuf;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzuc;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzuc;-><init>(Lcom/google/android/gms/internal/gtm/zztq;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzuf;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzuf;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-class v2, Lcom/google/android/gms/internal/gtm/zzue;

    const-string v7, "zzk"

    const-string v8, "zzl"

    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzuf;->zza:Lcom/google/android/gms/internal/gtm/zzuf;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzwv;

    const-string v0, "\u0001\u0007\u0000\u0001\u0002\u0008\u0007\u0000\u0001\u0001\u0002\u041b\u0003\u1008\u0000\u0004\u1003\u0001\u0005\u1002\u0002\u0006\u1000\u0003\u0007\u100a\u0004\u0008\u1008\u0005"

    .line 2
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_48
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzuf;->zzm:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
