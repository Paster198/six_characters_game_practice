.class Lcom/google/common/io/CharSource$StringCharSource;
.super Lcom/google/common/io/CharSource$CharSequenceCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringCharSource"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 573
    invoke-direct {p0, p1}, Lcom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/google/common/io/CharSink;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 592
    :try_start_7
    invoke-virtual {p1}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    .line 593
    iget-object v1, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    iget-object p1, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_23

    int-to-long v1, p1

    .line 598
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide v1

    :catchall_23
    move-exception p1

    .line 596
    :try_start_24
    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    .line 598
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 599
    throw p1
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 584
    iget-object p1, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public openStream()Ljava/io/Reader;
    .registers 3

    .line 578
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
