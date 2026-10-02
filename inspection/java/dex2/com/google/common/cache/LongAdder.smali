.class final Lcom/google/common/cache/LongAdder;
.super Lcom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/google/common/cache/LongAddable;


# annotations
.annotation runtime Lcom/google/common/cache/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/google/common/cache/LongAdder;->busy:I

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 185
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 9

    .line 68
    iget-object v0, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-nez v0, :cond_e

    iget-wide v1, p0, Lcom/google/common/cache/LongAdder;->base:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v1

    if-nez v1, :cond_32

    .line 70
    :cond_e
    sget-object v1, Lcom/google/common/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    array-length v3, v0

    if-lt v3, v2, :cond_33

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_33

    iget-wide v2, v0, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long v4, v2, p1

    .line 74
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v2

    if-nez v2, :cond_32

    goto :goto_33

    :cond_32
    return-void

    :cond_33
    :goto_33
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/cache/LongAdder;->retryUpdate(J[IZ)V

    return-void
.end method

.method public decrement()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 180
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .line 174
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .registers 5

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public increment()V
    .registers 3

    const-wide/16 v0, 0x1

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->add(J)V

    return-void
.end method

.method public intValue()I
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 162
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LongAdder;->internalReset(J)V

    return-void
.end method

.method public sum()J
    .registers 8

    .line 98
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 99
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v2, :cond_14

    .line 101
    array-length v3, v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    .line 103
    aget-object v5, v2, v4

    if-eqz v5, :cond_11

    .line 104
    iget-wide v5, v5, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v5

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    return-wide v0
.end method

.method public sumThenReset()J
    .registers 11

    .line 129
    iget-wide v0, p0, Lcom/google/common/cache/LongAdder;->base:J

    .line 130
    iget-object v2, p0, Lcom/google/common/cache/LongAdder;->cells:[Lcom/google/common/cache/Striped64$Cell;

    const-wide/16 v3, 0x0

    .line 131
    iput-wide v3, p0, Lcom/google/common/cache/LongAdder;->base:J

    if-eqz v2, :cond_1a

    .line 133
    array-length v5, v2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_1a

    .line 135
    aget-object v7, v2, v6

    if-eqz v7, :cond_17

    .line 137
    iget-wide v8, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v8

    .line 138
    iput-wide v3, v7, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_1a
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
