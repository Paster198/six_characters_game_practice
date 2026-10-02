.class public final Lcom/google/android/gms/internal/gtm/zzaa;
.super Lcom/google/android/gms/internal/gtm/zzuz;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzwl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuz<",
        "Lcom/google/android/gms/internal/gtm/zzaa;",
        "Lcom/google/android/gms/internal/gtm/zzz;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzwl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzaa;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzy;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzs;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzs;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzs;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Lcom/google/android/gms/internal/gtm/zzac;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzq;

.field private zzs:F

.field private zzt:Z

.field private zzu:Lcom/google/android/gms/internal/gtm/zzvh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzvh<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzv:I

.field private zzw:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaa;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzaa;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzak(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzuz;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuz;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzw:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuz;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzf:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuz;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzg:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzh:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzi:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzj:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzk:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzl:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaa;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzm:Lcom/google/android/gms/internal/gtm/zzvh;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzo:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzq:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuz;->zzag()Lcom/google/android/gms/internal/gtm/zzvh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzu:Lcom/google/android/gms/internal/gtm/zzvh;

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/gtm/zzz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuz;->zzY()Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzz;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/gtm/zzaa;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    return-object v0
.end method

.method public static zzl()Lcom/google/android/gms/internal/gtm/zzaa;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    return-object v0
.end method

.method public static zzm([BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzaa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/gtm/zzvk;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    .line 1
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzad(Lcom/google/android/gms/internal/gtm/zzuz;[BLcom/google/android/gms/internal/gtm/zzuj;)Lcom/google/android/gms/internal/gtm/zzuz;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzaa;

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzj:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->size()I

    move-result v0

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_67

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1b

    if-nez p2, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    const/4 v1, 0x1

    :goto_18
    iput-byte v1, v0, Lcom/google/android/gms/internal/gtm/zzaa;->zzw:B

    return-object v3

    .line 1
    :cond_1b
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    return-object v1

    .line 4
    :cond_1e
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzz;

    .line 3
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzz;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object v1

    .line 1
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaa;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzaa;-><init>()V

    return-object v1

    .line 0
    :cond_2a
    const-class v5, Lcom/google/android/gms/internal/gtm/zzak;

    const-class v7, Lcom/google/android/gms/internal/gtm/zzy;

    const-class v9, Lcom/google/android/gms/internal/gtm/zzs;

    const-class v11, Lcom/google/android/gms/internal/gtm/zzs;

    const-class v13, Lcom/google/android/gms/internal/gtm/zzs;

    const-class v15, Lcom/google/android/gms/internal/gtm/zzac;

    const-string v24, "zzt"

    const-string v25, "zzf"

    const-string v2, "zze"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v6, "zzi"

    const-string v8, "zzj"

    const-string v10, "zzk"

    const-string v12, "zzl"

    const-string v14, "zzm"

    const-string v16, "zzn"

    const-string v17, "zzo"

    const-string v18, "zzp"

    const-string v19, "zzq"

    const-string v20, "zzr"

    const-string v21, "zzs"

    const-string v22, "zzu"

    const-string v23, "zzv"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzaa;->zza:Lcom/google/android/gms/internal/gtm/zzaa;

    const-string v3, "\u0001\u0011\u0000\u0001\u0001\u0013\u0011\u0000\t\u0005\u0001\u001a\u0002\u041b\u0003\u041b\u0004\u041b\u0005\u041b\u0006\u041b\u0007\u001b\t\u1008\u0000\n\u1008\u0001\u000c\u1008\u0002\r\u1008\u0003\u000e\u1009\u0004\u000f\u1001\u0005\u0010\u001a\u0011\u1004\u0007\u0012\u1007\u0006\u0013\u001a"

    .line 2
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzaa;->zzaj(Lcom/google/android/gms/internal/gtm/zzwk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_67
    iget-byte v1, v0, Lcom/google/android/gms/internal/gtm/zzaa;->zzw:B

    .line 1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public final zzc()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzl:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzv:I

    return v0
.end method

.method public final zze()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzk:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->size()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzh:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzvh;->size()I

    move-result v0

    return v0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/gtm/zzs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzj:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzs;

    return-object p1
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/gtm/zzs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzl:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzs;

    return-object p1
.end method

.method public final zzi(I)Lcom/google/android/gms/internal/gtm/zzs;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzk:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzs;

    return-object p1
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/gtm/zzak;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzh:Lcom/google/android/gms/internal/gtm/zzvh;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzvh;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzak;

    return-object p1
.end method

.method public final zzo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzg:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method

.method public final zzq()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzi:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method

.method public final zzr()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzac;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzm:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method

.method public final zzs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/gtm/zzak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaa;->zzh:Lcom/google/android/gms/internal/gtm/zzvh;

    return-object v0
.end method
