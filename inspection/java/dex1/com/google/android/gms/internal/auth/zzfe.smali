.class public final Lcom/google/android/gms/internal/auth/zzfe;
.super Lcom/google/android/gms/internal/auth/zzdr;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/zzff;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/auth/zzff;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/auth/zzfe;


# instance fields
.field private final zzc:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzfe;->zzb:Lcom/google/android/gms/internal/auth/zzfe;

    sput-object v0, Lcom/google/android/gms/internal/auth/zzfe;->zza:Lcom/google/android/gms/internal/auth/zzff;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzdr;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzdr;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/auth/zzdr;-><init>(Z)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    return-void
.end method

.method private static zzh(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzef;

    if-eqz v0, :cond_14

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/auth/zzef;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzef;->zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_14
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/zzfa;->zzd([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    instance-of v0, p2, Lcom/google/android/gms/internal/auth/zzff;

    if-eqz v0, :cond_d

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/auth/zzff;

    invoke-interface {p2}, Lcom/google/android/gms/internal/auth/zzff;->zzg()Ljava/util/List;

    move-result-object p2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 4
    iget p2, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfe;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzdr;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    return-void
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzfe;->zzf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->modCount:I

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzfe;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzfe;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic zzd(I)Lcom/google/android/gms/internal/auth/zzez;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzfe;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/google/android/gms/internal/auth/zzfe;

    .line 5
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/auth/zzfe;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 1
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zze()Lcom/google/android/gms/internal/auth/zzff;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzdr;->zzc()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/auth/zzhe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/zzhe;-><init>(Lcom/google/android/gms/internal/auth/zzff;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public final zzf(I)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_d
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzef;

    if-eqz v1, :cond_25

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/auth/zzef;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/auth/zzfa;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzef;->zzl(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzef;->zzh()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v1

    .line 8
    :cond_25
    check-cast v0, [B

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzfa;->zzd([B)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzhn;->zzb([B)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-object v1
.end method

.method public final zzg()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzfe;->zzc:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
