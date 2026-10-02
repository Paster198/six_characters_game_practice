.class public final Lcom/google/android/gms/internal/gtm/zzw;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzw;",
        "Lcom/google/android/gms/internal/gtm/zzv;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzw;


# instance fields
.field private zze:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzu;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzw;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzw;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzh:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzw;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zze:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzw;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzw;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzg:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzw;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_41

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzh:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzv;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzv;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzw;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-class v1, Lcom/google/android/gms/internal/gtm/zzak;

    const-class v3, Lcom/google/android/gms/internal/gtm/zzak;

    const-string v4, "zzg"

    const-class v5, Lcom/google/android/gms/internal/gtm/zzu;

    const-string v0, "zze"

    const-string v2, "zzf"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    const-string p3, "\u0001\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0003\u0002\u0001\u041b\u0002\u041b\u0003\u001b"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzw;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_41
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzg:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zze:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method
