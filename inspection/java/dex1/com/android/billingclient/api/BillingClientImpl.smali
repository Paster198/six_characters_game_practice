.class Lcom/android/billingclient/api/BillingClientImpl;
.super Lcom/android/billingclient/api/BillingClient;
.source "com.android.billingclient:billing@@9.1.0"


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

.field private volatile zzK:Lcom/android/billingclient/api/BillingClientStateListener;

.field private zzL:Ljava/util/concurrent/ExecutorService;

.field private final zzM:Ljava/lang/Long;

.field private final zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

.field private final zza:Ljava/lang/Object;

.field private volatile zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/os/Handler;

.field private volatile zzf:Lcom/android/billingclient/api/zzz;

.field private zzg:Landroid/content/Context;

.field private zzh:Lcom/android/billingclient/api/zzdd;

.field private volatile zzi:Lcom/google/android/gms/internal/play_billing/zzar;

.field private volatile zzj:Lcom/android/billingclient/api/zzbz;

.field private zzk:Z

.field private zzl:Z

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzk()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    new-instance p3, Ljava/util/Random;

    .line 3
    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbf;->zza()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

    const-string p4, "9.1.0"

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    if-eqz v0, :cond_51

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    :cond_51
    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 10
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzd(J)Lcom/google/android/gms/internal/play_billing/zzke;

    iget-boolean p3, p5, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    .line 12
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zzw(Z)Lcom/google/android/gms/internal/play_billing/zzke;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(I)Lcom/google/android/gms/internal/play_billing/zzke;

    const-wide/32 p3, 0x373637b7

    .line 14
    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzp(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 15
    invoke-static {v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbA(Lcom/google/android/gms/internal/play_billing/zzke;Landroid/content/Context;)V

    :try_start_74
    iget-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 17
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-virtual {p2, p3, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 19
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzke;
    :try_end_89
    .catchall {:try_start_74 .. :try_end_89} :catchall_8a

    goto :goto_92

    :catchall_8a
    move-exception p1

    .line 23
    const-string p2, "BillingClient"

    const-string p3, "Error getting app version code."

    .line 20
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_92
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkg;

    new-instance p3, Lcom/android/billingclient/api/zzdr;

    .line 22
    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/zzdr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzkg;)V

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    iget-object p1, p5, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Lcom/google/android/gms/internal/play_billing/zzbq;

    iget-boolean p1, p5, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzH:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 19

    .line 55
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzk()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    new-instance p1, Ljava/util/Random;

    .line 57
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbf;->zza()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

    const-string v6, "9.1.0"

    iput-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v8, p9

    .line 60
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Ljava/lang/String;Lcom/android/billingclient/api/zzdd;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 15

    .line 49
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzk()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    new-instance p1, Ljava/util/Random;

    .line 51
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbf;->zza()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

    const-string v4, "9.1.0"

    iput-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v1, p3

    move-object v2, p4

    move-object v6, p7

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Ljava/lang/String;Lcom/android/billingclient/api/zzdd;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/zzdd;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 15

    .line 24
    const-string p1, "BillingClient"

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    iput p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzcf;->zzk()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p5

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    new-instance p5, Ljava/util/Random;

    .line 26
    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    invoke-virtual {p5}, Ljava/util/Random;->nextLong()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbf;->zza()Lcom/google/android/gms/internal/play_billing/zzbq;

    move-result-object p6

    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

    const-string p6, "9.1.0"

    iput-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/android/billingclient/api/BillingClientImpl;->zzaO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    .line 29
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    if-eqz v0, :cond_53

    .line 32
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    :cond_53
    iget-object p6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 33
    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v1, p6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 34
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzd(J)Lcom/google/android/gms/internal/play_billing/zzke;

    iget-boolean p5, p7, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    .line 35
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/play_billing/zzke;->zzw(Z)Lcom/google/android/gms/internal/play_billing/zzke;

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(I)Lcom/google/android/gms/internal/play_billing/zzke;

    const-wide/32 p5, 0x373637b7

    .line 37
    invoke-virtual {v1, p5, p6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzp(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 38
    invoke-static {v1, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbA(Lcom/google/android/gms/internal/play_billing/zzke;Landroid/content/Context;)V

    :try_start_76
    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 39
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 40
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 41
    invoke-virtual {p3, p5, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 42
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzke;
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_8c

    goto :goto_93

    :catchall_8c
    move-exception v0

    move-object p3, v0

    .line 48
    const-string p4, "Error getting app version code."

    .line 43
    invoke-static {p1, p4, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :goto_93
    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzkg;

    new-instance p5, Lcom/android/billingclient/api/zzdr;

    .line 45
    invoke-direct {p5, p3, p4}, Lcom/android/billingclient/api/zzdr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzkg;)V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 46
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    new-instance v0, Lcom/android/billingclient/api/zzz;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzz;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;)V

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    iget-object p1, p7, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Lcom/google/android/gms/internal/play_billing/zzbq;

    iget-boolean p1, p7, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzH:Z

    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Ljava/lang/String;Lcom/android/billingclient/api/zzdd;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 20

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 1
    const-string v3, "BillingClient"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v4

    move-object/from16 v0, p6

    .line 3
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 4
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    :cond_1c
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzd(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 7
    iget-boolean v0, v2, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzw(Z)Lcom/google/android/gms/internal/play_billing/zzke;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(I)Lcom/google/android/gms/internal/play_billing/zzke;

    const-wide/32 v5, 0x373637b7

    .line 9
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzp(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 10
    invoke-static {v4, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbA(Lcom/google/android/gms/internal/play_billing/zzke;Landroid/content/Context;)V

    const/4 p1, 0x0

    :try_start_42
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 12
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 14
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/zzke;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzke;
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_58

    goto :goto_5e

    :catchall_58
    move-exception v0

    .line 17
    const-string v5, "Error getting app version code."

    .line 15
    invoke-static {v3, v5, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5e
    if-eqz v1, :cond_63

    .line 14
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    goto :goto_72

    .line 21
    :cond_63
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzkg;

    new-instance v4, Lcom/android/billingclient/api/zzdr;

    .line 17
    invoke-direct {v4, v0, v1}, Lcom/android/billingclient/api/zzdr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzkg;)V

    iput-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    :goto_72
    if-nez p2, :cond_79

    .line 14
    const-string v0, "Billing client should have a valid listener but the provided is null."

    .line 18
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    new-instance v4, Lcom/android/billingclient/api/zzz;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    const/4 v7, 0x0

    iget-object v10, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    move-object v6, p2

    move-object v8, p4

    move-object/from16 v9, p5

    .line 19
    invoke-direct/range {v4 .. v10}, Lcom/android/billingclient/api/zzz;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;)V

    iput-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    if-eqz p4, :cond_8e

    const/4 p1, 0x1

    :cond_8e
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzI:Z

    .line 20
    iget-object p1, v2, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Lcom/google/android/gms/internal/play_billing/zzbq;

    .line 21
    iget-boolean p1, v2, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzH:Z

    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Ljava/lang/String;Lcom/android/billingclient/api/zzdd;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .registers 16

    .line 22
    const-string v1, "BillingClient"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v2

    .line 24
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzx(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    if-eqz p4, :cond_16

    .line 25
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzy(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    :cond_16
    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 26
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 27
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzd(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 28
    iget-boolean p4, p6, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzw(Z)Lcom/google/android/gms/internal/play_billing/zzke;

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(I)Lcom/google/android/gms/internal/play_billing/zzke;

    const-wide/32 v3, 0x373637b7

    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzke;->zzp(J)Lcom/google/android/gms/internal/play_billing/zzke;

    .line 31
    invoke-static {v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbA(Lcom/google/android/gms/internal/play_billing/zzke;Landroid/content/Context;)V

    :try_start_3b
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 33
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 35
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzke;
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_52

    goto :goto_59

    :catchall_52
    move-exception v0

    move-object p1, v0

    .line 38
    const-string p4, "Error getting app version code."

    .line 36
    invoke-static {v1, p4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    if-eqz p5, :cond_5e

    .line 35
    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    goto :goto_6d

    .line 43
    :cond_5e
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzkg;

    new-instance p5, Lcom/android/billingclient/api/zzdr;

    .line 38
    invoke-direct {p5, p1, p4}, Lcom/android/billingclient/api/zzdr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzkg;)V

    iput-object p5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    :goto_6d
    if-nez p2, :cond_74

    .line 35
    const-string p1, "Billing client should have a valid listener but the provided is null."

    .line 39
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    new-instance v2, Lcom/android/billingclient/api/zzz;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    .line 40
    invoke-direct/range {v2 .. v8}, Lcom/android/billingclient/api/zzz;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzdu;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/DeveloperProvidedBillingListener;Lcom/android/billingclient/api/zzdd;)V

    iput-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    iput-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    iget-object p1, p6, Lcom/android/billingclient/api/BillingClient$Builder;->zzb:Lcom/google/android/gms/internal/play_billing/zzbq;

    .line 43
    iget-boolean p1, p6, Lcom/android/billingclient/api/BillingClient$Builder;->zza:Z

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzH:Z

    return-void
.end method

.method public static synthetic zzA(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaL(Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzC(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzD(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic zzE(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaU(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzF(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaT(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzG(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramAvailabilityListener;I)Ljava/lang/Void;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaS(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;I)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzH(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/LaunchExternalLinkParams;Landroid/app/Activity;)Ljava/lang/Void;
    .registers 12

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_109

    :cond_14
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Z

    if-nez v1, :cond_28

    const-string p2, "BillingClient"

    const-string p3, "Current client doesn\'t support launch external link."

    .line 4
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzH:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbs:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_109

    :cond_28
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2b} :catch_101

    :try_start_2b
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_fe

    if-nez v2, :cond_39

    .line 7
    :try_start_30
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_109

    :cond_39
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 10
    sget v6, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    const-string v6, "9.1.0"

    new-instance v7, Landroid/os/Bundle;

    .line 11
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-static {v7, v6, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zza()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v3

    const-string v4, "externalOfferUri"

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/LaunchExternalLinkParams;->getLinkUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v4, "externalOfferLaunchMode"

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 19
    invoke-virtual {p2}, Lcom/android/billingclient/api/LaunchExternalLinkParams;->getLaunchMode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 21
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v4, "externalOfferLinkType"

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 23
    invoke-virtual {p2}, Lcom/android/billingclient/api/LaunchExternalLinkParams;->getLinkType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 25
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v4, "externalOfferBillingProgram"

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 27
    invoke-virtual {p2}, Lcom/android/billingclient/api/LaunchExternalLinkParams;->getBillingProgram()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 29
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 30
    invoke-virtual {p2}, Lcom/android/billingclient/api/LaunchExternalLinkParams;->getExternalTransactionToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_df

    const-string v4, "externalTransactionToken"

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 32
    invoke-virtual {p2}, Lcom/android/billingclient/api/LaunchExternalLinkParams;->getExternalTransactionToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 34
    invoke-virtual {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 35
    :cond_df
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzim;

    const-string v3, "REQUEST_PARAMS"

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object p2

    invoke-virtual {v7, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance p2, Lcom/android/billingclient/api/zzcf;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p0, v3, p1, v0}, Lcom/android/billingclient/api/zzcf;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/ref/WeakReference;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/zzcm;)V

    const/16 p3, 0x1b

    .line 37
    invoke-interface {v2, p3, v1, v7, p2}, Lcom/google/android/gms/internal/play_billing/zzar;->zzp(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzai;)V
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_fd} :catch_101

    goto :goto_109

    :catchall_fe
    move-exception p2

    .line 6
    :try_start_ff
    monitor-exit v1
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    :try_start_100
    throw p2
    :try_end_101
    .catch Ljava/lang/RuntimeException; {:try_start_100 .. :try_end_101} :catch_101

    :catch_101
    move-exception p2

    .line 38
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_109
    return-object v0
.end method

.method public static synthetic zzI(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Landroid/app/Activity;)Ljava/lang/Void;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaV(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Landroid/app/Activity;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzJ(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaR(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzK(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaW(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzL(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaP(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzM(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;)Ljava/lang/Void;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaQ(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;)Ljava/lang/Void;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzN(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)Ljava/lang/Void;
    .registers 9

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6b

    :cond_13
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    if-nez v1, :cond_26

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support alternative billing only."

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzD:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzan:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6b

    :cond_26
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_5c

    :try_start_29
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_59

    if-nez v2, :cond_36

    .line 7
    :try_start_2e
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6b

    :cond_36
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 10
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/android/billingclient/api/zzch;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/android/billingclient/api/zzch;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V

    const/16 v5, 0x15

    .line 11
    invoke-interface {v2, v5, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzar;->zzr(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzam;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_58} :catch_5c

    goto :goto_6b

    :catchall_59
    move-exception v2

    .line 6
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v2
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v1

    .line 12
    instance-of v2, v1, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_64

    .line 13
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    goto :goto_66

    .line 14
    :cond_64
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    .line 13
    :goto_66
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaq:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 15
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_6b
    return-object v0
.end method

.method static zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .registers 8

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_15

    long-to-double p1, p1

    new-instance p5, Lcom/android/billingclient/api/zzbb;

    invoke-direct {p5, p0, p3}, Lcom/android/billingclient/api/zzbb;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 3
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Async task throws exception!"

    .line 2
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzQ(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzR(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzS(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p0

    .line 3
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzT(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0xd

    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method

.method public static synthetic zzU(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzV(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramAvailabilityListener;I)V
    .registers 9

    .line 1
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzW(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzX(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic zzY(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzZ(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/BillingClientImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    return p0
.end method

.method static bridge synthetic zzaA(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzek;
    .registers 4

    const/16 p3, 0x9

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbC(Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzek;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzaB(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final synthetic zzaC(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter p4
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_25

    :try_start_3
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    monitor-exit p4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_21

    if-nez v0, :cond_11

    .line 2
    :try_start_8
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzd(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object p4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 3
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 4
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzar;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_20} :catch_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_25

    return-object p1

    :catchall_21
    move-exception v0

    move-object p1, v0

    .line 1
    :try_start_23
    monitor-exit p4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_21

    :try_start_24
    throw p1
    :try_end_25
    .catch Landroid/os/DeadObjectException; {:try_start_24 .. :try_end_25} :catch_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25

    :catch_25
    move-exception v0

    move-object p1, v0

    .line 5
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zze:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_34
    move-exception v0

    move-object p1, v0

    .line 7
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zze:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private final synthetic zzaD(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3} :catch_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_24

    :try_start_3
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    if-nez v2, :cond_11

    .line 2
    :try_start_8
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzd(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v3, 0x3

    move-object v5, p1

    move-object v6, p2

    .line 4
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzar;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_1f
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_1f} :catch_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_24

    return-object p1

    :catchall_20
    move-exception v0

    move-object p1, v0

    .line 1
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    :try_start_23
    throw p1
    :try_end_24
    .catch Landroid/os/DeadObjectException; {:try_start_23 .. :try_end_24} :catch_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    move-object p1, v0

    .line 5
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zze:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :catch_33
    move-exception v0

    move-object p1, v0

    .line 7
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zze:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private final zzaE()Landroid/os/Handler;
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    return-object v0

    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private final zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;
    .registers 6

    .line 1
    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x7

    .line 2
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    new-instance p2, Lcom/android/billingclient/api/zzcl;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p1, p4, v0}, Lcom/android/billingclient/api/zzcl;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method

.method private final zzaG(I)Lcom/android/billingclient/api/BillingResult;
    .registers 5

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjp;->zza()Lcom/google/android/gms/internal/play_billing/zzjn;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjn;->zze(I)Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzln;->zza()Lcom/google/android/gms/internal/play_billing/zzll;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzll;->zze(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    if-lez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 6
    :goto_1b
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzll;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzll;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzjn;->zzd(Lcom/google/android/gms/internal/play_billing/zzll;)Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjp;

    .line 10
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbq(Lcom/google/android/gms/internal/play_billing/zzjp;)V

    .line 11
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1
.end method

.method private final zzaH()Lcom/android/billingclient/api/BillingResult;
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2

    :goto_9
    const/4 v3, 0x2

    if-ge v1, v3, :cond_19

    :try_start_c
    aget v3, v0, v1

    .line 1
    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    if-ne v4, v3, :cond_16

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_1d

    .line 2
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3
    :cond_19
    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1d

    .line 5
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :catchall_1d
    move-exception v0

    .line 4
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method private final zzaI(I)Lcom/google/android/gms/internal/play_billing/zzdk;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzH:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 4
    :cond_b
    new-instance v0, Lcom/android/billingclient/api/zzab;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzab;-><init>(Lcom/android/billingclient/api/BillingClientImpl;I)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzu;->zza(Lcom/google/android/gms/internal/play_billing/zzr;)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object p1

    return-object p1

    .line 1
    :cond_15
    :goto_15
    const-string p1, "BillingClient"

    const-string v0, "Already connected or not opted into auto reconnection."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzdf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object p1

    return-object p1
.end method

.method private final synthetic zzaJ(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_17

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p2, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 4
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_51

    .line 5
    :cond_17
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string p2, "BillingClient"

    const-string v1, "Please provide a valid purchase token."

    .line 6
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzz:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 7
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzg:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p2, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 8
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_51

    :cond_33
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    if-nez v1, :cond_42

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzA:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 9
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zza:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p2, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 10
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_51

    :cond_42
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_45
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_45} :catch_96
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_8d

    :try_start_45
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 11
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_8a

    if-nez v2, :cond_52

    .line 12
    :try_start_4a
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaZ(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_51
    return-object v0

    :cond_52
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 16
    sget v6, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    const-string v6, "9.1.0"

    new-instance v7, Landroid/os/Bundle;

    .line 17
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-static {v7, v6, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    const/16 v3, 0x9

    .line 19
    invoke-interface {v2, v3, v1, p2, v7}, Lcom/google/android/gms/internal/play_billing/zzar;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_76
    .catch Landroid/os/DeadObjectException; {:try_start_4a .. :try_end_76} :catch_96
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_76} :catch_8d

    const-string v1, "BillingClient"

    .line 22
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    const-string v2, "BillingClient"

    .line 23
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-static {v1, p2}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-object v0

    :catchall_8a
    move-exception p2

    .line 11
    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw p2
    :try_end_8d
    .catch Landroid/os/DeadObjectException; {:try_start_8c .. :try_end_8d} :catch_96
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception p2

    .line 20
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzB:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaZ(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-object v0

    :catch_96
    move-exception p2

    .line 21
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzB:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaZ(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private final synthetic zzaK(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/GetBillingChoiceInfoParams;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_f1

    :cond_14
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_23

    .line 4
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzK:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbP:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_f1

    :cond_23
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_26
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_26} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_e0

    :try_start_26
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 5
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_dd

    if-nez v3, :cond_34

    .line 25
    :try_start_2b
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_f1

    :cond_34
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 6
    sget-object v5, Lcom/android/billingclient/api/zzdk;->zzd:Lcom/android/billingclient/api/zzdk;

    .line 7
    invoke-virtual {v5}, Lcom/android/billingclient/api/zzdk;->zza()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-static {v1, v2, v4, v5}, Lcom/android/billingclient/api/zzdl;->zzb(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzes;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zza()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v4

    const-string v5, "PLAY_BILLING_LIBRARY_VERSION"

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 11
    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v1, "CALLING_PACKAGE"

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 13
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v1, "BILLING_PROGRAM"

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->getBillingProgram()I

    move-result v6

    .line 15
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 17
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    invoke-virtual {p2}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->getUserLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_aa

    const-string v1, "LANGUAGE"

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->getUserLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 19
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    :cond_aa
    invoke-virtual {p2}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->getPlayBillingChoiceImageLayout()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c6

    const-string v1, "PLAY_BILLING_CHOICE_IMAGE_LAYOUT"

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->getPlayBillingChoiceImageLayout()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 21
    invoke-virtual {v4, v1, p2}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 22
    :cond_c6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 23
    invoke-static {v2, p2}, Lcom/android/billingclient/api/zzdl;->zza(Lcom/google/android/gms/internal/play_billing/zzes;Lcom/google/android/gms/internal/play_billing/zzim;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v1, Lcom/android/billingclient/api/zzdv;

    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    invoke-direct {v1, p1, v2, v4}, Lcom/android/billingclient/api/zzdv;-><init>(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/zzdd;I)V

    .line 24
    invoke-interface {v3, p2, v1}, Lcom/google/android/gms/internal/play_billing/zzar;->zzm(Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzac;)V
    :try_end_dc
    .catch Landroid/os/DeadObjectException; {:try_start_2b .. :try_end_dc} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_dc} :catch_e0

    goto :goto_f1

    :catchall_dd
    move-exception p2

    .line 5
    :try_start_de
    monitor-exit v1
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw p2
    :try_end_e0
    .catch Landroid/os/DeadObjectException; {:try_start_df .. :try_end_e0} :catch_e9
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e0} :catch_e0

    :catch_e0
    move-exception p2

    .line 26
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_f1

    :catch_e9
    move-exception p2

    .line 27
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_f1
    return-object v0
.end method

.method private final synthetic zzaL(Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    const/16 v2, 0xd

    if-nez v1, :cond_20

    const-string v1, "BillingClient"

    const-string v3, "Service disconnected."

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 5
    invoke-interface {p1, v3, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    goto/16 :goto_fa

    :cond_20
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzv:Z

    if-nez v1, :cond_37

    const-string v1, "BillingClient"

    const-string v3, "Current client doesn\'t support get billing config."

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzF:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 7
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzz:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 8
    invoke-interface {p1, v3, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    goto/16 :goto_fa

    :cond_37
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_3a} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_e9

    :try_start_3a
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 9
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_e6

    if-nez v2, :cond_48

    .line 10
    :try_start_3f
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbj(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_fa

    :cond_48
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzj()Z

    move-result v1

    if-eqz v1, :cond_b2

    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Z

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 11
    sget-object v4, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    .line 12
    invoke-virtual {v4}, Lcom/android/billingclient/api/zzdk;->zza()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    .line 13
    invoke-static {v1, v5, v3, v4}, Lcom/android/billingclient/api/zzdl;->zzb(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzes;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zza()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v4

    const-string v5, "PLAY_BILLING_LIBRARY_VERSION"

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 16
    invoke-virtual {v4, v5, v1}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v1, "CALLING_PACKAGE"

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 18
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 20
    invoke-static {v3, v1}, Lcom/android/billingclient/api/zzdl;->zza(Lcom/google/android/gms/internal/play_billing/zzes;Lcom/google/android/gms/internal/play_billing/zzim;)Landroid/os/Bundle;

    move-result-object v1

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    const-string v3, "accountName"

    .line 22
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    new-instance v3, Lcom/android/billingclient/api/zzdx;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 23
    invoke-direct {v3, p1, v4, v5}, Lcom/android/billingclient/api/zzdx;-><init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzdd;I)V

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/play_billing/zzar;->zzm(Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzac;)V

    goto :goto_fa

    :cond_b2
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 26
    sget v6, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    const-string v6, "9.1.0"

    new-instance v7, Landroid/os/Bundle;

    .line 27
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-static {v7, v6, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d7

    const-string v3, "accountName"

    .line 30
    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    new-instance v3, Lcom/android/billingclient/api/zzcd;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 26
    invoke-direct {v3, p1, v4, v5, v0}, Lcom/android/billingclient/api/zzcd;-><init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V

    const/16 v4, 0x12

    .line 31
    invoke-interface {v2, v4, v1, v7, v3}, Lcom/google/android/gms/internal/play_billing/zzar;->zzo(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzag;)V
    :try_end_e5
    .catch Landroid/os/DeadObjectException; {:try_start_3f .. :try_end_e5} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_e5} :catch_e9

    goto :goto_fa

    :catchall_e6
    move-exception v2

    .line 9
    :try_start_e7
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    :try_start_e8
    throw v2
    :try_end_e9
    .catch Landroid/os/DeadObjectException; {:try_start_e8 .. :try_end_e9} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_e9} :catch_e9

    :catch_e9
    move-exception v1

    .line 32
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaj:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbj(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_fa

    :catch_f2
    move-exception v1

    .line 33
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaj:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbj(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_fa
    return-object v0
.end method

.method private final synthetic zzaM(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_5} :catch_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_29

    :try_start_5
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_26

    if-nez v3, :cond_10

    :try_start_a
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbn(ILcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_37

    :cond_10
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/billingclient/api/zzcj;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, p3, v1}, Lcom/android/billingclient/api/zzcj;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V

    const/16 p2, 0xc

    .line 4
    invoke-interface {v3, p2, v2, p1, v4}, Lcom/google/android/gms/internal/play_billing/zzar;->zzt(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzat;)V
    :try_end_25
    .catch Landroid/os/DeadObjectException; {:try_start_a .. :try_end_25} :catch_31
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_29

    goto :goto_37

    :catchall_26
    move-exception p1

    .line 1
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p1
    :try_end_29
    .catch Landroid/os/DeadObjectException; {:try_start_28 .. :try_end_29} :catch_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception p1

    const/4 p2, 0x6

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 5
    invoke-direct {p0, p2, p3, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbn(ILcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_37

    :catch_31
    move-exception p1

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    invoke-direct {p0, v0, p2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbn(ILcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_37
    return-object v1
.end method

.method private final zzaN(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;
    .registers 3

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zzaO()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "VERSION_NAME"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    return-object v0
.end method

.method private final synthetic zzaP(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_13
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    if-nez v1, :cond_26

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support alternative billing only."

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzD:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzan:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_26
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_29
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_29} :catch_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_5c

    :try_start_29
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_59

    if-nez v2, :cond_36

    .line 7
    :try_start_2e
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_36
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 10
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/android/billingclient/api/zzca;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/android/billingclient/api/zzca;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V

    const/16 v5, 0x15

    .line 11
    invoke-interface {v2, v5, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzar;->zzk(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzx;)V
    :try_end_58
    .catch Landroid/os/DeadObjectException; {:try_start_2e .. :try_end_58} :catch_65
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_58} :catch_5c

    goto :goto_6d

    :catchall_59
    move-exception v2

    .line 6
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v2
    :try_end_5c
    .catch Landroid/os/DeadObjectException; {:try_start_5b .. :try_end_5c} :catch_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v1

    .line 12
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzar:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :catch_65
    move-exception v1

    .line 13
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzar:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_6d
    return-object v0
.end method

.method private final synthetic zzaQ(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;)Ljava/lang/Void;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v2

    .line 2
    invoke-direct {p0, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_9} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_130

    if-nez v0, :cond_1e

    .line 3
    :try_start_b
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    :try_end_12
    .catch Landroid/os/DeadObjectException; {:try_start_b .. :try_end_12} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_12} :catch_14

    goto/16 :goto_145

    :catch_14
    move-exception v0

    move-object p2, v0

    move-object v4, p1

    goto/16 :goto_133

    :catch_19
    move-exception v0

    move-object p2, v0

    move-object v4, p1

    goto/16 :goto_13e

    :cond_1e
    :try_start_1e
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Z
    :try_end_20
    .catch Landroid/os/DeadObjectException; {:try_start_1e .. :try_end_20} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_20} :catch_130

    if-nez v0, :cond_32

    :try_start_22
    const-string p2, "BillingClient"

    const-string v0, "Current client doesn\'t support the provided billing program."

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzG:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbp:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    :try_end_30
    .catch Landroid/os/DeadObjectException; {:try_start_22 .. :try_end_30} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_30} :catch_14

    goto/16 :goto_145

    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catch Landroid/os/DeadObjectException; {:try_start_32 .. :try_end_35} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_130

    :try_start_35
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_125

    if-nez v0, :cond_43

    .line 40
    :try_start_3a
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    :try_end_41
    .catch Landroid/os/DeadObjectException; {:try_start_3a .. :try_end_41} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_41} :catch_14

    goto/16 :goto_145

    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 7
    sget-object v4, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    .line 8
    invoke-virtual {v4}, Lcom/android/billingclient/api/zzdk;->zza()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    .line 9
    invoke-static {v2, v5, v3, v4}, Lcom/android/billingclient/api/zzdl;->zzb(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzes;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zza()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v4

    const-string v5, "PLAY_BILLING_LIBRARY_VERSION"

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 12
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v2, "CALLING_PACKAGE"

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 14
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v2, "BILLING_PROGRAM"

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 16
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->getBillingProgram()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 18
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string v2, "RESPONSE_FORMAT"

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    const-string v6, "RESPONSE_FORMAT_PROTO"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 20
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 21
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->getBillingProgram()I

    move-result v2
    :try_end_b3
    .catch Landroid/os/DeadObjectException; {:try_start_43 .. :try_end_b3} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_b3} :catch_130

    const/4 v5, 0x3

    if-ne v2, v5, :cond_e0

    :try_start_b6
    const-string v2, "APP_INSTALL_TIME_MILLIS"

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 23
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 24
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 25
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 28
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;
    :try_end_df
    .catch Landroid/os/DeadObjectException; {:try_start_b6 .. :try_end_df} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_df} :catch_14

    goto :goto_101

    .line 29
    :cond_e0
    :try_start_e0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->getBillingProgram()I

    move-result v2
    :try_end_e4
    .catch Landroid/os/DeadObjectException; {:try_start_e0 .. :try_end_e4} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_e0 .. :try_end_e4} :catch_130

    const/4 v5, 0x5

    if-ne v2, v5, :cond_101

    :try_start_e7
    const-string v2, "DEVELOPER_BILLING_TYPE"

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 31
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->getDeveloperBillingType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 33
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;
    :try_end_101
    .catch Landroid/os/DeadObjectException; {:try_start_e7 .. :try_end_101} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_e7 .. :try_end_101} :catch_14

    .line 34
    :cond_101
    :goto_101
    :try_start_101
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 35
    invoke-static {v3, v2}, Lcom/android/billingclient/api/zzdl;->zza(Lcom/google/android/gms/internal/play_billing/zzes;Lcom/google/android/gms/internal/play_billing/zzim;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;

    .line 36
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;->getBillingProgram()I

    move-result v5

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v7, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 37
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v8

    .line 38
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v9
    :try_end_11d
    .catch Landroid/os/DeadObjectException; {:try_start_101 .. :try_end_11d} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_101 .. :try_end_11d} :catch_130

    move-object v4, p1

    :try_start_11e
    invoke-direct/range {v3 .. v9}, Lcom/android/billingclient/api/CreateBillingProgramReportingDetailsDelegateToBackendCallback;-><init>(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;ILcom/android/billingclient/api/zzdd;ILandroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V

    .line 39
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzar;->zzm(Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzac;)V
    :try_end_124
    .catch Landroid/os/DeadObjectException; {:try_start_11e .. :try_end_124} :catch_12c
    .catch Ljava/lang/RuntimeException; {:try_start_11e .. :try_end_124} :catch_12a

    goto :goto_145

    :catchall_125
    move-exception v0

    move-object v4, p1

    :goto_127
    move-object p1, v0

    .line 6
    :try_start_128
    monitor-exit v2
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_12e

    :try_start_129
    throw p1
    :try_end_12a
    .catch Landroid/os/DeadObjectException; {:try_start_129 .. :try_end_12a} :catch_12c
    .catch Ljava/lang/RuntimeException; {:try_start_129 .. :try_end_12a} :catch_12a

    :catch_12a
    move-exception v0

    goto :goto_132

    :catch_12c
    move-exception v0

    goto :goto_13d

    :catchall_12e
    move-exception v0

    goto :goto_127

    :catch_130
    move-exception v0

    move-object v4, p1

    :goto_132
    move-object p2, v0

    .line 41
    :goto_133
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, v4, p1, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_145

    :catch_13b
    move-exception v0

    move-object v4, p1

    :goto_13d
    move-object p2, v0

    .line 42
    :goto_13e
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, v4, p1, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_145
    return-object v1
.end method

.method private final synthetic zzaR(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)Ljava/lang/Void;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_8c

    :cond_14
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzz:Z

    if-nez v1, :cond_27

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support external offer."

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzu:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaE:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_8c

    :cond_27
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2a
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_2a} :catch_84
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_7b

    :try_start_2a
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_78

    if-nez v2, :cond_37

    .line 7
    :try_start_2f
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_8c

    :cond_37
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 12
    sget v8, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    const-string v8, "9.1.0"

    new-instance v9, Landroid/os/Bundle;

    .line 13
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-static {v9, v8, v5, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    const-string v5, "appInstallTimeMillis"

    .line 15
    invoke-virtual {v9, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/android/billingclient/api/zzcb;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 12
    invoke-direct {v3, p1, v4, v5, v0}, Lcom/android/billingclient/api/zzcb;-><init>(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V

    const/16 v4, 0x16

    .line 16
    invoke-interface {v2, v4, v1, v9, v3}, Lcom/google/android/gms/internal/play_billing/zzar;->zzl(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzz;)V
    :try_end_77
    .catch Landroid/os/DeadObjectException; {:try_start_2f .. :try_end_77} :catch_84
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_77} :catch_7b

    goto :goto_8c

    :catchall_78
    move-exception v2

    .line 6
    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v2
    :try_end_7b
    .catch Landroid/os/DeadObjectException; {:try_start_7a .. :try_end_7b} :catch_84
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7b} :catch_7b

    :catch_7b
    move-exception v1

    .line 17
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaF:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_8c

    :catch_84
    move-exception v1

    .line 18
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaF:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_8c
    return-object v0
.end method

.method private final synthetic zzaS(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;I)Ljava/lang/Void;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_4} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_d8

    .line 2
    :try_start_4
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v0

    if-nez v0, :cond_24

    .line 3
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_e} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_d8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    :try_start_12
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    :try_end_15
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_18

    move-object v7, v1

    goto/16 :goto_f3

    :catch_18
    move-exception v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    goto/16 :goto_dc

    :catch_1e
    move-exception v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    goto/16 :goto_e9

    :cond_24
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    :try_start_27
    iget-boolean p1, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Z

    if-nez p1, :cond_3c

    const-string p1, "BillingClient"

    const-string p2, "Current client doesn\'t support the provided billing program."

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v10, Lcom/android/billingclient/api/zzdh;->zzG:Lcom/android/billingclient/api/BillingResult;

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbp:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_f3

    :cond_3c
    iget-object p1, v7, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3f
    .catch Landroid/os/DeadObjectException; {:try_start_27 .. :try_end_3f} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3f} :catch_d1

    :try_start_3f
    iget-object p2, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit p1
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_cd

    if-nez p2, :cond_4e

    .line 22
    :try_start_44
    sget-object v10, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_f3

    :cond_4e
    iget-object p1, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v0, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 7
    sget-object v1, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    .line 8
    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zza()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    .line 9
    invoke-static {p1, v2, v0, v1}, Lcom/android/billingclient/api/zzdl;->zzb(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzes;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zza()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v1

    const-string v2, "PLAY_BILLING_LIBRARY_VERSION"

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 12
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string p1, "CALLING_PACKAGE"

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v2

    iget-object v3, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 14
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    const-string p1, "BILLING_PROGRAM"

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 16
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzim;

    .line 18
    invoke-static {v0, p1}, Lcom/android/billingclient/api/zzdl;->zza(Lcom/google/android/gms/internal/play_billing/zzes;Lcom/google/android/gms/internal/play_billing/zzim;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;

    iget-object v3, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v4, v7, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 19
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v5

    .line 20
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v6
    :try_end_ba
    .catch Landroid/os/DeadObjectException; {:try_start_44 .. :try_end_ba} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_ba} :catch_d1

    move-object v1, v8

    move v2, v9

    :try_start_bc
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/IsBillingProgramAvailableDelegateToBackendCallback;-><init>(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/zzdd;ILandroid/os/Handler;Ljava/util/concurrent/ExecutorService;)V
    :try_end_bf
    .catch Landroid/os/DeadObjectException; {:try_start_bc .. :try_end_bf} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c5

    move-object v8, v1

    move v9, v2

    .line 21
    :try_start_c1
    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzar;->zzm(Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzac;)V
    :try_end_c4
    .catch Landroid/os/DeadObjectException; {:try_start_c1 .. :try_end_c4} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_d1

    goto :goto_f3

    :catch_c5
    move-exception v0

    move-object v8, v1

    move v9, v2

    goto :goto_dc

    :catch_c9
    move-exception v0

    move-object v8, v1

    move v9, v2

    goto :goto_e9

    :catchall_cd
    move-exception v0

    move-object p2, v0

    .line 6
    :try_start_cf
    monitor-exit p1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_cd

    :try_start_d0
    throw p2
    :try_end_d1
    .catch Landroid/os/DeadObjectException; {:try_start_d0 .. :try_end_d1} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d1} :catch_d1

    :catch_d1
    move-exception v0

    goto :goto_dc

    :catch_d3
    move-exception v0

    goto :goto_e9

    :catch_d5
    move-exception v0

    move-object v7, p0

    goto :goto_e7

    :catch_d8
    move-exception v0

    move-object v7, p0

    move-object v8, p1

    move v9, p2

    :goto_dc
    move-object p1, v0

    move-object v12, p1

    .line 23
    sget-object v10, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct/range {v7 .. v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_f3

    :catch_e6
    move-exception v0

    :goto_e7
    move-object v8, p1

    move v9, p2

    :goto_e9
    move-object p1, v0

    move-object v12, p1

    .line 24
    sget-object v10, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v11, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaj:Lcom/google/android/gms/internal/play_billing/zzjs;

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_f3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final synthetic zzaT(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_13
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Z

    if-nez v1, :cond_26

    const-string v1, "BillingClient"

    const-string v2, "Current client doesn\'t support external offer."

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzu:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaE:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_26
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_29
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_29} :catch_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_5c

    :try_start_29
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_59

    if-nez v2, :cond_36

    .line 7
    :try_start_2e
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :cond_36
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 10
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/android/billingclient/api/zzci;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/android/billingclient/api/zzci;-><init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V

    const/16 v5, 0x18

    .line 11
    invoke-interface {v2, v5, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzar;->zzs(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzao;)V
    :try_end_58
    .catch Landroid/os/DeadObjectException; {:try_start_2e .. :try_end_58} :catch_65
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_58} :catch_5c

    goto :goto_6d

    :catchall_59
    move-exception v2

    .line 6
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v2
    :try_end_5c
    .catch Landroid/os/DeadObjectException; {:try_start_5b .. :try_end_5c} :catch_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v1

    .line 12
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaC:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_6d

    :catch_65
    move-exception v1

    .line 13
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaC:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_6d
    return-object v0
.end method

.method private final synthetic zzaU(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_4} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_38

    :try_start_4
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_35

    if-nez v2, :cond_11

    .line 2
    :try_start_9
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbl(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_49

    :cond_11
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/android/billingclient/api/zzcc;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, p3, v0}, Lcom/android/billingclient/api/zzcc;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V

    const/16 p2, 0x15

    .line 6
    invoke-interface {v2, p2, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzar;->zzn(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzae;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_34} :catch_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_38

    goto :goto_49

    :catchall_35
    move-exception p2

    .line 1
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw p2
    :try_end_38
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_38} :catch_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception p2

    .line 7
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzav:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbl(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_49

    :catch_41
    move-exception p2

    .line 8
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzav:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbl(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_49
    return-object v0
.end method

.method private final synthetic zzaV(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Landroid/app/Activity;)Ljava/lang/Void;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_c7

    :cond_14
    iget-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Z

    if-nez v1, :cond_28

    const-string p2, "BillingClient"

    const-string p3, "Current client doesn\'t support showBillingProgramInformationDialog."

    .line 4
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzJ:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbP:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_c7

    :cond_28
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2b
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_2b} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2b} :catch_b6

    :try_start_2b
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 6
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_b3

    if-nez v2, :cond_39

    .line 7
    :try_start_30
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto/16 :goto_c7

    :cond_39
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 10
    sget v6, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    const-string v6, "9.1.0"

    new-instance v7, Landroid/os/Bundle;

    .line 11
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-static {v7, v6, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzim;->zza()Lcom/google/android/gms/internal/play_billing/zzij;

    move-result-object v3

    const-string v4, "developerBillingProgram"

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    .line 15
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->getBillingProgram()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    .line 18
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->getExternalTransactionToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8d

    const-string v4, "externalTransactionToken"

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjf;->zza()Lcom/google/android/gms/internal/play_billing/zzjd;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->getExternalTransactionToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzjd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjf;

    .line 20
    invoke-virtual {v3, v4, p2}, Lcom/google/android/gms/internal/play_billing/zzij;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjf;)Lcom/google/android/gms/internal/play_billing/zzij;

    :cond_8d
    const-string p2, "REQUEST_PARAMS"

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzim;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzQ()[B

    move-result-object v3

    invoke-virtual {v7, p2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance p2, Lcom/android/billingclient/api/zzck;

    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 10
    invoke-direct {v3, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    new-instance p3, Lcom/android/billingclient/api/zzbn;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    invoke-direct {p3, p0, v4, p1}, Lcom/android/billingclient/api/zzbn;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V

    .line 23
    invoke-direct {p2, v3, p3, v0}, Lcom/android/billingclient/api/zzck;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V

    const/16 p3, 0x1c

    .line 24
    invoke-interface {v2, p3, v1, v7, p2}, Lcom/google/android/gms/internal/play_billing/zzar;->zzn(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzae;)V
    :try_end_b2
    .catch Landroid/os/DeadObjectException; {:try_start_30 .. :try_end_b2} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_b2} :catch_b6

    goto :goto_c7

    :catchall_b3
    move-exception p2

    .line 6
    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw p2
    :try_end_b6
    .catch Landroid/os/DeadObjectException; {:try_start_b5 .. :try_end_b6} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_b5 .. :try_end_b6} :catch_b6

    :catch_b6
    move-exception p2

    .line 25
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_c7

    :catch_bf
    move-exception p2

    .line 26
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_c7
    return-object v0
.end method

.method private final synthetic zzaW(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_4} :catch_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_38

    :try_start_4
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_35

    if-nez v2, :cond_11

    .line 2
    :try_start_9
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbi(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_49

    :cond_11
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 4
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzh(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/android/billingclient/api/zzce;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, p3, v0}, Lcom/android/billingclient/api/zzce;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzcm;)V

    const/16 p2, 0x16

    .line 6
    invoke-interface {v2, p2, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzar;->zzp(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzai;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_34} :catch_41
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_38

    goto :goto_49

    :catchall_35
    move-exception p2

    .line 1
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw p2
    :try_end_38
    .catch Landroid/os/DeadObjectException; {:try_start_37 .. :try_end_38} :catch_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception p2

    .line 7
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbi(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    goto :goto_49

    :catch_41
    move-exception p2

    .line 8
    sget-object p3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbi(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :goto_49
    return-object v0
.end method

.method private final zzaX(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_13

    .line 3
    new-instance p2, Lcom/android/billingclient/api/zzbm;

    invoke-direct {p2, p1, p4}, Lcom/android/billingclient/api/zzbm;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    const-wide/16 p3, 0x6f54

    .line 4
    invoke-virtual {p5, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_13
    move-exception p1

    .line 1
    const-string p2, "BillingClient"

    const-string p3, "Async task throws exception!"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    throw p1
.end method

.method private final zzaY(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .registers 12

    const-string v0, "Consuming purchase with token: "

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    :try_start_6
    const-string p1, "BillingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_1a} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1a} :catch_9f

    :try_start_1a
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 3
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_98

    if-nez v0, :cond_34

    .line 4
    :try_start_1f
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v6, "Service has been reset to null."
    :try_end_25
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_25} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_2c

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    :try_start_28
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbd(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_2c
    move-exception v0

    move-object v1, p0

    goto/16 :goto_a0

    :catch_30
    move-exception v0

    move-object v1, p0

    goto/16 :goto_af

    :cond_34
    move-object v1, p0

    move-object v2, p2

    iget-boolean p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    if-eqz p1, :cond_69

    iget-object p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "9.1.0"

    new-instance v8, Landroid/os/Bundle;

    .line 7
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_56

    .line 8
    invoke-static {v8, v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    :cond_56
    const/16 p2, 0x9

    .line 9
    invoke-interface {v0, p2, p1, v3, v8}, Lcom/google/android/gms/internal/play_billing/zzar;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "RESPONSE_CODE"

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "BillingClient"

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    .line 16
    :cond_69
    iget-object p1, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    .line 13
    invoke-interface {v0, p2, p1, v3}, Lcom/google/android/gms/internal/play_billing/zzar;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string p1, ""

    .line 14
    :goto_76
    invoke-static {p2, p1}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    if-nez p2, :cond_87

    const-string p1, "BillingClient"

    const-string p2, "Successfully consumed purchase."

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-interface {v2, v4, v3}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void

    :cond_87
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string p1, "Error consuming purchase with token. Response code: "

    .line 15
    invoke-static {p2, p1}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 16
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbd(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_93
    .catch Landroid/os/DeadObjectException; {:try_start_28 .. :try_end_93} :catch_96
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_93} :catch_94

    return-void

    :catch_94
    move-exception v0

    goto :goto_a1

    :catch_96
    move-exception v0

    goto :goto_b0

    :catchall_98
    move-exception v0

    move-object v2, p2

    :goto_9a
    move-object p2, v0

    .line 3
    :try_start_9b
    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9d

    :try_start_9c
    throw p2
    :try_end_9d
    .catch Landroid/os/DeadObjectException; {:try_start_9c .. :try_end_9d} :catch_96
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9d} :catch_94

    :catchall_9d
    move-exception v0

    goto :goto_9a

    :catch_9f
    move-exception v0

    :goto_a0
    move-object v2, p2

    :goto_a1
    move-object p1, v0

    move-object v7, p1

    .line 19
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzC:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v6, "Error consuming purchase!"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbd(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_ae
    move-exception v0

    :goto_af
    move-object v2, p2

    :goto_b0
    move-object p1, v0

    move-object v7, p1

    .line 20
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzC:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v6, "Error consuming purchase!"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbd(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private final zzaZ(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 7

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "Error in acknowledge purchase!"

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    .line 2
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static synthetic zzaa(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 4
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    return-void
.end method

.method public static synthetic zzab(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbl(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzac(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzz;->zze()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/zzz;->zze()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, p1, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_13
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    const-string p0, "BillingClient"

    const-string p1, "No valid listener is set in BroadcastManager"

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzad(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzae(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbi(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzaf(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzag(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzx:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zzah(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    return-void
.end method

.method static bridge synthetic zzai(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    return-void
.end method

.method static bridge synthetic zzaj(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:Z

    return-void
.end method

.method static bridge synthetic zzak(Lcom/android/billingclient/api/BillingClientImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzal(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzcf;)V
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    return-void
.end method

.method static bridge synthetic zzam(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 5

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbi(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zzan(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 5

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zzao(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 5

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbl(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zzap(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 5

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic zzaq(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbo(Lcom/google/android/gms/internal/play_billing/zzjl;)V

    return-void
.end method

.method static bridge synthetic zzar(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbq(Lcom/google/android/gms/internal/play_billing/zzjp;)V

    return-void
.end method

.method static bridge synthetic zzas(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbr(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    return-void
.end method

.method static bridge synthetic zzat(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .registers 5

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    const/16 v0, 0x1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzF:Z

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Z

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzD:Z

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzC:Z

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Z

    const/16 v0, 0x17

    if-lt p1, v0, :cond_37

    move v0, v1

    goto :goto_38

    :cond_37
    move v0, v2

    :goto_38
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzA:Z

    const/16 v0, 0x16

    if-lt p1, v0, :cond_40

    move v0, v1

    goto :goto_41

    :cond_40
    move v0, v2

    :goto_41
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzz:Z

    const/16 v0, 0x15

    if-lt p1, v0, :cond_49

    move v0, v1

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    const/16 v0, 0x14

    if-lt p1, v0, :cond_52

    move v0, v1

    goto :goto_53

    :cond_52
    move v0, v2

    :goto_53
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzx:Z

    const/16 v0, 0x13

    if-lt p1, v0, :cond_5b

    move v0, v1

    goto :goto_5c

    :cond_5b
    move v0, v2

    :goto_5c
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    const/16 v0, 0x12

    if-lt p1, v0, :cond_64

    move v0, v1

    goto :goto_65

    :cond_64
    move v0, v2

    :goto_65
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzv:Z

    const/16 v0, 0x11

    if-lt p1, v0, :cond_6d

    move v0, v1

    goto :goto_6e

    :cond_6d
    move v0, v2

    :goto_6e
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    const/16 v0, 0x10

    if-lt p1, v0, :cond_76

    move v0, v1

    goto :goto_77

    :cond_76
    move v0, v2

    :goto_77
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Z

    const/16 v0, 0xf

    if-lt p1, v0, :cond_7f

    move v0, v1

    goto :goto_80

    :cond_7f
    move v0, v2

    :goto_80
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    const/16 v0, 0xe

    if-lt p1, v0, :cond_88

    move v0, v1

    goto :goto_89

    :cond_88
    move v0, v2

    :goto_89
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    const/16 v0, 0xc

    if-lt p1, v0, :cond_91

    move v0, v1

    goto :goto_92

    :cond_91
    move v0, v2

    :goto_92
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    const/16 v0, 0x9

    if-lt p1, v0, :cond_9a

    move v0, v1

    goto :goto_9b

    :cond_9a
    move v0, v2

    :goto_9b
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    const/16 v0, 0x8

    if-lt p1, v0, :cond_a3

    move v0, v1

    goto :goto_a4

    :cond_a3
    move v0, v2

    :goto_a4
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    const/4 v0, 0x6

    if-lt p1, v0, :cond_aa

    goto :goto_ab

    :cond_aa
    move v1, v2

    :goto_ab
    iput-boolean v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    return-void
.end method

.method static bridge synthetic zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    return-void
.end method

.method static bridge synthetic zzav(Lcom/android/billingclient/api/BillingClientImpl;I)V
    .registers 4

    if-nez p1, :cond_24

    .line 1
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    monitor-exit p1

    return-void

    :cond_c
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3
    :goto_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_21

    if-eqz v0, :cond_20

    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/zzz;->zzi(Z)V

    :cond_20
    return-void

    :catchall_21
    move-exception p0

    .line 3
    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    return-void
.end method

.method static bridge synthetic zzaw(Lcom/android/billingclient/api/BillingClientImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbv()V

    return-void
.end method

.method static bridge synthetic zzay(Lcom/android/billingclient/api/BillingClientImpl;J)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic zzaz(Lcom/android/billingclient/api/BillingClientImpl;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception p0

    .line 2
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/BillingClientImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    return p0
.end method

.method private static final zzbA(Lcom/google/android/gms/internal/play_billing/zzke;Landroid/content/Context;)V
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_30

    .line 2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzv(I)Lcom/google/android/gms/internal/play_billing/zzke;

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_30} :catch_31

    :cond_30
    return-void

    :catch_31
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Runtime error while populating device info."

    .line 10
    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;
    .registers 7

    const/16 p1, 0x9

    .line 1
    invoke-static {p5}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const-string p1, "BillingClient"

    .line 2
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/android/billingclient/api/zzek;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/android/billingclient/api/zzek;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p1
.end method

.method private final zzbC(Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzek;
    .registers 20

    move-object/from16 v1, p0

    .line 1
    const-string v0, "Querying owned items, item type: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BillingClient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    iget-boolean v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 3
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v4

    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 4
    invoke-virtual {v5}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v5

    iget-object v6, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 5
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v13, Landroid/os/Bundle;

    .line 6
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v8, "9.1.0"

    iget-object v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    .line 7
    invoke-static {v13, v8, v9, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    const/4 v6, 0x1

    if-eqz v2, :cond_42

    if-eqz v4, :cond_42

    const-string v2, "enablePendingPurchases"

    .line 8
    invoke-virtual {v13, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_42
    if-eqz v3, :cond_4b

    if-eqz v5, :cond_4b

    const-string v2, "enablePendingPurchaseForSubscriptions"

    .line 9
    invoke-virtual {v13, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4b
    const/4 v2, 0x0

    if-eqz p2, :cond_53

    const-string v3, "includeSuspendedSubscriptions"

    .line 10
    invoke-virtual {v13, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_53
    move-object v12, v2

    :goto_54
    :try_start_54
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_57
    .catch Landroid/os/DeadObjectException; {:try_start_54 .. :try_end_57} :catch_231
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_222

    :try_start_57
    iget-object v8, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 11
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_21f

    if-nez v8, :cond_6a

    .line 56
    :try_start_5c
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v5, "Service has been reset to null"

    const/4 v6, 0x0

    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    return-object v0

    :cond_6a
    if-eqz p2, :cond_7e

    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzC:Z

    if-nez v2, :cond_7e

    .line 57
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzx:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbH:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v5, "Include suspended subscriptions is not supported"

    const/4 v6, 0x0

    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    return-object v0

    :cond_7e
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    const/16 v3, 0x9

    if-nez v2, :cond_92

    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    move-object/from16 v11, p1

    .line 15
    invoke-interface {v8, v4, v2, v11, v12}, Lcom/google/android/gms/internal/play_billing/zzar;->zzh(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_b5

    :cond_92
    move-object/from16 v11, p1

    .line 36
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzC:Z

    if-eqz v2, :cond_9c

    const/16 v2, 0x1a

    :goto_9a
    move v9, v2

    goto :goto_ab

    .line 13
    :cond_9c
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Z

    if-eqz v2, :cond_a3

    const/16 v2, 0x18

    goto :goto_9a

    :cond_a3
    iget-boolean v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    if-eqz v2, :cond_aa

    const/16 v2, 0x13

    goto :goto_9a

    :cond_aa
    move v9, v3

    .line 36
    :goto_ab
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/zzar;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_b5
    .catch Landroid/os/DeadObjectException; {:try_start_5c .. :try_end_b5} :catch_231
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_b5} :catch_222

    .line 16
    :goto_b5
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    const-string v5, "getPurchase()"

    const-string v7, "BillingClient"

    if-nez v2, :cond_cf

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%s got null owned items list"

    .line 17
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzab:Lcom/google/android/gms/internal/play_billing/zzjs;

    :goto_cc
    move-object v9, v4

    goto/16 :goto_174

    .line 18
    :cond_cf
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v8

    .line 19
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v10

    .line 20
    invoke-virtual {v10, v8}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 21
    invoke-virtual {v10, v9}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 22
    invoke-virtual {v10}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v9

    if-eqz v8, :cond_fc

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "%s failed. Response code: %s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto/16 :goto_174

    :cond_fc
    const-string v8, "INAPP_PURCHASE_ITEM_LIST"

    .line 25
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_163

    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 26
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_163

    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    .line 27
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_115

    goto :goto_163

    .line 38
    :cond_115
    const-string v8, "INAPP_PURCHASE_ITEM_LIST"

    .line 28
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    .line 29
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v10, "INAPP_DATA_SIGNATURE_LIST"

    .line 30
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v8, :cond_139

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Bundle returned from %s contains null SKUs list."

    .line 31
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzad:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_cc

    :cond_139
    if-nez v9, :cond_14b

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Bundle returned from %s contains null purchases list."

    .line 33
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzae:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_cc

    :cond_14b
    if-nez v10, :cond_15e

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Bundle returned from %s contains null signatures list."

    .line 35
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaf:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto/16 :goto_cc

    :cond_15e
    sget-object v9, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_174

    .line 27
    :cond_163
    :goto_163
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Bundle returned from %s doesn\'t contain required fields."

    .line 37
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzac:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto/16 :goto_cc

    .line 17
    :goto_174
    sget-object v7, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    if-eq v9, v7, :cond_184

    move-object v4, v5

    const-string v5, "Purchase bundle invalid"

    const/4 v6, 0x0

    const/16 v2, 0x9

    move-object v3, v9

    .line 60
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    return-object v0

    :cond_184
    move-object v5, v4

    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 39
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v7, "INAPP_PURCHASE_DATA_LIST"

    .line 40
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    .line 41
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    .line 42
    :goto_199
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_1f2

    .line 43
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 44
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Sku is owned: "

    const-string v6, "BillingClient"

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 46
    invoke-static {v6, v14}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1c0
    new-instance v6, Lcom/android/billingclient/api/Purchase;

    .line 47
    invoke-direct {v6, v11, v12}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    .line 48
    invoke-virtual {v11}, Lcom/google/android/gms/internal/play_billing/zzcf;->isEmpty()Z
    :try_end_1ca
    .catch Lorg/json/JSONException; {:try_start_1c0 .. :try_end_1ca} :catch_1e3

    .line 49
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1dc

    const-string v10, "BillingClient"

    const-string v11, "BUG: empty/null token!"

    .line 50
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 51
    :cond_1dc
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto :goto_199

    :catch_1e3
    move-exception v0

    move-object v6, v0

    .line 11
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzY:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v5, "Got an exception trying to decode the purchase!"

    const/16 v2, 0x9

    .line 61
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    return-object v0

    :cond_1f2
    if-eqz v10, :cond_1f9

    .line 51
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzz:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 52
    invoke-direct {v1, v4, v3, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    :cond_1f9
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 53
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Continuation token: "

    const-string v4, "BillingClient"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21c

    new-instance v2, Lcom/android/billingclient/api/zzek;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v2, v3, v0}, Lcom/android/billingclient/api/zzek;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v2

    :cond_21c
    const/4 v6, 0x1

    goto/16 :goto_54

    :catchall_21f
    move-exception v0

    .line 11
    :try_start_220
    monitor-exit v2
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    :try_start_221
    throw v0
    :try_end_222
    .catch Landroid/os/DeadObjectException; {:try_start_221 .. :try_end_222} :catch_231
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_222} :catch_222

    :catch_222
    move-exception v0

    move-object v6, v0

    .line 58
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzZ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v5, "Got exception trying to get purchases try to reconnect"

    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    return-object v0

    :catch_231
    move-exception v0

    move-object v6, v0

    .line 59
    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzZ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v5, "Got exception trying to get purchases try to reconnect"

    const/16 v2, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbB(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    return-object v0
.end method

.method private final zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Unable to create logging payload"

    const-string v3, "BillingLogger"

    const/4 v4, 0x5

    if-eqz v0, :cond_4d

    sget v0, Lcom/android/billingclient/api/zzdc;->zza:I

    .line 2
    :try_start_e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjl;->zza()Lcom/google/android/gms/internal/play_billing/zzjj;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v6

    .line 4
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 6
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zze(Lcom/google/android/gms/internal/play_billing/zzjs;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 7
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkn;->zza()Lcom/google/android/gms/internal/play_billing/zzkk;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzkk;->zza(I)Lcom/google/android/gms/internal/play_billing/zzkk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkn;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzc(Lcom/google/android/gms/internal/play_billing/zzkn;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjl;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_43} :catch_45

    move-object v1, p1

    goto :goto_49

    :catch_45
    move-exception p1

    .line 12
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_49
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbo(Lcom/google/android/gms/internal/play_billing/zzjl;)V

    return-void

    .line 14
    :cond_4d
    sget p1, Lcom/android/billingclient/api/zzdc;->zza:I

    .line 15
    :try_start_4f
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjp;->zza()Lcom/google/android/gms/internal/play_billing/zzjn;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/play_billing/zzjn;->zze(I)Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkn;->zza()Lcom/google/android/gms/internal/play_billing/zzkk;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzkk;->zza(I)Lcom/google/android/gms/internal/play_billing/zzkk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzkn;

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjn;->zzb(Lcom/google/android/gms/internal/play_billing/zzkn;)Lcom/google/android/gms/internal/play_billing/zzjn;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjp;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6c} :catch_6e

    move-object v1, p1

    goto :goto_72

    :catch_6e
    move-exception p1

    .line 20
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_72
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbq(Lcom/google/android/gms/internal/play_billing/zzjp;)V

    return-void
.end method

.method private zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V
    .registers 6

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, p3, v1, v0}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbo(Lcom/google/android/gms/internal/play_billing/zzjl;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbF(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;J)V
    .registers 10

    .line 1
    const-string p2, "Unable to log."

    const-string v0, "BillingClient"

    :try_start_4
    sget v1, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, p3, v3, v1}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1b

    :try_start_e
    iget-object p3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    .line 3
    invoke-interface {p3, p1, v1, p4, p5}, Lcom/android/billingclient/api/zzdd;->zzc(Lcom/google/android/gms/internal/play_billing/zzjl;IJ)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception p1

    .line 4
    :try_start_17
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception p1

    .line 5
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 6

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 2
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbo(Lcom/google/android/gms/internal/play_billing/zzjl;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V
    .registers 9

    .line 1
    :try_start_0
    sget p2, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, p3, v1, p2}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbp(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbI(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V
    .registers 9

    .line 1
    :try_start_0
    sget p2, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0, p3, p4, p2}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbp(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private zzbJ(I)V
    .registers 4

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 2
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzdc;->zzc(ILcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjp;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbq(Lcom/google/android/gms/internal/play_billing/zzjp;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Unable to log."

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0xe

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;->onAlternativeBillingOnlyAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 7

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "getBillingChoiceInfo got an exception."

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x28

    .line 2
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 4
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;->onBillingChoiceInfoResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingChoiceInfo;)V

    return-void
.end method

.method private final zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 7

    const/16 v0, 0x21

    .line 1
    invoke-static {p5}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p5

    .line 2
    invoke-direct {p0, p4, v0, p3, p5}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    new-instance p4, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    invoke-direct {p4, p2}, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;-><init>(I)V

    .line 3
    invoke-interface {p1, p3, p4}, Lcom/android/billingclient/api/BillingProgramAvailabilityListener;->onBillingProgramAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;)V

    return-void
.end method

.method private final zzbd(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    .line 1
    const-string v0, "BillingClient"

    invoke-static {v0, p5, p6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p5, 0x4

    .line 2
    invoke-static {p6}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p6

    .line 3
    invoke-direct {p0, p4, p5, p3, p6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p3, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method private final zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0xf

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void
.end method

.method private final zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x23

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;->onCreateBillingProgramReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingProgramReportingDetails;)V

    return-void
.end method

.method private final zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x18

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    return-void
.end method

.method private final zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x17

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzbi(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x19

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;->onExternalOfferInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzbj(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 7

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "getBillingConfig got an exception."

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xd

    .line 2
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 4
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method

.method private final zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x25

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;->onLaunchExternalLinkResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzbl(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x10

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;->onAlternativeBillingOnlyInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    const/16 v0, 0x27

    .line 1
    invoke-static {p4}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    .line 2
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbG(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/BillingProgramInformationDialogListener;->onBillingProgramInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private final zzbn(ILcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V
    .registers 6

    .line 1
    const-string v0, "BillingClient"

    const-string v1, "showInAppMessages error."

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    .line 2
    invoke-static {p3}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    .line 3
    :try_start_d
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzju;->zza()Lcom/google/android/gms/internal/play_billing/zzjq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzjq;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjq;

    if-eqz p2, :cond_19

    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjq;->zze(Lcom/google/android/gms/internal/play_billing/zzjs;)Lcom/google/android/gms/internal/play_billing/zzjq;

    :cond_19
    if-eqz p3, :cond_1e

    .line 5
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_billing/zzjq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 6
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjl;->zza()Lcom/google/android/gms/internal/play_billing/zzjj;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjq;)Lcom/google/android/gms/internal/play_billing/zzjj;

    const/16 p2, 0x1e

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjl;
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_31

    goto :goto_3a

    :catchall_31
    move-exception p1

    .line 11
    const-string p2, "BillingLogger"

    const-string p3, "Unable to create logging payload"

    .line 10
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 11
    :goto_3a
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/zzdd;->zza(Lcom/google/android/gms/internal/play_billing/zzjl;)V

    return-void
.end method

.method private final zzbo(Lcom/google/android/gms/internal/play_billing/zzjl;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/zzdd;->zzb(Lcom/google/android/gms/internal/play_billing/zzjl;I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbp(Lcom/google/android/gms/internal/play_billing/zzjl;JZ)V
    .registers 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/billingclient/api/zzdd;->zze(Lcom/google/android/gms/internal/play_billing/zzjl;IJZ)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-void

    :catchall_b
    move-exception v0

    move-object p1, v0

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbq(Lcom/google/android/gms/internal/play_billing/zzjp;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzm:I

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/zzdd;->zzg(Lcom/google/android/gms/internal/play_billing/zzjp;I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Unable to log."

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbr(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V
    .registers 7

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, p2, v2, v0}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lcom/google/android/gms/internal/play_billing/zzjl;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzq()Lcom/google/android/gms/internal/play_billing/zzgl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzln;->zza()Lcom/google/android/gms/internal/play_billing/zzll;

    move-result-object p2

    if-lez p3, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 4
    :goto_19
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzll;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzll;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzll;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjj;->zze(Lcom/google/android/gms/internal/play_billing/zzll;)Lcom/google/android/gms/internal/play_billing/zzjj;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzi()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 8
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbo(Lcom/google/android/gms/internal/play_billing/zzjl;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    .line 9
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzbs(I)V
    .registers 8

    const-string v0, "Setting clientState from "

    .line 1
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    monitor-exit v1

    return-void

    :cond_c
    const-string v2, "BillingClient"

    iget v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbz(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbz(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    .line 4
    monitor-exit v1

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private final declared-synchronized zzbt()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzL:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzL:Ljava/util/concurrent/ExecutorService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    monitor-exit p0

    return-void

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private final zzbu(Lcom/android/billingclient/api/BillingClientStateListener;I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaG(I)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    monitor-exit v0

    goto/16 :goto_129

    .line 43
    :cond_10
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    const-string v1, "BillingClient"

    const-string v2, "Client is already in the process of connecting to billing service."

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzK:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzd:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbr(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    .line 5
    monitor-exit v0

    :goto_24
    move-object p2, v2

    goto/16 :goto_129

    :cond_27
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3c

    const-string v1, "BillingClient"

    const-string v2, "Client was already closed and can\'t be reused. Please create another instance."

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzL:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 7
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbr(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    .line 8
    monitor-exit v0

    goto :goto_24

    .line 9
    :cond_3c
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    const/4 v1, 0x0

    if-nez p2, :cond_45

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzK:Lcom/android/billingclient/api/BillingClientStateListener;

    move p2, v1

    .line 10
    :cond_45
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbv()V

    const-string v3, "BillingClient"

    const-string v4, "Starting in-app billing setup."

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/billingclient/api/zzbz;

    const/4 v4, 0x0

    .line 12
    invoke-direct {v3, p0, p1, p2, v4}, Lcom/android/billingclient/api/zzbz;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;ILcom/android/billingclient/api/zzcm;)V

    iput-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    .line 13
    invoke-virtual {v3}, Lcom/android/billingclient/api/zzbz;->zzf()V

    .line 14
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_12f

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    .line 15
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_117

    .line 18
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_117

    .line 19
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 20
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_10d

    .line 21
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 22
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, "com.android.vending"

    .line 23
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    if-eqz v3, :cond_103

    new-instance v6, Landroid/content/ComponentName;

    .line 24
    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    .line 25
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    const-string v5, "playBillingLibraryVersion"

    .line 27
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_ae
    iget v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_ba

    .line 28
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaG(I)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    monitor-exit v0

    goto/16 :goto_129

    :cond_ba
    iget v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    if-eq v5, v2, :cond_cf

    const-string v1, "BillingClient"

    const-string v2, "Client state no longer CONNECTING, returning service disconnected."

    .line 29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzba:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 30
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbr(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    .line 31
    monitor-exit v0

    goto/16 :goto_24

    :cond_cf
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    .line 32
    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_ae .. :try_end_d2} :catchall_100

    if-lez p2, :cond_e5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-lt v0, v6, :cond_e5

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 34
    invoke-virtual {v0, v3, v2, v6, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    goto :goto_eb

    .line 42
    :cond_e5
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 35
    invoke-virtual {v0, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    :goto_eb
    if-eqz v0, :cond_f6

    .line 34
    const-string p2, "BillingClient"

    const-string v0, "Service was bonded successfully."

    .line 36
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v4

    goto :goto_129

    :cond_f6
    const-string v0, "BillingClient"

    const-string v2, "Connection to Billing service is blocked."

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzM:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 37
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    :catchall_100
    move-exception p1

    .line 32
    :try_start_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_100

    throw p1

    .line 35
    :cond_103
    const-string v0, "BillingClient"

    const-string v2, "The device doesn\'t have valid Play Store."

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzN:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 38
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    :cond_10d
    const-string v0, "BillingClient"

    const-string v2, "The device doesn\'t have valid Play Store."

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzN:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 39
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    :cond_117
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzO:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 40
    :goto_119
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    const-string v0, "BillingClient"

    const-string v1, "Billing service unavailable on device."

    .line 41
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzb:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, v3, v0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbr(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;I)V

    move-object p2, v0

    :goto_129
    if-eqz p2, :cond_12e

    .line 43
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_12e
    return-void

    :catchall_12f
    move-exception p1

    .line 14
    :try_start_130
    monitor-exit v0
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw p1
.end method

.method private final zzbv()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_14

    :try_start_f
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_29

    goto :goto_27

    :catchall_14
    move-exception v2

    .line 4
    :try_start_15
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while unbinding service!"

    .line 2
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_21

    :try_start_1c
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    goto :goto_27

    :catchall_21
    move-exception v2

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    .line 3
    throw v2

    .line 4
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private final zzbw(J)Z
    .registers 8

    .line 1
    const-string v0, "BillingClient"

    .line 0
    const-string v1, "Reconnection succeeded with result: "

    const-string v2, "Reconnection failed with result: "

    .line 1
    :try_start_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_e

    const-wide/16 p1, 0x0

    :cond_e
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaI(I)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p1, p2, v4}, Lcom/google/android/gms/internal/play_billing/zzdk;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_35

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 5
    :cond_35
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_48} :catch_49

    goto :goto_5a

    :catch_49
    move-exception p1

    .line 6
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-eqz p2, :cond_55

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_55
    const-string p2, "Error during reconnection attempt: "

    .line 8
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_5a
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result p1

    return p1
.end method

.method private final zzbx(J)Z
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb(Lcom/google/android/gms/internal/play_billing/zzbq;)Lcom/google/android/gms/internal/play_billing/zzbn;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zza()I

    move-result v1

    const/4 v2, 0x1

    move-wide v3, p1

    :goto_c
    const-string v5, "BillingClient"

    if-gt v2, v1, :cond_c4

    const-wide/16 v6, 0x0

    .line 3
    :try_start_12
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-gtz v8, :cond_24

    const-string v3, "No time remaining for reconnection attempt."

    .line 4
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result p1

    return p1

    .line 6
    :cond_24
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaI(I)Lcom/google/android/gms/internal/play_billing/zzdk;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v8, v3, v4, v9}, Lcom/google/android/gms/internal/play_billing/zzdk;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/BillingResult;

    .line 8
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_53

    .line 9
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reconnection succeeded with result: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result p1

    return p1

    .line 12
    :cond_53
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reconnection failed with result: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6b} :catch_6c

    goto :goto_7d

    :catch_6c
    move-exception v3

    .line 14
    instance-of v4, v3, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_78

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_78
    const-string v4, "Error during reconnection attempt: "

    .line 16
    invoke-static {v5, v4, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_7d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    sub-long v3, p1, v3

    add-int/lit8 v8, v2, -0x1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 18
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v10, v3, v8

    if-gez v10, :cond_a0

    const-string p1, "Reconnection failed due to timeout limit reached."

    .line 21
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result p1

    return p1

    :cond_a0
    if-ge v2, v1, :cond_c0

    cmp-long v6, v8, v6

    if-lez v6, :cond_c0

    .line 19
    :try_start_a6
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3
    :try_end_af
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_af} :catch_b2

    sub-long v3, p1, v3

    goto :goto_c0

    :catch_b2
    move-exception p1

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const-string p2, "Error sleeping during reconnection attempt: "

    .line 24
    invoke-static {v5, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c4

    :cond_c0
    :goto_c0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 20
    :cond_c4
    :goto_c4
    const-string p1, "Max retries reached."

    .line 25
    invoke-static {v5, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result p1

    return p1
.end method

.method private final zzby()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    :cond_12
    monitor-exit v0

    return v3

    :catchall_14
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static final zzbz(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const-string p0, "CLOSED"

    return-object p0

    :cond_b
    const-string p0, "CONNECTED"

    return-object p0

    :cond_e
    const-string p0, "CONNECTING"

    return-object p0

    :cond_11
    const-string p0, "DISCONNECTED"

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic zzd(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaD(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zze(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/billingclient/api/BillingClientImpl;->zzaC(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;)Landroid/os/ResultReceiver;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/zzbw;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/billingclient/api/zzbw;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;)V

    return-object v1
.end method

.method static bridge synthetic zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzz;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingClientStateListener;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzK:Lcom/android/billingclient/api/BillingClientStateListener;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzdd;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;
    .registers 1

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzn(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;
    .registers 1

    .line 1
    instance-of p0, p0, Landroid/os/DeadObjectException;

    if-eqz p0, :cond_7

    .line 2
    sget-object p0, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    return-object p0

    .line 3
    :cond_7
    sget-object p0, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/PendingPurchasesParams;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzar;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    return-object p0
.end method

.method static bridge synthetic zzr(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzbq;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzN:Lcom/google/android/gms/internal/play_billing/zzbq;

    return-object p0
.end method

.method static bridge synthetic zzs(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzcf;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzJ:Lcom/google/android/gms/internal/play_billing/zzcf;

    return-object p0
.end method

.method static bridge synthetic zzt(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic zzu(Lcom/android/billingclient/api/BillingClientImpl;ILcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzbv;

    invoke-direct {v0, p0, p2}, Lcom/android/billingclient/api/zzbv;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzp;)V

    invoke-direct {p0, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbu(Lcom/android/billingclient/api/BillingClientStateListener;I)V

    const-string p0, "reconnectIfNeeded"

    return-object p0
.end method

.method public static synthetic zzv(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/GetBillingChoiceInfoParams;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaK(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/GetBillingChoiceInfoParams;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzw(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 4
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    goto :goto_1d

    .line 6
    :cond_1a
    invoke-direct {p0, p2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaY(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzx(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbx(J)Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_23

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 3
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 6
    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    goto :goto_66

    :cond_23
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-nez v0, :cond_46

    const-string p2, "BillingClient"

    const-string v0, "Querying product details is not supported."

    .line 7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzt:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzs:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 11
    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    goto :goto_66

    .line 12
    :cond_46
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzi(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/android/billingclient/api/zzcl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/zzcl;->zza()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/billingclient/api/zzcl;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {p2, v0}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    invoke-virtual {p0}, Lcom/android/billingclient/api/zzcl;->zzc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/billingclient/api/zzcl;->zzd()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 14
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    :goto_66
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzy(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaJ(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic zzz(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaM(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzaj;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzaj;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)V

    new-instance v3, Lcom/android/billingclient/api/zzal;

    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzal;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_27

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v1, 0x3

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 6
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :cond_27
    return-void
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzbc;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzbc;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    new-instance v3, Lcom/android/billingclient/api/zzbd;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/billingclient/api/zzbd;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x4

    .line 5
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :cond_2b
    return-void
.end method

.method public createAlternativeBillingOnlyReportingDetailsAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzax;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzax;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzay;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzay;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_24

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbe(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :cond_24
    return-void
.end method

.method public createBillingProgramReportingDetailsAsync(Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;)V
    .registers 10

    .line 1
    :try_start_0
    new-instance v2, Lcom/android/billingclient/api/zzaq;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/billingclient/api/zzaq;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingProgramReportingDetailsParams;)V

    new-instance v5, Lcom/android/billingclient/api/zzar;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzar;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_17

    const-wide/16 v3, 0x7530

    move-object v1, p0

    .line 2
    :try_start_11
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaX(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    goto :goto_19

    :catch_17
    move-exception v0

    move-object v1, p0

    :goto_19
    move-object p1, v0

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    invoke-direct {p0, p2, v0, v2, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbf(Lcom/android/billingclient/api/BillingProgramReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void
.end method

.method public createExternalOfferReportingDetailsAsync(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzav;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzav;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzbe;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzbe;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_24

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbg(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :cond_24
    return-void
.end method

.method public endConnection()V
    .registers 7

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbJ(I)V

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    .line 2
    invoke-virtual {v1}, Lcom/android/billingclient/api/zzz;->zzh()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_1a

    :catchall_12
    move-exception v1

    .line 11
    :try_start_13
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while shutting down broadcast manager while ending connection!"

    .line 3
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_4d

    .line 2
    :cond_1a
    :goto_1a
    :try_start_1a
    const-string v1, "BillingClient"

    const-string v2, "Unbinding from service."

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbv()V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_25

    goto :goto_2d

    :catchall_25
    move-exception v1

    .line 3
    :try_start_26
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while unbinding from the service while ending connection!"

    .line 6
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_4d

    :goto_2d
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 7
    :try_start_2f
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbt()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    .line 9
    :try_start_32
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    :goto_35
    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzK:Lcom/android/billingclient/api/BillingClientStateListener;
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4d

    goto :goto_44

    :catchall_38
    move-exception v3

    .line 6
    :try_start_39
    const-string v4, "BillingClient"

    const-string v5, "There was an exception while shutting down the executor service while ending connection!"

    .line 8
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_46

    .line 9
    :try_start_40
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    goto :goto_35

    .line 11
    :goto_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v3

    .line 9
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbs(I)V

    iput-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzK:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 10
    throw v3

    :catchall_4d
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public getBillingChoiceInfoAsync(Lcom/android/billingclient/api/GetBillingChoiceInfoParams;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;)V
    .registers 9

    if-eqz p2, :cond_31

    if-eqz p1, :cond_29

    .line 2
    new-instance v0, Lcom/android/billingclient/api/zzbj;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzbj;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/GetBillingChoiceInfoParams;)V

    new-instance v3, Lcom/android/billingclient/api/zzbk;

    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;)V

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_28

    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbb(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :cond_28
    return-void

    .line 1
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide valid GetBillingChoiceInfoParams."

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid listener."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzas;

    invoke-direct {v0, p0, p2}, Lcom/android/billingclient/api/zzas;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzat;

    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzat;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_29

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v1, 0xd

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    :cond_29
    return-void
.end method

.method public final getConnectionState()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzb:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isAlternativeBillingOnlyAvailableAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzaz;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzaz;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzba;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzba;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_24

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzba(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :cond_24
    return-void
.end method

.method public isBillingProgramAvailableAsync(ILcom/android/billingclient/api/BillingProgramAvailabilityListener;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzao;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzao;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramAvailabilityListener;I)V

    new-instance v3, Lcom/android/billingclient/api/zzap;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/billingclient/api/zzap;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramAvailabilityListener;I)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_27

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbc(Lcom/android/billingclient/api/BillingProgramAvailabilityListener;ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :cond_27
    return-void
.end method

.method public isExternalOfferAvailableAsync(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzad;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzad;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzae;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzae;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_24

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbh(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    :cond_24
    return-void
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzc()J

    move-result-wide v2

    .line 2
    invoke-direct {v0, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbw(J)Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_21

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object v1

    .line 5
    :cond_1d
    invoke-direct {v0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbJ(I)V

    return-object v1

    .line 6
    :cond_21
    sget v2, Lcom/android/billingclient/api/zzdh;->zzL:I

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x4

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_234

    goto/16 :goto_ff

    .line 27
    :sswitch_3f
    const-string v2, "subscriptions"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const/4 v2, 0x0

    goto/16 :goto_100

    :sswitch_4a
    const-string v2, "priceChangeConfirmation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const/4 v2, 0x2

    goto/16 :goto_100

    :sswitch_55
    const-string v2, "ooo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const/16 v2, 0x11

    goto/16 :goto_100

    :sswitch_61
    const-string v2, "nnn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const/16 v2, 0x10

    goto/16 :goto_100

    :sswitch_6d
    const-string v2, "mmm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    const/16 v2, 0xf

    goto/16 :goto_100

    :sswitch_79
    const-string v2, "lll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v5

    goto/16 :goto_100

    :sswitch_84
    const-string v2, "kkk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v6

    goto/16 :goto_100

    :sswitch_8f
    const-string v2, "jjj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v7

    goto/16 :goto_100

    :sswitch_9a
    const-string v2, "iii"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v8

    goto/16 :goto_100

    :sswitch_a5
    const-string v2, "hhh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v9

    goto :goto_100

    :sswitch_af
    const-string v2, "ggg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v10

    goto :goto_100

    :sswitch_b9
    const-string v2, "fff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v11

    goto :goto_100

    :sswitch_c3
    const-string v2, "eee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v12

    goto :goto_100

    :sswitch_cd
    const-string v2, "ddd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v3

    goto :goto_100

    :sswitch_d7
    const-string v2, "ccc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v13

    goto :goto_100

    :sswitch_e1
    const-string v2, "bbb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v14

    goto :goto_100

    :sswitch_eb
    const-string v2, "aaa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v15

    goto :goto_100

    :sswitch_f5
    const-string v2, "subscriptionsUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    move v2, v4

    goto :goto_100

    :cond_ff
    :goto_ff
    const/4 v2, -0x1

    :goto_100
    packed-switch v2, :pswitch_data_27e

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingClient"

    const-string v3, "Unsupported feature: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzy:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzH:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 27
    invoke-direct {v0, v1, v2, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    .line 25
    :pswitch_11a
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Z

    if-eqz v1, :cond_121

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_123

    .line 8
    :cond_121
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzr:Lcom/android/billingclient/api/BillingResult;

    .line 25
    :goto_123
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbM:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v3, 0x16

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_12b
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzC:Z

    if-eqz v1, :cond_132

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_134

    .line 9
    :cond_132
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzx:Lcom/android/billingclient/api/BillingResult;

    .line 8
    :goto_134
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbH:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v3, 0x15

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_13c
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Z

    if-eqz v1, :cond_143

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_145

    .line 10
    :cond_143
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzw:Lcom/android/billingclient/api/BillingResult;

    .line 9
    :goto_145
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbo:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v3, 0x14

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_14d
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzA:Z

    if-eqz v1, :cond_154

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_156

    .line 11
    :cond_154
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzv:Lcom/android/billingclient/api/BillingResult;

    .line 10
    :goto_156
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaZ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v3, 0x13

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_15e
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzB:Z

    if-eqz v1, :cond_165

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_167

    .line 12
    :cond_165
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzu:Lcom/android/billingclient/api/BillingResult;

    .line 11
    :goto_167
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaE:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v3, 0x12

    .line 12
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_16f
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    if-eqz v1, :cond_176

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_178

    .line 13
    :cond_176
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzD:Lcom/android/billingclient/api/BillingResult;

    .line 12
    :goto_178
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzan:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 13
    invoke-direct {v0, v1, v2, v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_17e
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzx:Z

    if-eqz v1, :cond_185

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_187

    .line 14
    :cond_185
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzC:Lcom/android/billingclient/api/BillingResult;

    .line 13
    :goto_187
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzah:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 14
    invoke-direct {v0, v1, v2, v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_18d
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzv:Z

    if-eqz v1, :cond_194

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_196

    .line 15
    :cond_194
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzA:Lcom/android/billingclient/api/BillingResult;

    .line 14
    :goto_196
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzG:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 15
    invoke-direct {v0, v1, v2, v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_19c
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzv:Z

    if-eqz v1, :cond_1a3

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1a5

    .line 16
    :cond_1a3
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzz:Lcom/android/billingclient/api/BillingResult;

    .line 15
    :goto_1a5
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzF:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 16
    invoke-direct {v0, v1, v2, v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_1ab
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-eqz v1, :cond_1b2

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1b4

    .line 17
    :cond_1b2
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzs:Lcom/android/billingclient/api/BillingResult;

    .line 16
    :goto_1b4
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzt:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 17
    invoke-direct {v0, v1, v2, v9}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_1ba
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Z

    if-eqz v1, :cond_1c1

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1c3

    .line 18
    :cond_1c1
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzp:Lcom/android/billingclient/api/BillingResult;

    .line 17
    :goto_1c3
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzai:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 18
    invoke-direct {v0, v1, v2, v10}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_1c9
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Z

    if-eqz v1, :cond_1d0

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1d2

    .line 19
    :cond_1d0
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzp:Lcom/android/billingclient/api/BillingResult;

    .line 18
    :goto_1d2
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzs:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 19
    invoke-direct {v0, v1, v2, v11}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_1d8
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-eqz v1, :cond_1df

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1e1

    .line 20
    :cond_1df
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzq:Lcom/android/billingclient/api/BillingResult;

    .line 19
    :goto_1e1
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzu:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 20
    invoke-direct {v0, v1, v2, v12}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_1e7
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    if-eqz v1, :cond_1ee

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1f0

    .line 21
    :cond_1ee
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzo:Lcom/android/billingclient/api/BillingResult;

    .line 20
    :goto_1f0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzE:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 21
    invoke-direct {v0, v1, v2, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_1f6
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    if-eqz v1, :cond_1fd

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1ff

    .line 22
    :cond_1fd
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzt:Lcom/android/billingclient/api/BillingResult;

    .line 21
    :goto_1ff
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzD:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 22
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_205
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzo:Z

    if-eqz v1, :cond_20c

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_20e

    .line 23
    :cond_20c
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzn:Lcom/android/billingclient/api/BillingResult;

    .line 22
    :goto_20e
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzI:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 23
    invoke-direct {v0, v1, v2, v15}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    :pswitch_214
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzl:Z

    if-eqz v1, :cond_21b

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_21d

    .line 24
    :cond_21b
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzm:Lcom/android/billingclient/api/BillingResult;

    .line 23
    :goto_21d
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzj:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 24
    invoke-direct {v0, v1, v2, v14}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    .line 7
    :pswitch_223
    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClientImpl;->zzk:Z

    if-eqz v1, :cond_22a

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    goto :goto_22c

    .line 25
    :cond_22a
    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzl:Lcom/android/billingclient/api/BillingResult;

    .line 7
    :goto_22c
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzi:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v3, 0x2

    .line 25
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbD(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    return-object v1

    nop

    :sswitch_data_234
    .sparse-switch
        -0x1928a0a1 -> :sswitch_f5
        0x17841 -> :sswitch_eb
        0x17c22 -> :sswitch_e1
        0x18003 -> :sswitch_d7
        0x183e4 -> :sswitch_cd
        0x187c5 -> :sswitch_c3
        0x18ba6 -> :sswitch_b9
        0x18f87 -> :sswitch_af
        0x19368 -> :sswitch_a5
        0x19749 -> :sswitch_9a
        0x19b2a -> :sswitch_8f
        0x19f0b -> :sswitch_84
        0x1a2ec -> :sswitch_79
        0x1a6cd -> :sswitch_6d
        0x1aaae -> :sswitch_61
        0x1ae8f -> :sswitch_55
        0xc5ff92e -> :sswitch_4a
        0x7674caf6 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_223
        :pswitch_214
        :pswitch_205
        :pswitch_1f6
        :pswitch_1e7
        :pswitch_1d8
        :pswitch_1c9
        :pswitch_1ba
        :pswitch_1ab
        :pswitch_19c
        :pswitch_18d
        :pswitch_17e
        :pswitch_16f
        :pswitch_15e
        :pswitch_14d
        :pswitch_13c
        :pswitch_12b
        :pswitch_11a
    .end packed-switch
.end method

.method public final isReady()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzH:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzby()Z

    move-result v0

    return v0
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .registers 26

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    if-eqz v0, :cond_4d2

    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    .line 2
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzz;->zze()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_4d2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->getDeveloperBillingOptionParams()Lcom/android/billingclient/api/DeveloperBillingOptionParams;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzf:Lcom/android/billingclient/api/zzz;

    .line 4
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzz;->zzc()Lcom/android/billingclient/api/DeveloperProvidedBillingListener;

    move-result-object v0

    if-nez v0, :cond_2e

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 5
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzI:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbF(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;J)V

    return-object v4

    .line 6
    :cond_2e
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzc()J

    move-result-wide v2

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzbw(J)Z

    move-result v0

    if-nez v0, :cond_44

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbF(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;J)V

    .line 9
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :cond_44
    iget-object v2, v1, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v2

    :try_start_47
    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    if-eqz v0, :cond_53

    iget-object v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzj:Lcom/android/billingclient/api/zzbz;

    .line 10
    invoke-virtual {v0}, Lcom/android/billingclient/api/zzbz;->zzg()Z

    move-result v0

    move v8, v0

    goto :goto_54

    :cond_53
    const/4 v8, 0x0

    .line 11
    :goto_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_4cf

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzj()Ljava/util/ArrayList;

    move-result-object v0

    .line 13
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzk()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 14
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzcg;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/billingclient/api/zzeu;

    .line 15
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/zzcg;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v21, v10

    check-cast v21, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    if-nez v9, :cond_4cd

    .line 17
    invoke-virtual/range {v21 .. v21}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v22

    .line 18
    invoke-virtual/range {v21 .. v21}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "subs"

    .line 19
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzk:Z

    if-eqz v10, :cond_8b

    goto :goto_9f

    .line 116
    :cond_8b
    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support subscriptions."

    .line 148
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzi:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 149
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzl:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 150
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    .line 20
    :cond_9f
    :goto_9f
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzu()Z

    move-result v10

    if-eqz v10, :cond_bd

    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    if-nez v10, :cond_bd

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support extra params for buy intent."

    .line 21
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzr:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 22
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzf:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 23
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    .line 24
    :cond_bd
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_dc

    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzt:Z

    if-nez v10, :cond_dc

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support multi-item purchases."

    .line 25
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzs:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 26
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzp:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 27
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    .line 28
    :cond_dc
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_fa

    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-nez v10, :cond_fa

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support purchases with ProductDetails."

    .line 29
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzt:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 30
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzs:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 31
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    .line 32
    :cond_fa
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_fe
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_130

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 33
    invoke-virtual {v12}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_fe

    const-string v13, ":"

    .line 34
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_fe

    iget-boolean v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Z

    if-nez v12, :cond_fe

    const-string v0, "BillingClient"

    const-string v2, "Current Play Store version doesn\'t support gift code purchase."

    .line 35
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbM:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 36
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzr:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 37
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    .line 38
    :cond_130
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzd()Lcom/android/billingclient/api/BillingResult;

    move-result-object v10

    .line 39
    sget-object v12, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    if-eq v10, v12, :cond_144

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbd:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v3, 0x2

    move v7, v8

    move-object v4, v10

    .line 40
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 41
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :cond_144
    move v7, v8

    iget-boolean v8, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzn:Z

    if-eqz v8, :cond_378

    move-object v8, v9

    iget-boolean v9, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    iget-boolean v10, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 42
    invoke-virtual {v12}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForOneTimeProducts()Z

    move-result v12

    iget-object v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 43
    invoke-virtual {v13}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v13

    move v14, v11

    move v11, v12

    move v12, v13

    iget-boolean v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzI:Z

    move v15, v14

    iget-object v14, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    move/from16 v16, v15

    iget-object v15, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v19, v17

    move-object/from16 v18, v3

    move/from16 v3, v16

    move-wide/from16 v16, v19

    move-wide/from16 v19, v5

    move-object v5, v8

    move-object/from16 v8, p2

    .line 46
    invoke-static/range {v8 .. v20}, Lcom/google/android/gms/internal/play_billing/zzc;->zzf(Lcom/android/billingclient/api/BillingFlowParams;ZZZZZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Landroid/os/Bundle;

    move-result-object v6

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1f3

    new-instance v8, Ljava/util/ArrayList;

    .line 78
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    .line 80
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1ec

    .line 85
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1b7

    const-string v9, "skuDetailsTokens"

    .line 86
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    :cond_1b7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v3, :cond_2b1

    new-instance v8, Ljava/util/ArrayList;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, v3, :cond_1e5

    .line 92
    const-string v0, "additionalSkus"

    .line 93
    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "additionalSkuTypes"

    .line 94
    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2b1

    .line 91
    :cond_1e5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/zzeu;

    .line 92
    throw v4

    .line 83
    :cond_1ec
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/zzeu;

    .line 84
    throw v4

    .line 110
    :cond_1f3
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    .line 49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    .line 50
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 54
    :goto_21e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_27b

    .line 55
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 56
    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v15

    .line 57
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->zzb()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_23f

    .line 58
    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_23f
    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v15, v3}, Lcom/android/billingclient/api/ProductDetails;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_253

    .line 63
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_253
    if-lez v13, :cond_277

    .line 64
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_277
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_21e

    :cond_27b
    const-string v3, "SKU_OFFER_ID_TOKEN_LIST"

    .line 68
    invoke-virtual {v6, v3, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28b

    const-string v3, "autoPayBalanceThresholdList"

    .line 70
    invoke-virtual {v6, v3, v12}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    :cond_28b
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_296

    const-string v3, "skuDetailsTokens"

    .line 72
    invoke-virtual {v6, v3, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    :cond_296
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a1

    const-string v3, "SKU_SERIALIZED_DOCID_LIST"

    .line 74
    invoke-virtual {v6, v3, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    :cond_2a1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b1

    const-string v3, "additionalSkus"

    .line 76
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "additionalSkuTypes"

    .line 77
    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 94
    :cond_2b1
    :goto_2b1
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 95
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzr:Z

    if-nez v0, :cond_2cb

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzu:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzq:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    move-wide/from16 v5, v19

    .line 96
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 97
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :cond_2cb
    if-eqz v21, :cond_2ea

    invoke-virtual/range {v21 .. v21}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ea

    invoke-virtual/range {v21 .. v21}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v3, "skuPackageName"

    .line 100
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_2eb

    :cond_2ea
    const/4 v11, 0x0

    .line 101
    :goto_2eb
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f6

    const-string v0, "accountName"

    .line 102
    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2f6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_304

    const-string v0, "BillingClient"

    const-string v3, "Activity\'s intent is null."

    .line 104
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_335

    .line 112
    :cond_304
    const-string v3, "PROXY_PACKAGE"

    .line 105
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_335

    const-string v3, "PROXY_PACKAGE"

    .line 106
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "proxyPackage"

    .line 107
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_31b
    iget-object v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 108
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v8, 0x0

    .line 109
    invoke-virtual {v3, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "proxyPackageVersion"

    .line 110
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31b .. :try_end_32d} :catch_32e

    goto :goto_335

    .line 131
    :catch_32e
    const-string v0, "proxyPackageVersion"

    const-string v3, "package not found"

    .line 111
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_335
    :goto_335
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzE:Z

    if-eqz v0, :cond_33d

    const/16 v0, 0x1c

    :goto_33b
    move v2, v0

    goto :goto_35c

    .line 139
    :cond_33d
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzu:Z

    if-eqz v0, :cond_34a

    .line 112
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34a

    const/16 v0, 0x11

    goto :goto_33b

    :cond_34a
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzs:Z

    if-eqz v0, :cond_353

    if-eqz v11, :cond_353

    const/16 v0, 0xf

    goto :goto_33b

    :cond_353
    iget-boolean v0, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzp:Z

    if-eqz v0, :cond_35a

    const/16 v0, 0x9

    goto :goto_33b

    :cond_35a
    const/4 v0, 0x6

    goto :goto_33b

    .line 104
    :goto_35c
    new-instance v0, Lcom/android/billingclient/api/zzaf;

    move-object/from16 v15, p1

    move-object v14, v4

    move-object v4, v5

    move-object/from16 v3, v22

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/zzaf;-><init>(Lcom/android/billingclient/api/BillingClientImpl;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    .line 113
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    const-wide/16 v9, 0x1388

    const/4 v11, 0x0

    move-object v8, v0

    .line 114
    invoke-static/range {v8 .. v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_392

    :cond_378
    move-object/from16 v15, p1

    move-object v14, v4

    move-wide/from16 v19, v5

    move-object v4, v9

    move-object/from16 v3, v22

    .line 77
    new-instance v8, Lcom/android/billingclient/api/zzag;

    invoke-direct {v8, v1, v3, v4}, Lcom/android/billingclient/api/zzag;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    .line 115
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    const-wide/16 v9, 0x1388

    const/4 v11, 0x0

    .line 116
    invoke-static/range {v8 .. v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_392
    if-nez v0, :cond_3ae

    .line 114
    :try_start_394
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzc:Lcom/android/billingclient/api/BillingResult;
    :try_end_398
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_394 .. :try_end_398} :catch_3a9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_394 .. :try_end_398} :catch_3a7
    .catch Ljava/lang/Exception; {:try_start_394 .. :try_end_398} :catch_3a2

    const/4 v3, 0x2

    move-wide/from16 v5, v19

    .line 117
    :try_start_39b
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzbH(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 118
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :catch_3a2
    move-exception v0

    move-wide/from16 v5, v19

    goto/16 :goto_496

    :catch_3a7
    move-exception v0

    goto :goto_3aa

    :catch_3a9
    move-exception v0

    :goto_3aa
    move-wide/from16 v5, v19

    goto/16 :goto_4b3

    :cond_3ae
    move-wide/from16 v5, v19

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    .line 119
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "BillingClient"

    .line 120
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v3, "BillingClient"

    .line 121
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_471

    const-string v4, "BillingClient"

    const-string v8, "Unable to buy item, Error response code: "

    .line 122
    invoke-static {v0, v8}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v0, v3}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v4

    const-string v3, "BillingClient"
    :try_end_3da
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_39b .. :try_end_3da} :catch_4b2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_39b .. :try_end_3da} :catch_4b0
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_3da} :catch_495

    if-nez v2, :cond_3df

    :try_start_3dc
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_42c

    .line 130
    :cond_3df
    const-string v0, "LOG_REASON"

    .line 125
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3ea

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    goto :goto_42c

    .line 126
    :cond_3ea
    instance-of v8, v0, Ljava/lang/Integer;

    if-eqz v8, :cond_3f9

    .line 127
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzjs;

    move-result-object v0

    goto :goto_42c

    :cond_3f9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected type for bundle log reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;
    :try_end_417
    .catchall {:try_start_3dc .. :try_end_417} :catchall_418

    goto :goto_42c

    :catchall_418
    move-exception v0

    .line 129
    :try_start_419
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Failed to get log reason from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 124
    :goto_42c
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zza:Lcom/google/android/gms/internal/play_billing/zzjs;

    if-ne v0, v3, :cond_432

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    :cond_432
    move-object v3, v0

    const-string v8, "BillingClient"
    :try_end_435
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_419 .. :try_end_435} :catch_4b2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_419 .. :try_end_435} :catch_4b0
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_435} :catch_495

    if-nez v2, :cond_43c

    :goto_437
    move-object v2, v3

    move-wide/from16 v19, v5

    move-object v5, v14

    goto :goto_45a

    .line 133
    :cond_43c
    :try_start_43c
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 130
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_442
    .catchall {:try_start_43c .. :try_end_442} :catchall_447

    move-object v2, v3

    move-wide/from16 v19, v5

    move-object v5, v0

    goto :goto_45a

    :catchall_447
    move-exception v0

    .line 131
    :try_start_448
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get additional log details from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_459
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_448 .. :try_end_459} :catch_4b2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_448 .. :try_end_459} :catch_4b0
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_459} :catch_495

    goto :goto_437

    :goto_45a
    const/4 v3, 0x2

    move v8, v7

    move-wide/from16 v6, v19

    .line 132
    :try_start_45e
    invoke-direct/range {v1 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzbI(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V
    :try_end_461
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_45e .. :try_end_461} :catch_46d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_45e .. :try_end_461} :catch_46b
    .catch Ljava/lang/Exception; {:try_start_45e .. :try_end_461} :catch_467

    move-wide v5, v6

    move v7, v8

    .line 133
    :try_start_463
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :catch_467
    move-exception v0

    move-wide v5, v6

    move v7, v8

    goto :goto_496

    :catch_46b
    move-exception v0

    goto :goto_46e

    :catch_46d
    move-exception v0

    :goto_46e
    move-wide v5, v6

    move v7, v8

    goto :goto_4b3

    .line 128
    :cond_471
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 134
    invoke-direct {v0, v15, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "BUY_INTENT"

    .line 135
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "BUY_INTENT"

    .line 136
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "billingClientTransactionId"

    .line 137
    invoke-virtual {v0, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "wasServiceAutoReconnected"

    .line 138
    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {v15, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_492
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_463 .. :try_end_492} :catch_4b2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_463 .. :try_end_492} :catch_4b0
    .catch Ljava/lang/Exception; {:try_start_463 .. :try_end_492} :catch_495

    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :catch_495
    move-exception v0

    .line 147
    :goto_496
    const-string v2, "BillingClient"

    const-string v3, "Exception while launching billing flow. Try to reconnect"

    .line 140
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zze:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    .line 141
    invoke-static {v0}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    move v8, v7

    move-wide v6, v5

    move-object v5, v0

    .line 142
    invoke-direct/range {v1 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzbI(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 143
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :catch_4b0
    move-exception v0

    goto :goto_4b3

    :catch_4b2
    move-exception v0

    .line 11
    :goto_4b3
    const-string v2, "BillingClient"

    const-string v3, "Time out while launching billing flow. Try to reconnect"

    .line 144
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzd:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzk:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    .line 145
    invoke-static {v0}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    move v8, v7

    move-wide v6, v5

    move-object v5, v0

    .line 146
    invoke-direct/range {v1 .. v8}, Lcom/android/billingclient/api/BillingClientImpl;->zzbI(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 147
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v4

    :cond_4cd
    move-object v14, v4

    .line 16
    throw v14

    :catchall_4cf
    move-exception v0

    .line 11
    :try_start_4d0
    monitor-exit v2
    :try_end_4d1
    .catchall {:try_start_4d0 .. :try_end_4d1} :catchall_4cf

    throw v0

    .line 150
    :cond_4d2
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzl:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 151
    sget-object v4, Lcom/android/billingclient/api/zzdh;->zzE:Lcom/android/billingclient/api/BillingResult;

    const/4 v3, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzbF(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;J)V

    return-object v4
.end method

.method public launchExternalLink(Landroid/app/Activity;Lcom/android/billingclient/api/LaunchExternalLinkParams;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;)V
    .registers 11

    if-eqz p1, :cond_26

    .line 1
    :try_start_2
    new-instance v2, Lcom/android/billingclient/api/zzau;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/android/billingclient/api/zzau;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/LaunchExternalLinkParams;Landroid/app/Activity;)V

    new-instance v5, Lcom/android/billingclient/api/zzaw;

    invoke-direct {v5, p0, p3}, Lcom/android/billingclient/api/zzaw;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_19

    const-wide/16 v3, 0x7530

    move-object v1, p0

    .line 2
    :try_start_13
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaX(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    goto :goto_1b

    :catch_19
    move-exception v0

    move-object v1, p0

    :goto_1b
    move-object p1, v0

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbk(Lcom/android/billingclient/api/LaunchExternalLinkResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    :cond_26
    move-object v1, p0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid activity."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .registers 9

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzbh;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzbh;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/QueryProductDetailsParams;)V

    new-instance v3, Lcom/android/billingclient/api/zzbi;

    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzbi;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_34

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/4 v1, 0x7

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 8
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    :cond_34
    return-void
.end method

.method public final queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams;->zza()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams;->getIncludeSuspendedSubscriptions()Z

    move-result p1

    new-instance v1, Lcom/android/billingclient/api/zzbp;

    .line 3
    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/billingclient/api/zzbp;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;Ljava/lang/String;Z)V

    new-instance v4, Lcom/android/billingclient/api/zzac;

    invoke-direct {v4, p0, p2}, Lcom/android/billingclient/api/zzac;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 4
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    const-wide/16 v2, 0x7530

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_34

    .line 7
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    const/16 v1, 0x9

    .line 8
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_34
    return-void
.end method

.method public showAlternativeBillingOnlyInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .registers 11

    if-eqz p1, :cond_53

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzc()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbw(J)Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_16

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object p2

    :cond_16
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzy:Z

    if-nez v0, :cond_29

    const-string p1, "BillingClient"

    const-string p2, "Current Play Store version doesn\'t support alternative billing only."

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzan:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzD:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object p2

    :cond_29
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/android/billingclient/api/zzbr;

    invoke-direct {v0, p0, v6, p2}, Lcom/android/billingclient/api/zzbr;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    new-instance v2, Lcom/android/billingclient/api/zzah;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/billingclient/api/zzah;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    new-instance v5, Lcom/android/billingclient/api/zzai;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzai;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 9
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_50

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 11
    invoke-direct {p0, p2, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    .line 12
    :cond_50
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 1
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid activity."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showBillingProgramInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V
    .registers 11

    if-eqz p1, :cond_26

    .line 1
    :try_start_2
    new-instance v2, Lcom/android/billingclient/api/zzam;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/android/billingclient/api/zzam;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingProgramInformationDialogParams;Landroid/app/Activity;)V

    new-instance v5, Lcom/android/billingclient/api/zzan;

    invoke-direct {v5, p0, p3}, Lcom/android/billingclient/api/zzan;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingProgramInformationDialogListener;)V

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaE()Landroid/os/Handler;

    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_19

    const-wide/16 v3, 0x7530

    move-object v1, p0

    .line 2
    :try_start_13
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/BillingClientImpl;->zzaX(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    goto :goto_1b

    :catch_19
    move-exception v0

    move-object v1, p0

    :goto_1b
    move-object p1, v0

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbm(Lcom/android/billingclient/api/BillingProgramInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/Exception;)V

    return-void

    :cond_26
    move-object v1, p0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid activity."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showExternalOfferInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .registers 11

    if-eqz p1, :cond_53

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzc()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbw(J)Z

    move-result v0

    const/16 v1, 0x19

    if-nez v0, :cond_16

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 4
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object p2

    :cond_16
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzz:Z

    if-nez v0, :cond_29

    const-string p1, "BillingClient"

    const-string p2, "Current Play Store version doesn\'t support external offer."

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaE:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    sget-object p2, Lcom/android/billingclient/api/zzdh;->zzu:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object p2

    :cond_29
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/android/billingclient/api/zzbs;

    invoke-direct {v0, p0, v6, p2}, Lcom/android/billingclient/api/zzbs;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V

    new-instance v2, Lcom/android/billingclient/api/zzbf;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/billingclient/api/zzbf;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    new-instance v5, Lcom/android/billingclient/api/zzbg;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzbg;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    .line 9
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_50

    .line 10
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaH()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzy:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 11
    invoke-direct {p0, p2, v1, p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbE(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    .line 12
    :cond_50
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    .line 1
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a valid activity."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final showInAppMessages(Landroid/app/Activity;Lcom/android/billingclient/api/InAppMessageParams;Lcom/android/billingclient/api/InAppMessageResponseListener;)Lcom/android/billingclient/api/BillingResult;
    .registers 12

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzc()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->zzbw(J)Z

    move-result v0

    const-string v1, "BillingClient"

    if-nez v0, :cond_14

    const-string p1, "Service disconnected."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_14
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzq:Z

    if-nez v0, :cond_20

    const-string p1, "Current client doesn\'t support showing in-app messages."

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzt:Lcom/android/billingclient/api/BillingResult;

    return-object p1

    :cond_20
    const v0, 0x1020002

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_32

    const-string v3, "Could not retrieve the window token from the activity instance."

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/os/Bundle;

    .line 12
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KEY_WINDOW_TOKEN"

    .line 13
    invoke-static {v0, v3, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    iget v2, v1, Landroid/graphics/Rect;->left:I

    const-string v3, "KEY_DIMEN_LEFT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    const-string v3, "KEY_DIMEN_TOP"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v2, v1, Landroid/graphics/Rect;->right:I

    const-string v3, "KEY_DIMEN_RIGHT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const-string v2, "KEY_DIMEN_BOTTOM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    const-string v2, "playBillingLibraryVersion"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_70

    const-string v2, "playBillingLibraryWrapperVersion"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_70
    invoke-virtual {p2}, Lcom/android/billingclient/api/InAppMessageParams;->zza()Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "KEY_CATEGORY_IDS"

    .line 21
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p2, 0x0

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "accountName"

    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iget-object v6, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    .line 24
    new-instance p2, Lcom/android/billingclient/api/zzbq;

    invoke-direct {p2, p0, v6, p3}, Lcom/android/billingclient/api/zzbq;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/InAppMessageResponseListener;)V

    new-instance v2, Lcom/android/billingclient/api/zzbl;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/billingclient/api/zzbl;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    const/4 v5, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl;->zzO()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x1388

    .line 26
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/BillingClientImpl;->zzP(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 27
    sget-object p1, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    return-object p1
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzbu(Lcom/android/billingclient/api/BillingClientStateListener;I)V

    return-void
.end method

.method final declared-synchronized zzO()Ljava/util/concurrent/ExecutorService;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzL:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_12

    sget v0, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    new-instance v1, Lcom/android/billingclient/api/zzbo;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzbo;-><init>(Lcom/android/billingclient/api/BillingClientImpl;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzL:Ljava/util/concurrent/ExecutorService;

    :cond_12
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzL:Ljava/util/concurrent/ExecutorService;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public final zzax(Ljava/lang/Runnable;)V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzi(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/android/billingclient/api/zzcl;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v9

    .line 5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v10, :cond_22d

    add-int/lit8 v12, v3, 0x14

    if-le v12, v10, :cond_21

    move v4, v10

    goto :goto_22

    :cond_21
    move v4, v12

    :goto_22
    new-instance v15, Ljava/util/ArrayList;

    .line 6
    invoke-interface {v9, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v4, :cond_47

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 9
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_47
    new-instance v7, Landroid/os/Bundle;

    .line 10
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ITEM_ID_LIST"

    .line 11
    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v13, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzc:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    .line 12
    invoke-virtual {v7, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_58
    iget-object v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zza:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5b
    .catch Landroid/os/DeadObjectException; {:try_start_58 .. :try_end_5b} :catch_221
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_215

    move-object v4, v3

    :try_start_5c
    iget-object v3, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzi:Lcom/google/android/gms/internal/play_billing/zzar;

    .line 13
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_212

    const/4 v4, 0x0

    if-nez v3, :cond_6d

    .line 61
    :try_start_62
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbc:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v3, "Service has been reset to null."

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    :cond_6d
    iget-boolean v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzw:Z

    const/4 v8, 0x1

    if-eqz v5, :cond_7d

    iget-object v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzG:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 14
    invoke-virtual {v5}, Lcom/android/billingclient/api/PendingPurchasesParams;->isEnabledForPrepaidPlans()Z

    move-result v5

    if-eqz v5, :cond_7d

    move/from16 v16, v8

    goto :goto_7f

    :cond_7d
    const/16 v16, 0x0

    .line 15
    :goto_7f
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaN(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 16
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaN(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 17
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaN(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 18
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzaN(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/play_billing/zza;->zza(ZZZZZZ)Lcom/google/android/gms/internal/play_billing/zza;

    move-result-object v18

    iget-boolean v5, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzx:Z

    if-eq v8, v5, :cond_a0

    const/16 v5, 0x11

    goto :goto_a2

    :cond_a0
    const/16 v5, 0x14

    :goto_a2
    iget-object v8, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzg:Landroid/content/Context;

    .line 19
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v14, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzd:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/billingclient/api/BillingClientImpl;->zzM:Ljava/lang/Long;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 21
    invoke-static/range {v13 .. v20}, Lcom/google/android/gms/internal/play_billing/zzc;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zza;J)Landroid/os/Bundle;

    move-result-object v4

    move-object v13, v8

    move-object v8, v4

    move v4, v5

    move-object v5, v13

    const/4 v13, 0x0

    .line 22
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/zzar;->zzj(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_c1
    .catch Landroid/os/DeadObjectException; {:try_start_62 .. :try_end_c1} :catch_221
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_c1} :catch_215

    if-nez v3, :cond_ce

    .line 48
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzB:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzR:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v3, "queryProductDetailsAsync got empty product details response."

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    :cond_ce
    const-string v4, "DETAILS_LIST"

    .line 23
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x6

    if-nez v4, :cond_103

    const-string v0, "BillingClient"

    .line 49
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v2, "BillingClient"

    .line 50
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_f6

    .line 51
    invoke-static {v0, v2}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const-string v3, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 52
    invoke-static {v0, v3}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {v1, v2, v4, v0, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    .line 54
    :cond_f6
    invoke-static {v5, v2}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzS:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 55
    invoke-direct {v1, v0, v2, v3, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    :cond_103
    const-string v4, "DETAILS_LIST"

    .line 24
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_116

    .line 56
    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzB:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzT:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v3, "queryProductDetailsAsync got null response list"

    invoke-direct {v1, v0, v2, v3, v13}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    :cond_116
    new-instance v7, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_120
    if-ge v13, v8, :cond_154

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 26
    check-cast v14, Ljava/lang/String;

    :try_start_128
    new-instance v11, Lcom/android/billingclient/api/ProductDetails;

    .line 27
    invoke-direct {v11, v14}, Lcom/android/billingclient/api/ProductDetails;-><init>(Ljava/lang/String;)V
    :try_end_12d
    .catch Lorg/json/JSONException; {:try_start_128 .. :try_end_12d} :catch_143

    .line 28
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v5, "Got product details: "

    invoke-virtual {v5, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v14, "BillingClient"

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x6

    goto :goto_120

    :catch_143
    move-exception v0

    .line 13
    const-string v2, "Error trying to decode SkuDetails."

    const/4 v3, 0x6

    .line 57
    invoke-static {v3, v2}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzU:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 58
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    .line 29
    :cond_154
    const-string v4, "UNFETCHED_PRODUCT_LIST"

    .line 30
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_15f
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_18e

    .line 33
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v8, Lcom/android/billingclient/api/UnfetchedProduct;

    .line 34
    invoke-direct {v8, v5}, Lcom/android/billingclient/api/UnfetchedProduct;-><init>(Ljava/lang/String;)V

    const-string v5, "BillingClient"

    .line 35
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "Got unfetchedProduct: "

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16a

    .line 37
    :cond_18e
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_192
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 38
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1cb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/billingclient/api/ProductDetails;

    .line 39
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a2

    .line 40
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a2

    goto :goto_192

    .line 41
    :cond_1cb
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "productId"

    .line 42
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v11, "type"

    .line 43
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "statusCode"

    const/4 v11, 0x0

    .line 44
    invoke-virtual {v5, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v8, Lcom/android/billingclient/api/UnfetchedProduct;

    .line 45
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Lcom/android/billingclient/api/UnfetchedProduct;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f7
    .catch Lorg/json/JSONException; {:try_start_15f .. :try_end_1f7} :catch_201

    goto :goto_192

    .line 46
    :cond_1f8
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v12

    goto/16 :goto_19

    :catch_201
    move-exception v0

    .line 58
    const-string v2, "Error trying to decode SkuDetails."

    const/4 v3, 0x6

    .line 59
    invoke-static {v3, v2}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzU:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v4, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: "

    .line 60
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    :catchall_212
    move-exception v0

    .line 13
    :try_start_213
    monitor-exit v4
    :try_end_214
    .catchall {:try_start_213 .. :try_end_214} :catchall_212

    :try_start_214
    throw v0
    :try_end_215
    .catch Landroid/os/DeadObjectException; {:try_start_214 .. :try_end_215} :catch_221
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_215} :catch_215

    :catch_215
    move-exception v0

    .line 62
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzQ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    :catch_221
    move-exception v0

    .line 63
    sget-object v2, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzQ:Lcom/google/android/gms/internal/play_billing/zzjs;

    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzaF(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcl;

    move-result-object v0

    return-object v0

    .line 45
    :cond_22d
    const-string v3, ""

    new-instance v4, Lcom/android/billingclient/api/zzcl;

    const/4 v11, 0x0

    invoke-direct {v4, v11, v3, v0, v2}, Lcom/android/billingclient/api/zzcl;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method final zzl()Lcom/android/billingclient/api/zzdd;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zzh:Lcom/android/billingclient/api/zzdd;

    return-object v0
.end method

.method final zzo(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl;->zze:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/zzak;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzak;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingResult;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method
