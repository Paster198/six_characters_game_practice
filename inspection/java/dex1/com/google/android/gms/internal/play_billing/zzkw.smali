.class public final Lcom/google/android/gms/internal/play_billing/zzkw;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkw;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzkg;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzkj;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzb:Lcom/google/android/gms/internal/play_billing/zzkw;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzlg;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzf:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzlk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzku;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzb:Lcom/google/android/gms/internal/play_billing/zzkw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzku;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzkw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzb:Lcom/google/android/gms/internal/play_billing/zzkw;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzjl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzjp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzjx;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzf:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zze:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzkw;Lcom/google/android/gms/internal/play_billing/zzkg;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzg:Lcom/google/android/gms/internal/play_billing/zzkg;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkw;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_44

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkw;->zzb:Lcom/google/android/gms/internal/play_billing/zzkw;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzku;-><init>(Lcom/google/android/gms/internal/play_billing/zzkv;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzkw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzkw;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-class v4, Lcom/google/android/gms/internal/play_billing/zzjl;

    const-class v5, Lcom/google/android/gms/internal/play_billing/zzjp;

    const-class v6, Lcom/google/android/gms/internal/play_billing/zzlk;

    const-class v7, Lcom/google/android/gms/internal/play_billing/zzkd;

    const-class v9, Lcom/google/android/gms/internal/play_billing/zzjx;

    const-class v10, Lcom/google/android/gms/internal/play_billing/zzlg;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-string v8, "zzh"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzkw;->zzb:Lcom/google/android/gms/internal/play_billing/zzkw;

    const-string p3, "\u0004\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\u1009\u0001\u0007<\u0000\u0008<\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzkw;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
