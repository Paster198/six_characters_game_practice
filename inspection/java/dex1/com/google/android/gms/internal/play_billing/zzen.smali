.class public final Lcom/google/android/gms/internal/play_billing/zzen;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzen;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzgu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzen;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lcom/google/android/gms/internal/play_billing/zzen;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzen;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzen;->zzv()Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:Lcom/google/android/gms/internal/play_billing/zzgu;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzem;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lcom/google/android/gms/internal/play_billing/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzem;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzen;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lcom/google/android/gms/internal/play_billing/zzen;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzen;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:Lcom/google/android/gms/internal/play_billing/zzgu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzc()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgu;->size()I

    move-result v1

    add-int/2addr v1, v1

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgu;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:Lcom/google/android/gms/internal/play_billing/zzgu;

    :cond_13
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzen;->zzd:Lcom/google/android/gms/internal/play_billing/zzgu;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzk(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_32

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lcom/google/android/gms/internal/play_billing/zzen;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzem;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzem;-><init>(Lcom/google/android/gms/internal/play_billing/zzeo;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzen;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzen;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zzd"

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzel;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzen;->zzb:Lcom/google/android/gms/internal/play_billing/zzen;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzen;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_32
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
