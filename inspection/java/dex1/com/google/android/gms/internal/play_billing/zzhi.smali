.class public final Lcom/google/android/gms/internal/play_billing/zzhi;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzhi;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzgu;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzhi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhz;->zze()Lcom/google/android/gms/internal/play_billing/zzhz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zzd:Lcom/google/android/gms/internal/play_billing/zzgu;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/play_billing/zzhi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    return-object v0
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_33

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhg;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>(Lcom/google/android/gms/internal/play_billing/zzhh;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhi;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzhi;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zzd"

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzjf;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzhi;->zzb:Lcom/google/android/gms/internal/play_billing/zzhi;

    new-instance p3, Lcom/google/android/gms/internal/play_billing/zzia;

    const-string v0, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 2
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzia;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_33
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
