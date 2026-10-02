.class public abstract Lcom/google/android/gms/internal/measurement/zzkn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@22.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzng;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzko<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzkn<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzng;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Ljava/util/List;I)V
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1c
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_24

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1c

    .line 2
    :cond_24
    new-instance p0, Ljava/lang/NullPointerException;

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static zzaW(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:[B

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzmt;

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzmt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzmt;->zza()Ljava/util/List;

    move-result-object p0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzmt;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_51

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmt;->size()I

    move-result p0

    sub-int/2addr p0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmt;->size()I

    move-result v1

    :goto_43
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_4b

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmt;->remove(I)Ljava/lang/Object;

    goto :goto_43

    .line 19
    :cond_4b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_51
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzld;

    if-eqz v3, :cond_5b

    .line 6
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzld;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmt;->zzb()V

    goto :goto_1b

    .line 7
    :cond_5b
    instance-of v3, v2, [B

    if-eqz v3, :cond_69

    .line 8
    check-cast v2, [B

    array-length v3, v2

    .line 9
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzld;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzld;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmt;->zzb()V

    goto :goto_1b

    .line 10
    :cond_69
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/zzmt;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_6f
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzno;

    if-nez v0, :cond_d8

    .line 15
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_9d

    .line 16
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 17
    instance-of v2, p1, Ljava/util/ArrayList;

    if-eqz v2, :cond_8e

    .line 18
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_9d

    .line 24
    :cond_8e
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/zznq;

    if-eqz v2, :cond_9d

    .line 19
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zznq;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zznq;->zzf(I)V

    .line 20
    :cond_9d
    :goto_9d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 21
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_c0

    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_c0

    .line 25
    check-cast p0, Ljava/util/List;

    .line 26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_af
    if-ge v1, v2, :cond_d7

    .line 27
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_ba

    .line 28
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/util/List;I)V

    .line 29
    :cond_ba
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    .line 22
    :cond_c0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d3

    .line 23
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzkn;->zza(Ljava/util/List;I)V

    .line 24
    :cond_d3
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    :cond_d7
    return-void

    .line 30
    :cond_d8
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkn;->zzaR()Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzaR()Lcom/google/android/gms/internal/measurement/zzkn;
.end method

.method public zzaS([BII)Lcom/google/android/gms/internal/measurement/zzkn;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public zzaT([BIILcom/google/android/gms/internal/measurement/zzlp;)Lcom/google/android/gms/internal/measurement/zzkn;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic zzaU([B)Lcom/google/android/gms/internal/measurement/zzng;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzkn;->zzaS([BII)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzaV([BLcom/google/android/gms/internal/measurement/zzlp;)Lcom/google/android/gms/internal/measurement/zzng;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzmm;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzkn;->zzaT([BIILcom/google/android/gms/internal/measurement/zzlp;)Lcom/google/android/gms/internal/measurement/zzkn;

    move-result-object p1

    return-object p1
.end method
