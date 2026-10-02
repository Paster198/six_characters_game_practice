.class public final Lcom/google/android/gms/internal/play_billing/zzdx;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdx;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzd:I

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/play_billing/zzdx;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    return-object v0
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/play_billing/zzdx;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzt(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzdx;

    return-object p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/play_billing/zzeg;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdx;->zze:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzeg;

    return-object v0

    .line 2
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzb()Lcom/google/android/gms/internal/play_billing/zzeg;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_34

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdv;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzdv;-><init>(Lcom/google/android/gms/internal/play_billing/zzdw;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzdx;-><init>()V

    return-object p1

    .line 1
    :cond_21
    const-string p1, "zzd"

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzeg;

    const-string p3, "zze"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzdx;->zzb:Lcom/google/android/gms/internal/play_billing/zzdx;

    const-string p3, "\u0004\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001;\u0000\u0002<\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzdx;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
