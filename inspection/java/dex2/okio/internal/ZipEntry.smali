.class public final Lokio/internal/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u001eR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010!\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "Lokio/internal/ZipEntry;",
        "",
        "canonicalPath",
        "Lokio/Path;",
        "isDirectory",
        "",
        "comment",
        "",
        "crc",
        "",
        "compressedSize",
        "size",
        "compressionMethod",
        "",
        "lastModifiedAtMillis",
        "offset",
        "(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V",
        "getCanonicalPath",
        "()Lokio/Path;",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "getComment",
        "()Ljava/lang/String;",
        "getCompressedSize",
        "()J",
        "getCompressionMethod",
        "()I",
        "getCrc",
        "()Z",
        "getLastModifiedAtMillis",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getOffset",
        "getSize",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final canonicalPath:Lokio/Path;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final comment:Ljava/lang/String;

.field private final compressedSize:J

.field private final compressionMethod:I

.field private final crc:J

.field private final isDirectory:Z

.field private final lastModifiedAtMillis:Ljava/lang/Long;

.field private final offset:J

.field private final size:J


# direct methods
.method public constructor <init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V
    .registers 15

    const-string v0, "canonicalPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 29
    iput-boolean p2, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    .line 32
    iput-object p3, p0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lokio/internal/ZipEntry;->crc:J

    .line 38
    iput-wide p6, p0, Lokio/internal/ZipEntry;->compressedSize:J

    .line 41
    iput-wide p8, p0, Lokio/internal/ZipEntry;->size:J

    .line 44
    iput p10, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    .line 46
    iput-object p11, p0, Lokio/internal/ZipEntry;->lastModifiedAtMillis:Ljava/lang/Long;

    .line 48
    iput-wide p12, p0, Lokio/internal/ZipEntry;->offset:J

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 29

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    move v1, p2

    :goto_9
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_10

    .line 32
    const-string v2, ""

    goto :goto_12

    :cond_10
    move-object/from16 v2, p3

    :goto_12
    and-int/lit8 v3, v0, 0x8

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_1a

    move-wide v6, v4

    goto :goto_1c

    :cond_1a
    move-wide/from16 v6, p4

    :goto_1c
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_22

    move-wide v8, v4

    goto :goto_24

    :cond_22
    move-wide/from16 v8, p6

    :goto_24
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2a

    move-wide v10, v4

    goto :goto_2c

    :cond_2a
    move-wide/from16 v10, p8

    :goto_2c
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_32

    const/4 v3, -0x1

    goto :goto_34

    :cond_32
    move/from16 v3, p10

    :goto_34
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_3a

    const/4 v12, 0x0

    goto :goto_3c

    :cond_3a
    move-object/from16 v12, p11

    :goto_3c
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_43

    move-wide/from16 p14, v4

    goto :goto_45

    :cond_43
    move-wide/from16 p14, p12

    :goto_45
    move-object p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p12, v3

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-object/from16 p13, v12

    .line 21
    invoke-direct/range {p2 .. p15}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-void
.end method


# virtual methods
.method public final getCanonicalPath()Lokio/Path;
    .registers 2

    .line 26
    iget-object v0, p0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lokio/internal/ZipEntry;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lokio/internal/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompressedSize()J
    .registers 3

    .line 38
    iget-wide v0, p0, Lokio/internal/ZipEntry;->compressedSize:J

    return-wide v0
.end method

.method public final getCompressionMethod()I
    .registers 2

    .line 44
    iget v0, p0, Lokio/internal/ZipEntry;->compressionMethod:I

    return v0
.end method

.method public final getCrc()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lokio/internal/ZipEntry;->crc:J

    return-wide v0
.end method

.method public final getLastModifiedAtMillis()Ljava/lang/Long;
    .registers 2

    .line 46
    iget-object v0, p0, Lokio/internal/ZipEntry;->lastModifiedAtMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOffset()J
    .registers 3

    .line 48
    iget-wide v0, p0, Lokio/internal/ZipEntry;->offset:J

    return-wide v0
.end method

.method public final getSize()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lokio/internal/ZipEntry;->size:J

    return-wide v0
.end method

.method public final isDirectory()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lokio/internal/ZipEntry;->isDirectory:Z

    return v0
.end method
