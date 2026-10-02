.class Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NTLMMessage"
.end annotation


# instance fields
.field private currentOutputPosition:I

.field private messageContents:[B


# direct methods
.method constructor <init>()V
    .registers 2

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    const/4 v0, 0x0

    .line 813
    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    const/4 v0, 0x0

    .line 813
    iput v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 821
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1000()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcz/msebera/android/httpclient/extras/Base64;->decode([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    .line 823
    array-length p1, p1

    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_76

    .line 827
    :goto_20
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_3e

    .line 828
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    aget-byte p1, p1, v0

    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_36

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 829
    :cond_36
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p2, "NTLM message expected - instead got unrecognized bytes"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_3e
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->readULong(I)I

    move-result p1

    if-ne p1, p2, :cond_4f

    .line 842
    iget-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length p1, p1

    iput p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return-void

    .line 838
    :cond_4f
    new-instance v0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NTLM type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " message expected - instead got type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 839
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_76
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p2, "NTLM message decoding error - packet too short"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addByte(B)V
    .registers 4

    .line 911
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 912
    iput v1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return-void
.end method

.method protected addBytes([B)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_16

    .line 925
    :cond_3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16

    aget-byte v2, p1, v1

    .line 926
    iget-object v3, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    .line 927
    iput v4, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    :goto_16
    return-void
.end method

.method protected addULong(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 939
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 940
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 941
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 942
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    return-void
.end method

.method protected addUShort(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    .line 933
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 934
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    return-void
.end method

.method protected getMessageLength()I
    .registers 2

    .line 855
    iget v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return v0
.end method

.method protected getPreambleLength()I
    .registers 2

    .line 850
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getResponse()Ljava/lang/String;
    .registers 5

    .line 953
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v0

    iget v2, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    if-le v1, v2, :cond_e

    .line 954
    new-array v1, v2, [B

    const/4 v3, 0x0

    .line 955
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_e
    const/4 v1, 0x2

    .line 960
    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/extras/Base64;->encode([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareResponse(II)V
    .registers 3

    .line 898
    new-array p1, p1, [B

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    const/4 p1, 0x0

    .line 899
    iput p1, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    .line 900
    # getter for: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->SIGNATURE:[B
    invoke-static {}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1100()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    .line 901
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    return-void
.end method

.method protected readByte(I)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-lt v1, v2, :cond_a

    .line 863
    aget-byte p1, v0, p1

    return p1

    .line 861
    :cond_a
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string v0, "NTLM: Message too short"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readBytes([BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_d

    const/4 v1, 0x0

    .line 871
    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 869
    :cond_d
    new-instance p1, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;

    const-string p2, "NTLM: Message too short"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readSecurityBuffer(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readSecurityBuffer([BI)[B
    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1400([BI)[B

    move-result-object p1

    return-object p1
.end method

.method protected readULong(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readULong([BI)I
    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1300([BI)I

    move-result p1

    return p1
.end method

.method protected readUShort(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/impl/auth/NTLMEngineException;
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    # invokes: Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->readUShort([BI)I
    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/auth/NTLMEngineImpl;->access$1200([BI)I

    move-result p1

    return p1
.end method
