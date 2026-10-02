.class final Lcom/google/android/gms/internal/play_billing/zzhy;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzhy;


# instance fields
.field private final zzb:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzhy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzhy;->zza:Lcom/google/android/gms/internal/play_billing/zzhy;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgk;->zza()Lcom/google/android/gms/internal/play_billing/zzgk;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgk;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/play_billing/zzhy;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzhy;->zza:Lcom/google/android/gms/internal/play_billing/zzhy;

    return-object v0
.end method

.method private zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/play_billing/zzib<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/play_billing/zzic;->zza:I

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    .line 3
    :cond_c
    sget v0, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    const-class v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 5
    :try_start_16
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/play_billing/zzhp;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_29} :catch_70

    .line 11
    invoke-interface {v4}, Lcom/google/android/gms/internal/play_billing/zzhp;->zzb()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzic;->zzm()Lcom/google/android/gms/internal/play_billing/zziq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgf;->zza()Lcom/google/android/gms/internal/play_billing/zzgd;

    move-result-object v1

    .line 14
    invoke-interface {v4}, Lcom/google/android/gms/internal/play_billing/zzhp;->zza()Lcom/google/android/gms/internal/play_billing/zzhr;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzc(Lcom/google/android/gms/internal/play_billing/zziq;Lcom/google/android/gms/internal/play_billing/zzgd;Lcom/google/android/gms/internal/play_billing/zzhr;)Lcom/google/android/gms/internal/play_billing/zzhv;

    move-result-object v0

    move-object v3, p1

    goto :goto_64

    .line 15
    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhx;->zza()Lcom/google/android/gms/internal/play_billing/zzhw;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhf;->zza()Lcom/google/android/gms/internal/play_billing/zzhe;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzic;->zzm()Lcom/google/android/gms/internal/play_billing/zziq;

    move-result-object v7

    .line 12
    invoke-interface {v4}, Lcom/google/android/gms/internal/play_billing/zzhp;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5a

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgf;->zza()Lcom/google/android/gms/internal/play_billing/zzgd;

    move-result-object v2

    :cond_5a
    move-object v8, v2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzho;->zza()Lcom/google/android/gms/internal/play_billing/zzhn;

    move-result-object v9

    move-object v3, p1

    .line 13
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/play_billing/zzhu;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzhp;Lcom/google/android/gms/internal/play_billing/zzhw;Lcom/google/android/gms/internal/play_billing/zzhe;Lcom/google/android/gms/internal/play_billing/zziq;Lcom/google/android/gms/internal/play_billing/zzgd;Lcom/google/android/gms/internal/play_billing/zzhn;)Lcom/google/android/gms/internal/play_billing/zzhu;

    move-result-object v0

    .line 14
    :goto_64
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb:Ljava/util/concurrent/ConcurrentMap;

    .line 15
    invoke-interface {p1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzib;

    if-eqz p1, :cond_6f

    return-object p1

    :cond_6f
    return-object v0

    :catch_70
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to get message info for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_87
    move-object v3, p1

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported message type: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p1

    return-object p1

    .line 3
    :cond_d
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzib;

    return-object v0
.end method
