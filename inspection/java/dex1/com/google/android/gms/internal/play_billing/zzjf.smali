.class public final Lcom/google/android/gms/internal/play_billing/zzjf;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjf;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzd:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzjd;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjd;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzjf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/play_billing/zzjf;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_billing/zzjf;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjf;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjf;->zze:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_37

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjd;-><init>(Lcom/google/android/gms/internal/play_billing/zzje;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjf;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-class p1, Lcom/google/android/gms/internal/play_billing/zzim;

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzhi;

    const-string p3, "zze"

    const-string v0, "zzd"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjf;->zzb:Lcom/google/android/gms/internal/play_billing/zzjf;

    new-instance p3, Lcom/google/android/gms/internal/play_billing/zzia;

    const-string v0, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001?\u0000\u00023\u0000\u0003\u023b\u0000\u0004:\u0000\u0005<\u0000\u0006<\u0000"

    .line 2
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzia;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_37
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
