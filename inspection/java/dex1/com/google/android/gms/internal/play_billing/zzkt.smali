.class public final Lcom/google/android/gms/internal/play_billing/zzkt;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkt;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/play_billing/zzgu;

.field private zzf:Ljava/lang/String;

.field private zzg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb:Lcom/google/android/gms/internal/play_billing/zzkt;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkt;->zzv()Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkt;->zze:Lcom/google/android/gms/internal/play_billing/zzgu;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzf:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/play_billing/zzkt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb:Lcom/google/android/gms/internal/play_billing/zzkt;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/play_billing/zzkt;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb:Lcom/google/android/gms/internal/play_billing/zzkt;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzkt;Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzkt;->zzg:Z

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_38

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb:Lcom/google/android/gms/internal/play_billing/zzkt;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzko;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzko;-><init>(Lcom/google/android/gms/internal/play_billing/zzks;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzkt;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzkt;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-class p1, Lcom/google/android/gms/internal/play_billing/zzkr;

    const-string p2, "zzf"

    const-string p3, "zzg"

    const-string v0, "zzd"

    const-string v1, "zze"

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb:Lcom/google/android/gms/internal/play_billing/zzkt;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1007\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzkt;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
