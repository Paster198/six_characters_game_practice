.class public abstract Lcom/google/android/gms/internal/gtm/zzuz;
.super Lcom/google/android/gms/internal/gtm/zzsh;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzut<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/gtm/zzsh<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/gtm/zzuz<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/gtm/zzxp;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzuz;->zza:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzsh;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzxp;->zzc()Lcom/google/android/gms/internal/gtm/zzxp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzc:Lcom/google/android/gms/internal/gtm/zzxp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzd:I

    return-void
.end method

.method public static zzaa(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzwk;Lcom/google/android/gms/internal/gtm/zzvc;ILcom/google/android/gms/internal/gtm/zzye;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzux;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/gtm/zzwk;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/android/gms/internal/gtm/zzwk;",
            "Lcom/google/android/gms/internal/gtm/zzvc;",
            "I",
            "Lcom/google/android/gms/internal/gtm/zzye;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/gtm/zzux<",
            "TContainingType;TType;>;"
        }
    .end annotation

    move-object v1, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzux;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuw;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p4

    move-object v3, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzuw;-><init>(Lcom/google/android/gms/internal/gtm/zzvc;ILcom/google/android/gms/internal/gtm/zzye;ZZ)V

    move-object p5, p6

    move-object p4, v0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/gtm/zzux;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzwk;Lcom/google/android/gms/internal/gtm/zzuw;Ljava/lang/Class;)V

    return-object p0
.end method

.method static zzab(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuz;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuz;->zza:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzuz;

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

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzuz;

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
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzxy;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzuz;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzuz;

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

.method protected static zzac(Lcom/google/android/gms/internal/gtm/zzuz;Ljava/io/InputStream;Lcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuz<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzth;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzth;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/gtm/zztg;)V

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzuz;

    .line 4
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object p1

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zztk;->zzp(Lcom/google/android/gms/internal/gtm/zztj;)Lcom/google/android/gms/internal/gtm/zztk;

    move-result-object v0

    invoke-interface {p1, p0, v0, p2}, Lcom/google/android/gms/internal/gtm/zzwx;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzww;Lcom/google/android/gms/internal/gtm/zzuj;)V

    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V
    :try_end_25
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_f .. :try_end_25} :catch_53
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_25} :catch_3a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_25} :catch_29

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzc(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzuz;

    return-object p0

    :catch_29
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzvk;

    if-eqz p1, :cond_39

    .line 9
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzvk;

    throw p0

    .line 10
    :cond_39
    throw p0

    :catch_3a
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/gtm/zzvk;

    if-eqz p2, :cond_4a

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzvk;

    throw p0

    .line 10
    :cond_4a
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzvk;

    .line 13
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/gtm/zzvk;->zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;

    throw p2

    :catch_53
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzl()Z

    move-result p2

    if-eqz p2, :cond_60

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzvk;

    .line 14
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 15
    :cond_60
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzvk;->zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;

    throw p1
.end method

.method protected static zzad(Lcom/google/android/gms/internal/gtm/zzuz;[BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuz<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzae(Lcom/google/android/gms/internal/gtm/zzuz;[BIILcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzc(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzuz;

    return-object p0
.end method

.method static zzae(Lcom/google/android/gms/internal/gtm/zzuz;[BIILcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuz<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/gtm/zzuj;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    const/4 p2, 0x4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzuz;

    .line 2
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object p0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzsl;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/gtm/zzsl;-><init>(Lcom/google/android/gms/internal/gtm/zzuj;)V

    const/4 v3, 0x0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzwx;->zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/gtm/zzsl;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzf(Ljava/lang/Object;)V

    .line 6
    iget p0, v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzb:I

    if-nez p0, :cond_28

    return-object v1

    :cond_28
    new-instance p0, Ljava/lang/RuntimeException;

    .line 7
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_2e
    .catch Lcom/google/android/gms/internal/gtm/zzvk; {:try_start_9 .. :try_end_2e} :catch_50
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2e} :catch_36
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_2e} :catch_2e

    .line 8
    :catch_2e
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvk;->zzj()Lcom/google/android/gms/internal/gtm/zzvk;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;

    throw p0

    :catch_36
    move-exception v0

    move-object p0, v0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzvk;

    if-eqz p1, :cond_47

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzvk;

    throw p0

    .line 8
    :cond_47
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzvk;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;

    throw p1

    :catch_50
    move-exception v0

    move-object p0, v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzvk;->zzl()Z

    move-result p1

    if-eqz p1, :cond_5e

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzvk;

    .line 12
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    .line 13
    :cond_5e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzvk;->zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;

    throw p0
.end method

.method protected static zzaf()Lcom/google/android/gms/internal/gtm/zzve;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzva;->zzf()Lcom/google/android/gms/internal/gtm/zzva;

    move-result-object v0

    return-object v0
.end method

.method protected static zzag()Lcom/google/android/gms/internal/gtm/zzvh;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zze()Lcom/google/android/gms/internal/gtm/zzwu;

    move-result-object v0

    return-object v0
.end method

.method protected static zzah(Lcom/google/android/gms/internal/gtm/zzvh;)Lcom/google/android/gms/internal/gtm/zzvh;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzvh;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_a

    :cond_9
    add-int/2addr v0, v0

    .line 2
    :goto_a
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/gtm/zzvh;->zzd(I)Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object p0

    return-object p0
.end method

.method static varargs zzai(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method protected static zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwv;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzwv;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuz;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuz;->zza:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzuz;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/gtm/zzuz<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    if-eqz p0, :cond_1b

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzas()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1b

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxn;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzxn;-><init>(Lcom/google/android/gms/internal/gtm/zzwk;)V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzvk;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gtm/zzvk;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/gtm/zzvk;->zzh(Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzvk;

    throw v1

    :cond_1b
    :goto_1b
    return-object p0
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

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 1
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuz;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzj(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzb:I

    if-eqz v0, :cond_5

    return v0

    .line 1
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzwx;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzb:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzwm;->zza(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzd:I

    return v0
.end method

.method final zzT(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzd:I

    return-void
.end method

.method public final zzX()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/gtm/zzwx;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzuz;->zzd:I

    :cond_17
    return v0
.end method

.method protected final zzY()Lcom/google/android/gms/internal/gtm/zzut;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/gtm/zzuz<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/gtm/zzut<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzut;

    return-object v0
.end method

.method public final zzZ()Lcom/google/android/gms/internal/gtm/zzut;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzut;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzz(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzut;

    return-object v0
.end method

.method public final bridge synthetic zzao()Lcom/google/android/gms/internal/gtm/zzwj;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzut;

    return-object v0
.end method

.method public final bridge synthetic zzap()Lcom/google/android/gms/internal/gtm/zzwj;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzut;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzut;->zzz(Lcom/google/android/gms/internal/gtm/zzuz;)Lcom/google/android/gms/internal/gtm/zzut;

    return-object v0
.end method

.method public final zzaq(Lcom/google/android/gms/internal/gtm/zzto;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztp;->zza(Lcom/google/android/gms/internal/gtm/zzto;)Lcom/google/android/gms/internal/gtm/zztp;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzwx;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zztp;)V

    return-void
.end method

.method public final bridge synthetic zzar()Lcom/google/android/gms/internal/gtm/zzwk;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuz;

    return-object v0
.end method

.method public final zzas()Z
    .registers 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_15

    return v1

    :cond_15
    if-nez v3, :cond_19

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwt;->zza()Lcom/google/android/gms/internal/gtm/zzwt;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gtm/zzwt;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/google/android/gms/internal/gtm/zzwx;->zzk(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_34

    if-eq v1, v3, :cond_2f

    move-object v0, v2

    goto :goto_30

    :cond_2f
    move-object v0, p0

    :goto_30
    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return v3
.end method

.method protected abstract zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
