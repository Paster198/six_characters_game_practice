.class public final Lcom/google/android/gms/internal/gtm/zztw;
.super Lcom/google/android/gms/internal/gtm/zzuv;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuv<",
        "Lcom/google/android/gms/internal/gtm/zztw;",
        "Lcom/google/android/gms/internal/gtm/zztr;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/gtm/zztw;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:I

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zztv;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzuf;",
            ">;"
        }
    .end annotation
.end field

.field private zzr:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zztw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zztw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztw;->zze:Lcom/google/android/gms/internal/gtm/zztw;

    const-class v1, Lcom/google/android/gms/internal/gtm/zztw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zztw;->zzr:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zze()Lcom/google/android/gms/internal/gtm/zzwu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zztw;->zzm:Lcom/google/android/gms/internal/gtm/zzvh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zztw;->zzo:Z

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zze()Lcom/google/android/gms/internal/gtm/zzwu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zztw;->zzq:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zztw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zztw;->zze:Lcom/google/android/gms/internal/gtm/zztw;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zztw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zztw;->zze:Lcom/google/android/gms/internal/gtm/zztw;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_58

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
    iput-byte v1, v0, Lcom/google/android/gms/internal/gtm/zztw;->zzr:B

    return-object v3

    .line 1
    :cond_1b
    sget-object v1, Lcom/google/android/gms/internal/gtm/zztw;->zze:Lcom/google/android/gms/internal/gtm/zztw;

    return-object v1

    .line 4
    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/gtm/zztr;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zztr;-><init>(Lcom/google/android/gms/internal/gtm/zztq;)V

    return-object v1

    .line 1
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/gtm/zztw;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zztw;-><init>()V

    return-object v1

    .line 0
    :cond_2a
    sget-object v4, Lcom/google/android/gms/internal/gtm/zzts;->zza:Lcom/google/android/gms/internal/gtm/zzvd;

    sget-object v9, Lcom/google/android/gms/internal/gtm/zztt;->zza:Lcom/google/android/gms/internal/gtm/zzvd;

    const-class v12, Lcom/google/android/gms/internal/gtm/zztv;

    const-string v16, "zzq"

    const-class v17, Lcom/google/android/gms/internal/gtm/zzuf;

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzk"

    const-string v7, "zzj"

    const-string v8, "zzi"

    const-string v10, "zzl"

    const-string v11, "zzm"

    const-string v13, "zzn"

    const-string v14, "zzo"

    const-string v15, "zzp"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zztw;->zze:Lcom/google/android/gms/internal/gtm/zztw;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzwv;

    const-string v4, "\u0001\u000b\u0000\u0001\u0001\u03e7\u000b\u0000\u0002\u0001\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1007\u0004\u0005\u1007\u0003\u0006\u100c\u0002\n\u1007\u0005\u000b\u001b\u000c\u1007\u0006\r\u1007\u0007\u000e\u1007\u0008\u03e7\u041b"

    .line 2
    invoke-direct {v3, v2, v4, v1}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_58
    iget-byte v1, v0, Lcom/google/android/gms/internal/gtm/zztw;->zzr:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
