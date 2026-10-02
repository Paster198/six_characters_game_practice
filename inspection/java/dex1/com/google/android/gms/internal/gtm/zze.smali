.class public final Lcom/google/android/gms/internal/gtm/zze;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zze;",
        "Lcom/google/android/gms/internal/gtm/zzd;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzux;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzux<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            "Lcom/google/android/gms/internal/gtm/zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/gtm/zze;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzm;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzg;

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v1, Lcom/google/android/gms/internal/gtm/zze;

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zze;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zze;->zze:Lcom/google/android/gms/internal/gtm/zze;

    const-class v0, Lcom/google/android/gms/internal/gtm/zze;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zzi()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzye;->zzk:Lcom/google/android/gms/internal/gtm/zzye;

    const-class v6, Lcom/google/android/gms/internal/gtm/zze;

    const/4 v3, 0x0

    const v4, 0x2d4c0bd

    move-object v2, v1

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzuz;->zzaa(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzwk;Lcom/google/android/gms/internal/gtm/zzvc;ILcom/google/android/gms/internal/gtm/zzye;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzux;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zze;->zza:Lcom/google/android/gms/internal/gtm/zzux;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zze;->zzi:B

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zze;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zze;->zze:Lcom/google/android/gms/internal/gtm/zze;

    return-object v0
.end method


# virtual methods
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
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zze;->zzi:B

    return-object v0

    .line 1
    :cond_19
    sget-object p1, Lcom/google/android/gms/internal/gtm/zze;->zze:Lcom/google/android/gms/internal/gtm/zze;

    return-object p1

    .line 4
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzd;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzd;-><init>(Lcom/google/android/gms/internal/gtm/zzc;)V

    return-object p1

    .line 1
    :cond_22
    new-instance p1, Lcom/google/android/gms/internal/gtm/zze;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zze;-><init>()V

    return-object p1

    .line 0
    :cond_28
    const-string p1, "zzg"

    const-string p2, "zzh"

    const-string p3, "zzf"

    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zze;->zze:Lcom/google/android/gms/internal/gtm/zze;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0002\u0001\u1409\u0000\u0003\u1409\u0001"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zze;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3b
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zze;->zzi:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
