.class public final Lcom/google/android/gms/internal/gtm/zzk;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzk;",
        "Lcom/google/android/gms/internal/gtm/zzj;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzk;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Lcom/google/android/gms/internal/gtm/zzak;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzk;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzk;->zza:Lcom/google/android/gms/internal/gtm/zzk;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzm:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzk;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzk;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzg:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzk;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzh:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzk;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzi:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzk;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzj:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzk;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzk;->zzk:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzk;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzk;->zza:Lcom/google/android/gms/internal/gtm/zzk;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_53

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1b

    if-nez p2, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    const/4 v1, 0x1

    :goto_18
    iput-byte v1, v0, Lcom/google/android/gms/internal/gtm/zzk;->zzm:B

    return-object v3

    .line 1
    :cond_1b
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzk;->zza:Lcom/google/android/gms/internal/gtm/zzk;

    return-object v1

    .line 4
    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzj;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzj;-><init>(Lcom/google/android/gms/internal/gtm/zzc;)V

    return-object v1

    .line 1
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzk;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzk;-><init>()V

    return-object v1

    .line 0
    :cond_2a
    const-class v4, Lcom/google/android/gms/internal/gtm/zzg;

    const-class v6, Lcom/google/android/gms/internal/gtm/zzg;

    const-class v8, Lcom/google/android/gms/internal/gtm/zzg;

    const-class v10, Lcom/google/android/gms/internal/gtm/zzg;

    const-class v12, Lcom/google/android/gms/internal/gtm/zzg;

    const-class v14, Lcom/google/android/gms/internal/gtm/zzg;

    const-string v15, "zzl"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v5, "zzg"

    const-string v7, "zzh"

    const-string v9, "zzi"

    const-string v11, "zzj"

    const-string v13, "zzk"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzk;->zza:Lcom/google/android/gms/internal/gtm/zzk;

    const-string v3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0006\u0007\u0001\u041b\u0002\u041b\u0003\u041b\u0004\u041b\u0005\u041b\u0006\u041b\u0007\u1409\u0000"

    .line 2
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzk;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_53
    iget-byte v1, v0, Lcom/google/android/gms/internal/gtm/zzk;->zzm:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
