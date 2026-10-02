.class public final Lcom/google/android/gms/internal/play_billing/zzjl;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjl;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzju;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkt;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzln;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/gms/internal/play_billing/zzjl;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzjj;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjj;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzjl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object v0
.end method

.method public static zzc([B)Lcom/google/android/gms/internal/play_billing/zzjl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzt(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzju;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzh:Lcom/google/android/gms/internal/play_billing/zzju;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzd:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzjl;Lcom/google/android/gms/internal/play_billing/zzkn;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_44

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    return-object p1

    .line 4
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzjj;-><init>(Lcom/google/android/gms/internal/play_billing/zzjk;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjl;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjm;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    const-class v6, Lcom/google/android/gms/internal/play_billing/zzkn;

    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzjy;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    const-class v9, Lcom/google/android/gms/internal/play_billing/zzln;

    const-class v10, Lcom/google/android/gms/internal/play_billing/zzkt;

    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    const-string v5, "zzh"

    const-string v7, "zzi"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjl;->zzb:Lcom/google/android/gms/internal/play_billing/zzjl;

    const-string p3, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000\u0005\u180c\u0002\u0006<\u0000\u0007<\u0000"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzjl;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzkt;
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zze:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzjl;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkt;

    return-object v0

    .line 2
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkt;->zzb()Lcom/google/android/gms/internal/play_billing/zzkt;

    move-result-object v0

    return-object v0
.end method
