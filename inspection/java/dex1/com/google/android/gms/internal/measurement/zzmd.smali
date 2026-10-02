.class public abstract Lcom/google/android/gms/internal/measurement/zzmd;
.super Lcom/google/android/gms/internal/measurement/zzko;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzmd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzlz<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzko<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/measurement/zzof;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzko;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzof;->zzc()Lcom/google/android/gms/internal/measurement/zzof;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzc:Lcom/google/android/gms/internal/measurement/zzof;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zzns;)I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static zzci(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzmd;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmd;

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

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmd;

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
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzol;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmd;

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmd;

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

.method protected static zzck()Lcom/google/android/gms/internal/measurement/zzmh;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzme;->zzf()Lcom/google/android/gms/internal/measurement/zzme;

    move-result-object v0

    return-object v0
.end method

.method protected static zzcl()Lcom/google/android/gms/internal/measurement/zzmi;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmw;->zzf()Lcom/google/android/gms/internal/measurement/zzmw;

    move-result-object v0

    return-object v0
.end method

.method protected static zzcm(Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmi;
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzmi;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zze(I)Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object p0

    return-object p0
.end method

.method protected static zzcn()Lcom/google/android/gms/internal/measurement/zzmj;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznq;->zze()Lcom/google/android/gms/internal/measurement/zznq;

    move-result-object v0

    return-object v0
.end method

.method protected static zzco(Lcom/google/android/gms/internal/measurement/zzmj;)Lcom/google/android/gms/internal/measurement/zzmj;
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzmj;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmj;->zzd(I)Lcom/google/android/gms/internal/measurement/zzmj;

    move-result-object p0

    return-object p0
.end method

.method static varargs zzcp(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method protected static zzcq(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zznr;-><init>(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzct(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzmd;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcs()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmd;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic zzcv(Lcom/google/android/gms/internal/measurement/zzmd;Z)Z
    .registers 2

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzd(Lcom/google/android/gms/internal/measurement/zzmd;Z)Z

    move-result p0

    return p0
.end method

.method private static final zzd(Lcom/google/android/gms/internal/measurement/zzmd;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v2

    .line 2
    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zzk(Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return v2
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

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzns;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcw()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zza:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzce()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zza:I

    :cond_10
    return v0

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzce()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zznj;->zza(Lcom/google/android/gms/internal/measurement/zznh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzcA()Lcom/google/android/gms/internal/measurement/zzng;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlz;

    return-object v0
.end method

.method public final zzcB(Lcom/google/android/gms/internal/measurement/zzlk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzll;->zza(Lcom/google/android/gms/internal/measurement/zzlk;)Lcom/google/android/gms/internal/measurement/zzll;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzns;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzor;)V

    return-void
.end method

.method public final synthetic zzcC()Lcom/google/android/gms/internal/measurement/zznh;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    return-object v0
.end method

.method public final zzcD()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzd(Lcom/google/android/gms/internal/measurement/zzmd;Z)Z

    move-result v0

    return v0
.end method

.method final zzca(Lcom/google/android/gms/internal/measurement/zzns;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcw()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_21

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zza(Ljava/lang/Object;)I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4a

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zza(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_38

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

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

.method final zzce()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzcf()I
    .registers 5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcw()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzmd;->zzc(Lcom/google/android/gms/internal/measurement/zzns;)I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2b

    return v0

    .line 1
    :cond_2b
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzmd;->zzc(Lcom/google/android/gms/internal/measurement/zzns;)I

    move-result v0

    if-ltz v0, :cond_3a

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

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

.method protected final zzcg()Lcom/google/android/gms/internal/measurement/zzlz;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlz;

    return-object v0
.end method

.method public final zzch()Lcom/google/android/gms/internal/measurement/zzlz;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzlz;->zzaY(Lcom/google/android/gms/internal/measurement/zzmd;)Lcom/google/android/gms/internal/measurement/zzlz;

    return-object v0
.end method

.method final zzcj()Lcom/google/android/gms/internal/measurement/zzmd;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzmd;->zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmd;

    return-object v0
.end method

.method protected final zzcr()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznp;->zza()Lcom/google/android/gms/internal/measurement/zznp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznp;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzns;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/zzns;->zzf(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcs()V

    return-void
.end method

.method final zzcs()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    return-void
.end method

.method final zzcu(I)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    return-void
.end method

.method final zzcw()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmd;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
