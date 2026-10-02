.class public Lcom/getkeepsafe/relinker/elf/Program64Header;
.super Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
.source "Program64Header.java"


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;J)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parser",
            "header",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;-><init>()V

    const/16 v0, 0x8

    .line 25
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    iget-boolean v1, p2, Lcom/getkeepsafe/relinker/elf/Elf$Header;->bigEndian:Z

    if-eqz v1, :cond_10

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_12

    :cond_10
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_12
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    iget-wide v1, p2, Lcom/getkeepsafe/relinker/elf/Elf$Header;->phoff:J

    iget p2, p2, Lcom/getkeepsafe/relinker/elf/Elf$Header;->phentsize:I

    int-to-long v3, p2

    mul-long/2addr p3, v3

    add-long/2addr v1, p3

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->type:J

    const-wide/16 p2, 0x8

    add-long/2addr p2, v1

    .line 30
    invoke-virtual {p1, v0, p2, p3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->offset:J

    const-wide/16 p2, 0x10

    add-long/2addr p2, v1

    .line 31
    invoke-virtual {p1, v0, p2, p3}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->vaddr:J

    const-wide/16 p2, 0x28

    add-long/2addr v1, p2

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/getkeepsafe/relinker/elf/Program64Header;->memsz:J

    return-void
.end method
