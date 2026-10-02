.class final Lcom/google/android/gms/internal/gtm/zzuo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@17.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/gtm/zzun<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzuo;


# instance fields
.field final zza:Lcom/google/android/gms/internal/gtm/zzxk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gtm/zzxk<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuo;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzuo;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzuo;->zzb:Lcom/google/android/gms/internal/gtm/zzuo;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxa;

    const/16 v1, 0x10

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzxa;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzxa;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzxa;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzg()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzg()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzun<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzd()Lcom/google/android/gms/internal/gtm/zzye;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zza()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzC(I)I

    move-result p0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzye;->zzj:Lcom/google/android/gms/internal/gtm/zzye;

    if-ne v0, v1, :cond_1a

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzvi;->zzi(Lcom/google/android/gms/internal/gtm/zzwk;)Z

    add-int/2addr p0, p0

    .line 7
    :cond_1a
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzyf;->zza:Lcom/google/android/gms/internal/gtm/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzye;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_108

    .line 33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :pswitch_2e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p1, 0x3f

    shr-long/2addr v0, p1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v1

    goto/16 :goto_106

    .line 12
    :pswitch_40
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int v0, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v1

    goto/16 :goto_106

    .line 13
    :pswitch_51
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_105

    .line 14
    :pswitch_58
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_106

    .line 8
    :pswitch_5f
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvb;

    if-eqz v0, :cond_6f

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzvb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzvb;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzx(I)I

    move-result v1

    goto/16 :goto_106

    .line 10
    :cond_6f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzx(I)I

    move-result v1

    goto/16 :goto_106

    .line 15
    :pswitch_7b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v1

    goto/16 :goto_106

    .line 16
    :pswitch_87
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zztd;

    if-eqz v0, :cond_93

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/gtm/zztd;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzu(Lcom/google/android/gms/internal/gtm/zztd;)I

    move-result v1

    goto/16 :goto_106

    .line 18
    :cond_93
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzt([B)I

    move-result v1

    goto/16 :goto_106

    .line 22
    :pswitch_9b
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvp;

    if-eqz v0, :cond_a6

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzvp;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzy(Lcom/google/android/gms/internal/gtm/zzvq;)I

    move-result v1

    goto :goto_106

    .line 24
    :cond_a6
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzz(Lcom/google/android/gms/internal/gtm/zzwk;)I

    move-result v1

    goto :goto_106

    .line 25
    :pswitch_ad
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzw(Lcom/google/android/gms/internal/gtm/zzwk;)I

    move-result v1

    goto :goto_106

    .line 19
    :pswitch_b4
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zztd;

    if-eqz v0, :cond_bf

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/gtm/zztd;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzu(Lcom/google/android/gms/internal/gtm/zztd;)I

    move-result v1

    goto :goto_106

    .line 21
    :cond_bf
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzB(Ljava/lang/String;)I

    move-result v1

    goto :goto_106

    .line 26
    :pswitch_c6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v1, 0x1

    goto :goto_106

    .line 27
    :pswitch_cd
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_106

    .line 28
    :pswitch_d3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto :goto_105

    .line 29
    :pswitch_d9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzto;->zzx(I)I

    move-result v1

    goto :goto_106

    .line 30
    :pswitch_e4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v1

    goto :goto_106

    .line 31
    :pswitch_ef
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzE(J)I

    move-result v1

    goto :goto_106

    .line 32
    :pswitch_fa
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    goto :goto_106

    .line 33
    :pswitch_100
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    :goto_105
    move v1, v2

    :goto_106
    add-int/2addr p0, v1

    return p0

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_100
        :pswitch_fa
        :pswitch_ef
        :pswitch_e4
        :pswitch_d9
        :pswitch_d3
        :pswitch_cd
        :pswitch_c6
        :pswitch_b4
        :pswitch_ad
        :pswitch_9b
        :pswitch_87
        :pswitch_7b
        :pswitch_5f
        :pswitch_58
        :pswitch_51
        :pswitch_40
        :pswitch_2e
    .end packed-switch
.end method

.method public static zzd()Lcom/google/android/gms/internal/gtm/zzuo;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/gtm/zzun<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/gtm/zzuo<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuo;->zzb:Lcom/google/android/gms/internal/gtm/zzuo;

    return-object v0
.end method

.method private static zzl(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzwp;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzwp;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzwp;->zzc()Lcom/google/android/gms/internal/gtm/zzwp;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    instance-of v0, p0, [B

    if-eqz v0, :cond_19

    .line 4
    check-cast p0, [B

    .line 5
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_19
    return-object p0
.end method

.method private final zzm(Ljava/util/Map$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzun;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzvp;

    if-nez v1, :cond_55

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zze()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzyf;->zzi:Lcom/google/android/gms/internal/gtm/zzyf;

    if-ne v1, v2, :cond_4b

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(Lcom/google/android/gms/internal/gtm/zzun;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/gtm/zzxk;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_29
    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzwp;

    if-eqz v2, :cond_36

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzwp;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwp;

    .line 10
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzc(Lcom/google/android/gms/internal/gtm/zzwp;Lcom/google/android/gms/internal/gtm/zzwp;)Lcom/google/android/gms/internal/gtm/zzwp;

    move-result-object p1

    goto :goto_45

    .line 11
    :cond_36
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzwk;

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzwk;->zzap()Lcom/google/android/gms/internal/gtm/zzwj;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzb(Lcom/google/android/gms/internal/gtm/zzwj;Lcom/google/android/gms/internal/gtm/zzwk;)Lcom/google/android/gms/internal/gtm/zzwj;

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/gtm/zzwj;->zzC()Lcom/google/android/gms/internal/gtm/zzwk;

    move-result-object p1

    .line 10
    :goto_45
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 14
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/gtm/zzxk;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 17
    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/gtm/zzxk;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_55
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzvp;

    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method private static zzn(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/gtm/zzun<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzun;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zze()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzyf;->zzi:Lcom/google/android/gms/internal/gtm/zzyf;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_31

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzwk;

    if-eqz v0, :cond_24

    .line 6
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzwk;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzwk;->zzas()Z

    move-result p0

    if-nez p0, :cond_31

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_24
    instance-of p0, p0, Lcom/google/android/gms/internal/gtm/zzvp;

    if-eqz p0, :cond_29

    return v3

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    return v3
.end method

.method private static final zzo(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzun;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zze()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzyf;->zzi:Lcom/google/android/gms/internal/gtm/zzyf;

    if-ne v2, v3, :cond_72

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzun;->zzf()Z

    .line 7
    instance-of v0, v1, Lcom/google/android/gms/internal/gtm/zzvp;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_4d

    .line 8
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzun;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzvp;

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v0

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzvq;->zza()I

    move-result v1

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result p0

    add-int/2addr v3, p0

    add-int/2addr v0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result p0

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    :goto_4b
    add-int/2addr v0, p0

    return v0

    .line 11
    :cond_4d
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzun;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzwk;

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result p0

    add-int/2addr v3, p0

    add-int/2addr v0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzto;->zzD(I)I

    move-result p0

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzto;->zzz(Lcom/google/android/gms/internal/gtm/zzwk;)I

    move-result v1

    add-int/2addr p0, v1

    goto :goto_4b

    .line 4
    :cond_72
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zza(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzc()Lcom/google/android/gms/internal/gtm/zzuo;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzuo;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzuo;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxk;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxk;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzxk;->zzb()I

    move-result v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzo(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzo(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzuo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/gtm/zzuo<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuo;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzuo;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzxk;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzxk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzun;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxk;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzun;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzi(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/gtm/zzuo;->zzd:Z

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/gtm/zzun;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzxk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzvp;

    if-nez v0, :cond_b

    return-object p1

    .line 3
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzvp;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzf()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzd:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxk;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzvo;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxk;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzc:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxk;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzc:Z

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gtm/zzuo<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxk;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzxk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzm(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_15
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzxk;->zzc()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zzm(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/gtm/zzun;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzg()Z

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzd()Lcom/google/android/gms/internal/gtm/zzye;

    move-result-object v0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzvi;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzye;->zza:Lcom/google/android/gms/internal/gtm/zzye;

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzyf;->zza:Lcom/google/android/gms/internal/gtm/zzyf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzye;->zza()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzyf;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    goto :goto_55

    .line 5
    :pswitch_1a
    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzwk;

    if-nez v0, :cond_48

    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzvp;

    if-eqz v0, :cond_55

    goto :goto_48

    .line 6
    :pswitch_23
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_48

    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzvb;

    if-eqz v0, :cond_55

    goto :goto_48

    .line 7
    :pswitch_2c
    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zztd;

    if-nez v0, :cond_48

    instance-of v0, p2, [B

    if-eqz v0, :cond_55

    goto :goto_48

    .line 8
    :pswitch_35
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_46

    .line 9
    :pswitch_38
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_46

    .line 10
    :pswitch_3b
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_46

    .line 11
    :pswitch_3e
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_46

    .line 12
    :pswitch_41
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_46

    .line 13
    :pswitch_44
    instance-of v0, p2, Ljava/lang/Integer;

    :goto_46
    if-eqz v0, :cond_55

    .line 14
    :cond_48
    :goto_48
    instance-of v0, p2, Lcom/google/android/gms/internal/gtm/zzvp;

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzd:Z

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzxk;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_55
    :goto_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzd()Lcom/google/android/gms/internal/gtm/zzye;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzye;->zza()Lcom/google/android/gms/internal/gtm/zzyf;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 19
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_2c
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzc:Z

    return v0
.end method

.method public final zzk()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzxk;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzxk;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzn(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzxk;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxk;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zzn(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method
