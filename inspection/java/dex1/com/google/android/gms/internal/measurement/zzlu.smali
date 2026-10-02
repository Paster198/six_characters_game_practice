.class final Lcom/google/android/gms/internal/measurement/zzlu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzlu;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzoa;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlu;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzlu;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zznv;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zzf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zzf()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzop;ILjava/lang/Object;)I
    .registers 3

    shl-int/lit8 p0, p1, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    .line 2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzop;->zzj:Lcom/google/android/gms/internal/measurement/zzop;

    const/4 p1, 0x0

    if-nez p0, :cond_15

    .line 3
    check-cast p2, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    instance-of p0, p2, Lcom/google/android/gms/internal/measurement/zzkp;

    if-eqz p0, :cond_15

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkp;

    .line 6
    throw p1

    .line 4
    :cond_15
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)I
    .registers 7

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zze()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzd()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_39

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_38

    if-gtz v2, :cond_2f

    shl-int/lit8 p0, v1, 0x3

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result p0

    .line 13
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 10
    :cond_2f
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzop;->zza:Lcom/google/android/gms/internal/measurement/zzop;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    const/4 p0, 0x0

    throw p0

    :cond_38
    return v3

    :cond_39
    move p0, v3

    :goto_3a
    if-ge v3, v2, :cond_48

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Lcom/google/android/gms/internal/measurement/zzop;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_48
    return p0

    .line 14
    :cond_49
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzlu;->zza(Lcom/google/android/gms/internal/measurement/zzop;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/measurement/zzlu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlu;->zzb:Lcom/google/android/gms/internal/measurement/zzlu;

    return-object v0
.end method

.method private static zzi(Ljava/util/Map$Entry;)Z
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlt;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzc()Lcom/google/android/gms/internal/measurement/zzoq;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzoq;->zzi:Lcom/google/android/gms/internal/measurement/zzoq;

    if-ne v1, v2, :cond_39

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zze()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_20
    if-ge v2, v0, :cond_39

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlu;->zzj(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 8
    :cond_30
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zzj(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_39
    const/4 p0, 0x1

    return p0
.end method

.method private static zzj(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzni;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzni;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzni;->zzcD()Z

    move-result p0

    return p0

    :cond_b
    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/zzmr;

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzk(Ljava/util/Map$Entry;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlt;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzc()Lcom/google/android/gms/internal/measurement/zzoq;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzoq;->zzi:Lcom/google/android/gms/internal/measurement/zzoq;

    if-ne v2, v3, :cond_7a

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zze()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzd()Z

    move-result v2

    if-nez v2, :cond_7a

    instance-of v0, v1, Lcom/google/android/gms/internal/measurement/zzmr;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_53

    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzmr;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v3

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result p0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzms;->zza()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    :goto_4e
    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    .line 14
    :cond_53
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zznh;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v3

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result p0

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zznh;->zzcf()I

    move-result v1

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzz(I)I

    move-result v2

    goto :goto_4e

    .line 6
    :cond_7a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlu;->zzb(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final zzl(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzop;->zza:Lcom/google/android/gms/internal/measurement/zzop;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzoq;->zza:Lcom/google/android/gms/internal/measurement/zzoq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzop;->zza()Lcom/google/android/gms/internal/measurement/zzoq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoq;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_48

    .line 4
    :pswitch_19
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zznh;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzmr;

    if-eqz v0, :cond_48

    goto :goto_47

    :pswitch_22
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzmf;

    if-eqz v0, :cond_48

    goto :goto_47

    .line 6
    :pswitch_2b
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzld;

    if-nez v0, :cond_47

    .line 5
    instance-of v0, p1, [B

    if-eqz v0, :cond_48

    goto :goto_47

    .line 6
    :pswitch_34
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_45

    .line 7
    :pswitch_37
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_45

    .line 8
    :pswitch_3a
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_45

    .line 9
    :pswitch_3d
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_45

    .line 10
    :pswitch_40
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_45

    .line 11
    :pswitch_43
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_45
    if-eqz v0, :cond_48

    :cond_47
    :goto_47
    return-void

    .line 3
    :cond_48
    :goto_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlt;->zzb()Lcom/google/android/gms/internal/measurement/zzop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzop;->zza()Lcom/google/android/gms/internal/measurement/zzoq;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 15
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_2b
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzlu;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_25

    .line 2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzoa;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/zznw;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zznw;->zza()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/measurement/zzlu;->zzg(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 4
    :cond_25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzoa;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzlt;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzlu;->zzg(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_47
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzlu;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzlu;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlu;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzoa;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzc()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v2, v1, :cond_16

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzoa;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlu;->zzk(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlu;->zzk(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_1e

    :cond_30
    return v3
.end method

.method public final zze()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zzd:Z

    if-eqz v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmp;-><init>(Ljava/util/Iterator;)V

    return-object v1

    .line 4
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zzc:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_22

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzoa;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzmd;

    if-eqz v4, :cond_1f

    .line 3
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcr()V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4
    :cond_22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzmd;

    if-eqz v3, :cond_2a

    .line 6
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzmd;->zzcr()V

    goto :goto_2a

    .line 7
    :cond_44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zzc:Z

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzlt;->zze()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_27

    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_25

    .line 7
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zzlu;->zzl(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)V

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_25
    move-object p2, v1

    goto :goto_32

    .line 2
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlu;->zzl(Lcom/google/android/gms/internal/measurement/zzlt;Ljava/lang/Object;)V

    .line 9
    :goto_32
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzmr;

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zzd:Z

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzoa;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzh()Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzlu;->zza:Lcom/google/android/gms/internal/measurement/zzoa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_18

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzoa;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzlu;->zzi(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_15

    return v2

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoa;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzlu;->zzi(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_33
    const/4 v0, 0x1

    return v0
.end method
