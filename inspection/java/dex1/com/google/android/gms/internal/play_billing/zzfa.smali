.class public abstract Lcom/google/android/gms/internal/play_billing/zzfa;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzfa<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzez<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzhr;"
    }
.end annotation


# instance fields
.field protected transient zza:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfa;->zza:I

    return-void
.end method

.method protected static zzk(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 6

    .line 1
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    .line 3
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    goto :goto_26

    .line 9
    :cond_17
    instance-of v1, p1, Lcom/google/android/gms/internal/play_billing/zzhz;

    if-eqz v1, :cond_26

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhz;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzf(I)V

    .line 5
    :cond_26
    :goto_26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 6
    check-cast p0, Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_69

    .line 8
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_63

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is null."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_55
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_5d

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_55

    .line 9
    :cond_5d
    new-instance p1, Ljava/lang/NullPointerException;

    .line 13
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_63
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_69
    return-void
.end method


# virtual methods
.method public final zzQ()[B
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzn()I

    move-result v0

    new-array v1, v0, [B

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfu;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;-><init>([BII)V

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzA()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Serializing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method zzi(Lcom/google/android/gms/internal/play_billing/zzib;)I
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzj()Lcom/google/android/gms/internal/play_billing/zzfp;
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzn()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzfp;->zza:Lcom/google/android/gms/internal/play_billing/zzfp;

    .line 2
    new-array v1, v0, [B

    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzfu;

    const/4 v3, 0x0

    .line 3
    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/zzfu;-><init>([BII)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/zzfa;->zzD(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzfl;->zza(Lcom/google/android/gms/internal/play_billing/zzfx;[B)Lcom/google/android/gms/internal/play_billing/zzfp;

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Serializing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
