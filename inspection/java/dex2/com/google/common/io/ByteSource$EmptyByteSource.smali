.class final Lcom/google/common/io/ByteSource$EmptyByteSource;
.super Lcom/google/common/io/ByteSource$ByteArrayByteSource;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyByteSource"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 661
    new-instance v0, Lcom/google/common/io/ByteSource$EmptyByteSource;

    invoke-direct {v0}, Lcom/google/common/io/ByteSource$EmptyByteSource;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteSource$EmptyByteSource;->INSTANCE:Lcom/google/common/io/ByteSource$EmptyByteSource;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 664
    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-void
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 2

    .line 669
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {}, Lcom/google/common/io/CharSource;->empty()Lcom/google/common/io/CharSource;

    move-result-object p1

    return-object p1
.end method

.method public read()[B
    .registers 2

    .line 675
    iget-object v0, p0, Lcom/google/common/io/ByteSource$EmptyByteSource;->bytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 680
    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
