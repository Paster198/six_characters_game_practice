.class public final Lcom/google/android/gms/internal/play_billing/zzkd;
.super Lcom/google/android/gms/internal/play_billing/zzgp;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhs;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzkd;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzgu;

.field private zzi:Lcom/google/android/gms/internal/play_billing/zzju;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Lcom/google/android/gms/internal/play_billing/zzld;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzkd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzu()Lcom/google/android/gms/internal/play_billing/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzv()Lcom/google/android/gms/internal/play_billing/zzgu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzh:Lcom/google/android/gms/internal/play_billing/zzgu;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_billing/zzka;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzp()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzka;

    return-object v0
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/play_billing/zzkd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzc()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzgt;->size()I

    move-result v1

    add-int/2addr v1, v1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzg(I)Lcom/google/android/gms/internal/play_billing/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    :cond_16
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzg:Lcom/google/android/gms/internal/play_billing/zzgt;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjz;->zza()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgt;->zzh(I)V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzju;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzi:Lcom/google/android/gms/internal/play_billing/zzju;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzkd;Ljava/lang/String;)V
    .registers 2

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    const-string p1, "ProxyBillingBroadcastReceiver"

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_billing/zzkd;Lcom/google/android/gms/internal/play_billing/zzld;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzl:Lcom/google/android/gms/internal/play_billing/zzld;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzkd;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_46

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    return-object p1

    .line 5
    :cond_14
    throw p3

    .line 2
    :cond_15
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzka;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzka;-><init>(Lcom/google/android/gms/internal/play_billing/zzkc;)V

    return-object p1

    :cond_1b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzkd;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzkd;-><init>()V

    return-object p1

    .line 1
    :cond_21
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzkb;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjy;->zza:Lcom/google/android/gms/internal/play_billing/zzgs;

    const-class v7, Lcom/google/android/gms/internal/play_billing/zzkz;

    const-string v10, "zzk"

    const-string v11, "zzl"

    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v4, "zzg"

    const-string v6, "zzh"

    const-string v8, "zzi"

    const-string v9, "zzj"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzkd;->zzb:Lcom/google/android/gms/internal/play_billing/zzkd;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004\u0008\u1009\u0005"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_46
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
