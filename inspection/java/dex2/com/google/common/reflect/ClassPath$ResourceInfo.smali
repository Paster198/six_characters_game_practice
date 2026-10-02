.class public Lcom/google/common/reflect/ClassPath$ResourceInfo;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceInfo"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field final loader:Ljava/lang/ClassLoader;

.field private final resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->file:Ljava/io/File;

    .line 221
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    .line 222
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static of(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;
    .registers 4

    .line 212
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 213
    new-instance v0, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/ClassPath$ClassInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0

    .line 215
    :cond_e
    new-instance v0, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/ClassPath$ResourceInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method


# virtual methods
.method public final asByteSource()Lcom/google/common/io/ByteSource;
    .registers 2

    .line 249
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/Resources;->asByteSource(Ljava/net/URL;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public final asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .registers 3

    .line 261
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ResourceInfo;->url()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/Resources;->asCharSource(Ljava/net/URL;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 281
    instance-of v0, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 282
    check-cast p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;

    .line 283
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    if-ne v0, p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method final getFile()Ljava/io/File;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public final getResourceName()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final url()Ljava/net/URL;
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 236
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    iget-object v1, p0, Lcom/google/common/reflect/ClassPath$ResourceInfo;->resourceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
