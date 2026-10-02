.class public final Lcom/google/android/gms/internal/play_billing/zzjx;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjx;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/play_billing/zzjx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/play_billing/zzjx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    return-object v0
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_2a

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_21

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1b

    const/4 p2, 0x4

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-ne p1, p2, :cond_14

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjv;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjv;-><init>(Lcom/google/android/gms/internal/play_billing/zzjw;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjx;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjx;->zzb:Lcom/google/android/gms/internal/play_billing/zzjx;

    const-string p2, "\u0004\u0000"

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2a
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
