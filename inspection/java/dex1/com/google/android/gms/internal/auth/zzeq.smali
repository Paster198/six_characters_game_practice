.class final Lcom/google/android/gms/internal/auth/zzeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/zzeq;


# instance fields
.field final zza:Lcom/google/android/gms/internal/auth/zzgv;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzeq;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzeq;->zzb:Lcom/google/android/gms/internal/auth/zzeq;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgl;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzgl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/auth/zzgl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/auth/zzgl;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeq;->zzb()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzeq;->zzb()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/auth/zzeq;
    .registers 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method private static final zzd(Lcom/google/android/gms/internal/auth/zzep;Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzep;->zzb()Lcom/google/android/gms/internal/auth/zzho;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/auth/zzfa;->zzd:[B

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/auth/zzho;->zza:Lcom/google/android/gms/internal/auth/zzho;

    sget-object v1, Lcom/google/android/gms/internal/auth/zzhp;->zza:Lcom/google/android/gms/internal/auth/zzhp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzho;->zza()Lcom/google/android/gms/internal/auth/zzhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhp;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_48

    .line 4
    :pswitch_19
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzfx;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzfc;

    if-eqz v0, :cond_48

    goto :goto_47

    :pswitch_22
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzex;

    if-eqz v0, :cond_48

    goto :goto_47

    .line 6
    :pswitch_2b
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzef;

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
    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzep;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzep;->zzb()Lcom/google/android/gms/internal/auth/zzho;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzho;->zza()Lcom/google/android/gms/internal/auth/zzhp;

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
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzeq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzeq;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzgv;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/auth/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/auth/zzep;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/auth/zzeq;->zzc(Lcom/google/android/gms/internal/auth/zzep;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzgv;->zzc()Ljava/lang/Iterable;

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

    check-cast v3, Lcom/google/android/gms/internal/auth/zzep;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/auth/zzeq;->zzc(Lcom/google/android/gms/internal/auth/zzep;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/auth/zzeq;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzeq;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeq;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgv;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzb()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Z

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzgv;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/auth/zzgv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/auth/zzev;

    if-eqz v2, :cond_24

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/zzev;->zzi()V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgv;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Z

    :cond_2f
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/auth/zzep;Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/auth/zzep;->zzc()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_27

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, p2, :cond_25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/auth/zzeq;->zzd(Lcom/google/android/gms/internal/auth/zzep;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_25
    move-object p2, v0

    goto :goto_32

    .line 2
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2f
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/auth/zzeq;->zzd(Lcom/google/android/gms/internal/auth/zzep;Ljava/lang/Object;)V

    .line 6
    :goto_32
    instance-of v0, p2, Lcom/google/android/gms/internal/auth/zzfc;

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzd:Z

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zza:Lcom/google/android/gms/internal/auth/zzgv;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
