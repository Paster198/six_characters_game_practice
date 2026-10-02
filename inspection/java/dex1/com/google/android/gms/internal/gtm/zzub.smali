.class public final Lcom/google/android/gms/internal/gtm/zzub;
.super Lcom/google/android/gms/internal/gtm/zzuv;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuv<",
        "Lcom/google/android/gms/internal/gtm/zzub;",
        "Lcom/google/android/gms/internal/gtm/zzua;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/gtm/zzub;


# instance fields
.field private zzf:I

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzuf;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzub;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzub;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzub;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzm:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzk:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zze()Lcom/google/android/gms/internal/gtm/zzwu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzl:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzub;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzub;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_46

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzm:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzua;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzua;-><init>(Lcom/google/android/gms/internal/gtm/zztq;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzub;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzub;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-string v6, "zzl"

    const-class v7, Lcom/google/android/gms/internal/gtm/zzuf;

    const-string v0, "zzf"

    const-string v1, "zzg"

    const-string v2, "zzh"

    const-string v3, "zzi"

    const-string v4, "zzj"

    const-string v5, "zzk"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzwv;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u03e7\u0006\u0000\u0001\u0001\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0007\u1007\u0003\n\u1008\u0004\u03e7\u041b"

    .line 2
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_46
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzm:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
