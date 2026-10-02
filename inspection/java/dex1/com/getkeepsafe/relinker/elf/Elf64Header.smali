.class public Lcom/getkeepsafe/relinker/elf/Elf64Header;
.super Lcom/getkeepsafe/relinker/elf/Elf$Header;
.source "Elf64Header.java"


# instance fields
.field private final parser:Lcom/getkeepsafe/relinker/elf/ElfParser;


# direct methods
.method public constructor <init>(ZLcom/getkeepsafe/relinker/elf/ElfParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bigEndian",
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/getkeepsafe/relinker/elf/Elf$Header;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->bigEndian:Z

    .line 27
    iput-object p2, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    const/16 v0, 0x8

    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_12

    .line 30
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_14

    :cond_12
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_14
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    .line 32
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->type:I

    const-wide/16 v1, 0x20

    .line 33
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->phoff:J

    const-wide/16 v1, 0x28

    .line 34
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readLong(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->shoff:J

    const-wide/16 v1, 0x36

    .line 35
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->phentsize:I

    const-wide/16 v1, 0x38

    .line 36
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->phnum:I

    const-wide/16 v1, 0x3a

    .line 37
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->shentsize:I

    const-wide/16 v1, 0x3c

    .line 38
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->shnum:I

    const-wide/16 v1, 0x3e

    .line 39
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/relinker/elf/ElfParser;->readHalf(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->shstrndx:I

    return-void
.end method


# virtual methods
.method public getDynamicStructure(JI)Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "baseOffset",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/getkeepsafe/relinker/elf/Dynamic64Structure;

    iget-object v1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/getkeepsafe/relinker/elf/Dynamic64Structure;-><init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;JI)V

    return-object v0
.end method

.method public getProgramHeader(J)Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/getkeepsafe/relinker/elf/Program64Header;

    iget-object v1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/getkeepsafe/relinker/elf/Program64Header;-><init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;J)V

    return-object v0
.end method

.method public getSectionHeader(I)Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/getkeepsafe/relinker/elf/Section64Header;

    iget-object v1, p0, Lcom/getkeepsafe/relinker/elf/Elf64Header;->parser:Lcom/getkeepsafe/relinker/elf/ElfParser;

    invoke-direct {v0, v1, p0, p1}, Lcom/getkeepsafe/relinker/elf/Section64Header;-><init>(Lcom/getkeepsafe/relinker/elf/ElfParser;Lcom/getkeepsafe/relinker/elf/Elf$Header;I)V

    return-object v0
.end method
