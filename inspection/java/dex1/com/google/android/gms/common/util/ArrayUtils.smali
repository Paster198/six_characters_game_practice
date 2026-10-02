.class public final Lcom/google/android/gms/common/util/ArrayUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.9.0"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    move v0, v1

    move v2, v0

    .line 2
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_10

    .line 3
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4
    :cond_10
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 5
    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x1

    .line 6
    :goto_1a
    array-length v4, p0

    if-ge v3, v4, :cond_27

    .line 7
    aget-object v4, p0, v3

    .line 8
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_27
    return-object v0

    .line 9
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static varargs concatByteArrays([[B)[B
    .registers 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    move v0, v1

    move v2, v0

    .line 2
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_10

    .line 3
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4
    :cond_10
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 5
    aget-object v2, p0, v1

    array-length v2, v2

    const/4 v3, 0x1

    .line 6
    :goto_1a
    array-length v4, p0

    if-ge v3, v4, :cond_27

    .line 7
    aget-object v4, p0, v3

    .line 8
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_27
    return-object v0

    :cond_28
    new-array p0, v1, [B

    return-object p0
.end method

.method public static contains([II)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    move v1, v0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_10

    .line 1
    aget v2, p0, v1

    if-ne v2, p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v2, v1, :cond_18

    .line 2
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ltz v2, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-eqz p1, :cond_53

    array-length v1, p1

    if-nez v1, :cond_a

    goto :goto_53

    .line 1
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    array-length v3, p0

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_33

    move v1, v4

    move v5, v1

    :goto_1f
    if-ge v1, v3, :cond_47

    .line 6
    aget-object v6, p0, v1

    .line 7
    aget-object v7, p1, v4

    invoke-static {v7, v6}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    add-int/lit8 v7, v5, 0x1

    .line 8
    aput-object v6, v2, v5

    move v5, v7

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_33
    move v1, v4

    :goto_34
    if-ge v4, v3, :cond_46

    .line 3
    aget-object v5, p0, v4

    .line 4
    invoke-static {p1, v5}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    add-int/lit8 v6, v1, 0x1

    .line 5
    aput-object v5, v2, v1

    move v1, v6

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_46
    move v5, v1

    :cond_47
    if-nez v2, :cond_4a

    return-object v0

    .line 8
    :cond_4a
    array-length p0, v2

    if-ne v5, p0, :cond_4e

    return-object v2

    .line 9
    :cond_4e
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 0
    :cond_53
    :goto_53
    array-length p1, p0

    .line 1
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_11

    .line 3
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-object v1
.end method

.method public static toPrimitiveArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2b

    .line 2
    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v0, 0x1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    move v0, v3

    goto :goto_14

    :cond_2a
    return-object v1

    .line 1
    :cond_2b
    :goto_2b
    new-array p0, v0, [I

    return-object p0
.end method

.method public static toWrapperArray([I)[Ljava/lang/Integer;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    .line 1
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_15

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[D)V
    .registers 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_b
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[F)V
    .registers 5

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_b
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[I)V
    .registers 5

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_b
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[J)V
    .registers 6

    .line 10
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_b
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    .line 13
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_b
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Z)V
    .registers 5

    .line 16
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_13

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_b
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method

.method public static writeStringArray(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_1b

    if-eqz v1, :cond_b

    const-string v2, ","

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_b
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1b
    return-void
.end method
