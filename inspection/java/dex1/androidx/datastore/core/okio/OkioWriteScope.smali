.class public final Landroidx/datastore/core/okio/OkioWriteScope;
.super Landroidx/datastore/core/okio/OkioReadScope;
.source "OkioStorage.kt"

# interfaces
.implements Landroidx/datastore/core/WriteScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/okio/OkioReadScope<",
        "TT;>;",
        "Landroidx/datastore/core/WriteScope<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioWriteScope\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,230:1\n66#2:231\n52#2,5:232\n66#2:237\n52#2,21:238\n60#2,10:259\n57#2,2:269\n71#2,2:271\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioWriteScope\n*L\n214#1:231\n214#1:232,5\n215#1:237\n215#1:238,21\n214#1:259,10\n214#1:269,2\n214#1:271,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0096@\u00a2\u0006\u0002\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/datastore/core/okio/OkioWriteScope;",
        "T",
        "Landroidx/datastore/core/okio/OkioReadScope;",
        "Landroidx/datastore/core/WriteScope;",
        "fileSystem",
        "Lokio/FileSystem;",
        "path",
        "Lokio/Path;",
        "serializer",
        "Landroidx/datastore/core/okio/OkioSerializer;",
        "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V",
        "writeData",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "datastore-core-okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/core/okio/OkioReadScope;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V

    return-void
.end method


# virtual methods
.method public writeData(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;

    iget v1, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;

    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;-><init>(Landroidx/datastore/core/okio/OkioWriteScope;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 211
    iget v2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_41

    if-ne v2, v3, :cond_39

    iget-object p1, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object v1, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lokio/FileHandle;

    iget-object v0, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    :try_start_33
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_7d

    :catchall_37
    move-exception p2

    goto :goto_90

    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0}, Landroidx/datastore/core/okio/OkioWriteScope;->checkClose()V

    .line 213
    invoke-virtual {p0}, Landroidx/datastore/core/okio/OkioWriteScope;->getFileSystem()Lokio/FileSystem;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/datastore/core/okio/OkioWriteScope;->getPath()Lokio/Path;

    move-result-object v2

    invoke-virtual {p2, v2}, Lokio/FileSystem;->openReadWrite(Lokio/Path;)Lokio/FileHandle;

    move-result-object p2

    .line 214
    check-cast p2, Ljava/io/Closeable;

    .line 236
    :try_start_55
    move-object v2, p2

    check-cast v2, Lokio/FileHandle;

    const-wide/16 v5, 0x0

    .line 215
    invoke-static {v2, v5, v6, v3, v4}, Lokio/FileHandle;->sink$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;
    :try_end_64
    .catchall {:try_start_55 .. :try_end_64} :catchall_b0

    .line 242
    :try_start_64
    move-object v6, v5

    check-cast v6, Lokio/BufferedSink;

    .line 216
    invoke-virtual {p0}, Landroidx/datastore/core/okio/OkioWriteScope;->getSerializer()Landroidx/datastore/core/okio/OkioSerializer;

    move-result-object v7

    iput-object p2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/datastore/core/okio/OkioWriteScope$writeData$1;->label:I

    invoke-interface {v7, p1, v6, v0}, Landroidx/datastore/core/okio/OkioSerializer;->writeTo(Ljava/lang/Object;Lokio/BufferedSink;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_8c

    if-ne p1, v1, :cond_7a

    return-object v1

    :cond_7a
    move-object v0, p2

    move-object v1, v2

    move-object p1, v5

    .line 217
    :goto_7d
    :try_start_7d
    invoke-virtual {v1}, Lokio/FileHandle;->flush()V

    .line 218
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_37

    if-eqz p1, :cond_8a

    .line 247
    :try_start_84
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_8a

    :catchall_88
    move-exception p1

    goto :goto_a0

    :cond_8a
    :goto_8a
    move-object p1, v4

    goto :goto_a0

    :catchall_8c
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    move-object p1, v5

    :goto_90
    if-eqz p1, :cond_9e

    :try_start_92
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9e

    :catchall_96
    move-exception p1

    .line 237
    :try_start_97
    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_9e

    :catchall_9b
    move-exception p1

    move-object p2, v0

    goto :goto_b1

    :cond_9e
    :goto_9e
    move-object p1, p2

    move-object p2, v4

    :goto_a0
    if-nez p1, :cond_af

    .line 258
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 219
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a7
    .catchall {:try_start_97 .. :try_end_a7} :catchall_9b

    if-eqz v0, :cond_be

    .line 260
    :try_start_a9
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad

    goto :goto_be

    :catchall_ad
    move-exception v4

    goto :goto_be

    .line 257
    :cond_af
    :try_start_af
    throw p1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_9b

    :catchall_b0
    move-exception p1

    :goto_b1
    if-eqz p2, :cond_bb

    .line 260
    :try_start_b3
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b7

    goto :goto_bb

    :catchall_b7
    move-exception p2

    .line 231
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_bb
    :goto_bb
    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    :cond_be
    :goto_be
    if-nez v4, :cond_c6

    .line 272
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 271
    :cond_c6
    throw v4
.end method
