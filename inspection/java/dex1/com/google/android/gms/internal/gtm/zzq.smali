.class public final Lcom/google/android/gms/internal/gtm/zzq;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzq;",
        "Lcom/google/android/gms/internal/gtm/zzo;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzq;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzq;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzq;->zza:Lcom/google/android/gms/internal/gtm/zzq;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzq;->zzf:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzq;->zza:Lcom/google/android/gms/internal/gtm/zzq;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    if-eq p1, p2, :cond_12

    return-object p3

    .line 1
    :cond_12
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzq;->zza:Lcom/google/android/gms/internal/gtm/zzq;

    return-object p1

    .line 4
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzo;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzo;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzq;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzq;-><init>()V

    return-object p1

    .line 0
    :cond_21
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzp;->zza:Lcom/google/android/gms/internal/gtm/zzvd;

    const-string p2, "zzg"

    const-string p3, "zzh"

    const-string v0, "zze"

    const-string v1, "zzf"

    filled-new-array {v0, v1, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzq;->zza:Lcom/google/android/gms/internal/gtm/zzq;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzq;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_38
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
