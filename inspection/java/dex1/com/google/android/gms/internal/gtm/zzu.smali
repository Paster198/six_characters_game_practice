.class public final Lcom/google/android/gms/internal/gtm/zzu;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzu;",
        "Lcom/google/android/gms/internal/gtm/zzt;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzu;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzu;->zza:Lcom/google/android/gms/internal/gtm/zzu;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzf:Ljava/lang/String;

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzh:J

    return-void
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/gtm/zzu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzu;->zza:Lcom/google/android/gms/internal/gtm/zzu;

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzj:J

    return-wide v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_3a

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzu;->zza:Lcom/google/android/gms/internal/gtm/zzu;

    return-object p1

    .line 4
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzt;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzt;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzu;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzu;-><init>()V

    return-object p1

    .line 0
    :cond_21
    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v0, "zze"

    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzh"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzu;->zza:Lcom/google/android/gms/internal/gtm/zzu;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1007\u0003\u0005\u1002\u0004"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzu;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3a
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzh:J

    return-wide v0
.end method

.method public final zzd()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzg:J

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zzi:Z

    return v0
.end method

.method public final zzh()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzu;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
