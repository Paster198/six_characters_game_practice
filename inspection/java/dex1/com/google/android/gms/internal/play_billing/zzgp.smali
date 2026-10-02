.class public abstract Lcom/google/android/gms/internal/play_billing/zzgp;
.super Lcom/google/android/gms/internal/play_billing/zzfa;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzgp<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzgl<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_billing/zzfa<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/play_billing/zzir;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfa;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzir;->zzc()Lcom/google/android/gms/internal/play_billing/zzir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc:Lcom/google/android/gms/internal/play_billing/zzir;

    return-void
.end method

.method protected static zzB(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzgp;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzA()V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z
    .registers 2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result p0

    return p0
.end method

.method private final zza(Lcom/google/android/gms/internal/play_billing/zzib;)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static zzb(Lcom/google/android/gms/internal/play_billing/zzgp;[BIILcom/google/android/gms/internal/play_billing/zzgc;)Lcom/google/android/gms/internal/play_billing/zzgp;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    if-nez p3, :cond_3

    return-object p0

    .line 1
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzs()Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object v1

    .line 2
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object p0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/play_billing/zzfd;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/play_billing/zzfd;-><init>(Lcom/google/android/gms/internal/play_billing/zzgc;)V

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/zzib;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzfd;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzib;->zzf(Ljava/lang/Object;)V
    :try_end_21
    .catch Lcom/google/android/gms/internal/play_billing/zzhb; {:try_start_7 .. :try_end_21} :catch_48
    .catch Lcom/google/android/gms/internal/play_billing/zzip; {:try_start_7 .. :try_end_21} :catch_41
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_21} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_21} :catch_22

    return-object v1

    .line 9
    :catch_22
    new-instance p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/play_billing/zzhb;

    if-eqz p1, :cond_3b

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhb;

    throw p0

    .line 11
    :cond_3b
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhb;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzhb;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_41
    move-exception v0

    move-object p0, v0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzip;->zza()Lcom/google/android/gms/internal/play_billing/zzhb;

    move-result-object p0

    throw p0

    :catch_48
    move-exception v0

    move-object p0, v0

    .line 12
    throw p0
.end method

.method private static final zzc(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_f

    return v0

    :cond_f
    if-nez v2, :cond_13

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v2

    .line 2
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzk(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_2e

    if-eq v0, v2, :cond_29

    move-object p1, v1

    goto :goto_2a

    :cond_29
    move-object p1, p0

    :goto_2a
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return v2
.end method

.method static zzr(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzgp;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-nez v1, :cond_26

    .line 2
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1d

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    goto :goto_26

    :catch_1d
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    :goto_26
    if-nez v1, :cond_42

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzix;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzgp;

    if-eqz v1, :cond_3c

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_42
    return-object v1
.end method

.method protected static zzt(Lcom/google/android/gms/internal/play_billing/zzgp;[B)Lcom/google/android/gms/internal/play_billing/zzgp;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzhb;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sget v1, Lcom/google/android/gms/internal/play_billing/zzgc;->zzb:I

    .line 3
    sget v1, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:I

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzgc;->zza:Lcom/google/android/gms/internal/play_billing/zzgc;

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzb(Lcom/google/android/gms/internal/play_billing/zzgp;[BIILcom/google/android/gms/internal/play_billing/zzgc;)Lcom/google/android/gms/internal/play_billing/zzgp;

    move-result-object p0

    if-eqz p0, :cond_20

    const/4 p1, 0x1

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_20

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzip;

    .line 6
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzip;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzip;->zza()Lcom/google/android/gms/internal/play_billing/zzhb;

    move-result-object p0

    .line 8
    throw p0

    :cond_20
    :goto_20
    return-object p0
.end method

.method protected static zzu()Lcom/google/android/gms/internal/play_billing/zzgt;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgq;->zzf()Lcom/google/android/gms/internal/play_billing/zzgq;

    move-result-object v0

    return-object v0
.end method

.method protected static zzv()Lcom/google/android/gms/internal/play_billing/zzgu;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhz;->zze()Lcom/google/android/gms/internal/play_billing/zzhz;

    move-result-object v0

    return-object v0
.end method

.method static varargs zzx(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzy(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzia;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzia;-><init>(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzgp;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzib;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zza:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzm()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zza:I

    :cond_10
    return v0

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzm()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzht;->zza(Lcom/google/android/gms/internal/play_billing/zzhr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzA()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return-void
.end method

.method final zzC(I)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zza(Lcom/google/android/gms/internal/play_billing/zzfx;)Lcom/google/android/gms/internal/play_billing/zzfy;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzib;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzji;)V

    return-void
.end method

.method final zzF()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_21

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    return p1

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4a

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_38

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return p1

    .line 3
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    return v0
.end method

.method public final synthetic zzl()Lcom/google/android/gms/internal/play_billing/zzhr;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object v0
.end method

.method final zzm()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzn()I
    .registers 5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzF()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zza(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v0

    if-ltz v0, :cond_10

    return v0

    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2b

    return v0

    .line 1
    :cond_2b
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzgp;->zza(Lcom/google/android/gms/internal/play_billing/zzib;)I

    move-result v0

    if-ltz v0, :cond_3a

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd:I

    return v0

    .line 1
    :cond_3a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final zzo()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzc(Lcom/google/android/gms/internal/play_billing/zzgp;Z)Z

    move-result v0

    return v0
.end method

.method protected final zzp()Lcom/google/android/gms/internal/play_billing/zzgl;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/play_billing/zzgl;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzgl;->zzh(Lcom/google/android/gms/internal/play_billing/zzgp;)Lcom/google/android/gms/internal/play_billing/zzgl;

    return-object v0
.end method

.method final zzs()Lcom/google/android/gms/internal/play_billing/zzgp;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgp;

    return-object v0
.end method

.method public final synthetic zzw()Lcom/google/android/gms/internal/play_billing/zzhq;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzd(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzgl;

    return-object v0
.end method

.method protected final zzz()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zza()Lcom/google/android/gms/internal/play_billing/zzhy;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzib;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzf(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzgp;->zzA()V

    return-void
.end method
