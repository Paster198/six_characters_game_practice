.class final Lcom/google/android/gms/internal/gtm/zzwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwy;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzwi;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/gtm/zzwi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzwa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzwc;->zza:Lcom/google/android/gms/internal/gtm/zzwi;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwb;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzwi;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzus;->zza()Lcom/google/android/gms/internal/gtm/zzus;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_c
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzwi;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_24

    goto :goto_26

    .line 4
    :catch_24
    sget-object v2, Lcom/google/android/gms/internal/gtm/zzwc;->zza:Lcom/google/android/gms/internal/gtm/zzwi;

    :goto_26
    const/4 v3, 0x1

    .line 2
    aput-object v2, v1, v3

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>([Lcom/google/android/gms/internal/gtm/zzwi;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvi;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwc;->zzb:Lcom/google/android/gms/internal/gtm/zzwi;

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/gtm/zzwh;)Z
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzwh;->zzc()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwx;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/gtm/zzwx<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzwz;->zzG(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzwc;->zzb:Lcom/google/android/gms/internal/gtm/zzwi;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzwi;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzwh;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzwh;->zzb()Z

    move-result v0

    if-eqz v0, :cond_39

    const-class v0, Lcom/google/android/gms/internal/gtm/zzuz;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwz;->zzB()Lcom/google/android/gms/internal/gtm/zzxo;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzum;->zzb()Lcom/google/android/gms/internal/gtm/zzuk;

    move-result-object v0

    .line 27
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzwh;->zza()Lcom/google/android/gms/internal/gtm/zzwk;

    move-result-object v1

    .line 28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzwo;->zzc(Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzwo;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwz;->zzz()Lcom/google/android/gms/internal/gtm/zzxo;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzum;->zza()Lcom/google/android/gms/internal/gtm/zzuk;

    move-result-object v0

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/internal/gtm/zzwh;->zza()Lcom/google/android/gms/internal/gtm/zzwk;

    move-result-object v1

    .line 31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzwo;->zzc(Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzwo;

    move-result-object p1

    return-object p1

    :cond_39
    const-class v0, Lcom/google/android/gms/internal/gtm/zzuz;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzwc;->zzb(Lcom/google/android/gms/internal/gtm/zzwh;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwr;->zzb()Lcom/google/android/gms/internal/gtm/zzwq;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvy;->zze()Lcom/google/android/gms/internal/gtm/zzvy;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwz;->zzB()Lcom/google/android/gms/internal/gtm/zzxo;

    move-result-object v5

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzum;->zzb()Lcom/google/android/gms/internal/gtm/zzuk;

    move-result-object v6

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwg;->zzb()Lcom/google/android/gms/internal/gtm/zzwf;

    move-result-object v7

    move-object v1, p1

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/gtm/zzwn;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzwh;Lcom/google/android/gms/internal/gtm/zzwq;Lcom/google/android/gms/internal/gtm/zzvy;Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwf;)Lcom/google/android/gms/internal/gtm/zzwn;

    move-result-object p1

    return-object p1

    :cond_61
    move-object v1, p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwr;->zzb()Lcom/google/android/gms/internal/gtm/zzwq;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvy;->zze()Lcom/google/android/gms/internal/gtm/zzvy;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwz;->zzB()Lcom/google/android/gms/internal/gtm/zzxo;

    move-result-object v5

    const/4 v6, 0x0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwg;->zzb()Lcom/google/android/gms/internal/gtm/zzwf;

    move-result-object v7

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/gtm/zzwn;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzwh;Lcom/google/android/gms/internal/gtm/zzwq;Lcom/google/android/gms/internal/gtm/zzvy;Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwf;)Lcom/google/android/gms/internal/gtm/zzwn;

    move-result-object p1

    return-object p1

    :cond_78
    move-object v1, p1

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzwc;->zzb(Lcom/google/android/gms/internal/gtm/zzwh;)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwr;->zza()Lcom/google/android/gms/internal/gtm/zzwq;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvy;->zzd()Lcom/google/android/gms/internal/gtm/zzvy;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwz;->zzz()Lcom/google/android/gms/internal/gtm/zzxo;

    move-result-object v5

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzum;->zza()Lcom/google/android/gms/internal/gtm/zzuk;

    move-result-object v6

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwg;->zza()Lcom/google/android/gms/internal/gtm/zzwf;

    move-result-object v7

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/gtm/zzwn;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzwh;Lcom/google/android/gms/internal/gtm/zzwq;Lcom/google/android/gms/internal/gtm/zzvy;Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwf;)Lcom/google/android/gms/internal/gtm/zzwn;

    move-result-object p1

    return-object p1

    .line 21
    :cond_98
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwr;->zza()Lcom/google/android/gms/internal/gtm/zzwq;

    move-result-object v3

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvy;->zzd()Lcom/google/android/gms/internal/gtm/zzvy;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwz;->zzA()Lcom/google/android/gms/internal/gtm/zzxo;

    move-result-object v5

    const/4 v6, 0x0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwg;->zza()Lcom/google/android/gms/internal/gtm/zzwf;

    move-result-object v7

    .line 24
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/gtm/zzwn;->zzl(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzwh;Lcom/google/android/gms/internal/gtm/zzwq;Lcom/google/android/gms/internal/gtm/zzvy;Lcom/google/android/gms/internal/gtm/zzxo;Lcom/google/android/gms/internal/gtm/zzuk;Lcom/google/android/gms/internal/gtm/zzwf;)Lcom/google/android/gms/internal/gtm/zzwn;

    move-result-object p1

    return-object p1
.end method
