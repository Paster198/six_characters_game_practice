.class public final Lcom/google/android/gms/internal/gtm/zzy;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzy;",
        "Lcom/google/android/gms/internal/gtm/zzx;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzy;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzy;->zza:Lcom/google/android/gms/internal/gtm/zzy;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzy;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzh:B

    return-void
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/gtm/zzy;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzy;->zza:Lcom/google/android/gms/internal/gtm/zzy;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzf:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3b

    const/4 p3, 0x2

    if-eq p1, p3, :cond_28

    const/4 p3, 0x3

    if-eq p1, p3, :cond_22

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1c

    const/4 p3, 0x5

    if-eq p1, p3, :cond_19

    if-nez p2, :cond_15

    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    const/4 p1, 0x1

    :goto_16
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzh:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzy;->zza:Lcom/google/android/gms/internal/gtm/zzy;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzx;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzx;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzy;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzy;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zze"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzy;->zza:Lcom/google/android/gms/internal/gtm/zzy;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1504\u0000\u0002\u1504\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzy;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3b
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzy;->zzg:I

    return v0
.end method
