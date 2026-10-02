.class public final Lcom/google/android/gms/internal/gtm/zztz;
.super Lcom/google/android/gms/internal/gtm/zzuv;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuv<",
        "Lcom/google/android/gms/internal/gtm/zztz;",
        "Lcom/google/android/gms/internal/gtm/zztx;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/gtm/zztz;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Ljava/lang/String;

.field private zzG:Ljava/lang/String;

.field private zzH:Ljava/lang/String;

.field private zzI:Ljava/lang/String;

.field private zzJ:Ljava/lang/String;

.field private zzK:Ljava/lang/String;

.field private zzL:Ljava/lang/String;

.field private zzM:Z

.field private zzN:Z

.field private zzO:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzuf;",
            ">;"
        }
    .end annotation
.end field

.field private zzP:B

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Z

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:Ljava/lang/String;

.field private zzo:Z

.field private zzp:Ljava/lang/String;

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Ljava/lang/String;

.field private zzu:I

.field private zzv:Ljava/lang/String;

.field private zzw:Ljava/lang/String;

.field private zzx:Ljava/lang/String;

.field private zzy:I

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zztz;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zztz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zztz;->zze:Lcom/google/android/gms/internal/gtm/zztz;

    const-class v1, Lcom/google/android/gms/internal/gtm/zztz;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuv;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzP:B

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzh:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzi:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzj:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzk:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzl:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzm:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzn:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzp:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzt:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzu:I

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzv:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzw:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzx:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzy:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzE:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzF:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzG:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzH:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzI:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzJ:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzK:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzL:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzN:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zze()Lcom/google/android/gms/internal/gtm/zzwu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zztz;->zzO:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zztz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zztz;->zze:Lcom/google/android/gms/internal/gtm/zztz;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zztz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zztz;->zze:Lcom/google/android/gms/internal/gtm/zztz;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 44

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_84

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
    iput-byte v1, v0, Lcom/google/android/gms/internal/gtm/zztz;->zzP:B

    return-object v3

    .line 1
    :cond_1b
    sget-object v1, Lcom/google/android/gms/internal/gtm/zztz;->zze:Lcom/google/android/gms/internal/gtm/zztz;

    return-object v1

    .line 4
    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/gtm/zztx;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zztx;-><init>(Lcom/google/android/gms/internal/gtm/zztq;)V

    return-object v1

    .line 1
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/gtm/zztz;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zztz;-><init>()V

    return-object v1

    .line 0
    :cond_2a
    sget-object v11, Lcom/google/android/gms/internal/gtm/zzty;->zza:Lcom/google/android/gms/internal/gtm/zzvd;

    const-string v38, "zzO"

    const-class v39, Lcom/google/android/gms/internal/gtm/zzuf;

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzj"

    const-string v5, "zzh"

    const-string v6, "zzk"

    const-string v7, "zzl"

    const-string v8, "zzm"

    const-string v9, "zzp"

    const-string v10, "zzu"

    const-string v12, "zzq"

    const-string v13, "zzv"

    const-string v14, "zzx"

    const-string v15, "zzy"

    const-string v16, "zzz"

    const-string v17, "zzA"

    const-string v18, "zzB"

    const-string v19, "zzn"

    const-string v20, "zzD"

    const-string v21, "zzi"

    const-string v22, "zzo"

    const-string v23, "zzr"

    const-string v24, "zzs"

    const-string v25, "zzt"

    const-string v26, "zzE"

    const-string v27, "zzF"

    const-string v28, "zzG"

    const-string v29, "zzH"

    const-string v30, "zzI"

    const-string v31, "zzJ"

    const-string v32, "zzC"

    const-string v33, "zzK"

    const-string v34, "zzL"

    const-string v35, "zzw"

    const-string v36, "zzM"

    const-string v37, "zzN"

    filled-new-array/range {v2 .. v39}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zztz;->zze:Lcom/google/android/gms/internal/gtm/zztz;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzwv;

    const-string v4, "\u0001\"\u0000\u0002\u0001\u03e7\"\u0000\u0001\u0001\u0001\u1008\u0002\u0002\u1004\u0000\u0005\u1004\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1008\u0008\t\u100c\r\n\u1007\t\u000b\u1008\u000e\u000c\u1008\u0010\u000e\u1004\u0011\u0010\u1007\u0012\u0011\u1007\u0013\u0012\u1007\u0014\u0013\u1008\u0006\u0017\u1007\u0016\u0018\u1007\u0001\u001a\u1007\u0007\u001b\u1007\n\u001c\u1007\u000b\u001d\u1008\u000c\u001f\u1007\u0017$\u1008\u0018%\u1008\u0019\'\u1008\u001a(\u1008\u001b)\u1008\u001c*\u1007\u0015,\u1008\u001d-\u1008\u001e.\u1008\u000f/\u1007\u001f0\u1007 \u03e7\u041b"

    .line 2
    invoke-direct {v3, v2, v4, v1}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_84
    iget-byte v1, v0, Lcom/google/android/gms/internal/gtm/zztz;->zzP:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method
